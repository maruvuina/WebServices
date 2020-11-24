package by.bsu.springrest.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.util.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "user")
@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class User implements UserDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_user", nullable = false)
    private Integer id;

    @NotNull(message = "Email cannot be null")
    @Email(regexp="^[a-z0-9._%+-]+\\@[a-z0-9.-]+\\.[a-z]{2,4}$", message = "Email should be valid")
    @Column
    private String email;

    @Min(value = 8, message = "Password should not be less than 8")
    @Max(value = 20, message = "Password should not be greater than 20")
    @Column
    private String password;

    @NotNull(message = "Full name cannot be null")
    @Column(name = "full_name")
    private String fullName;

    @Column
    private boolean authorise;

//    @ElementCollection(targetClass = RoleEnum.class, fetch = FetchType.EAGER)
//    @CollectionTable(name = "user_roles", joinColumns = @JoinColumn(name = "id_user_fk"))
//    @Enumerated(EnumType.STRING)
//    private Set<RoleEnum> roles;



    @ManyToMany (fetch = FetchType.EAGER, cascade = {
            CascadeType.PERSIST,
            CascadeType.MERGE
    })
    @JoinTable(name = "user_roles",
            joinColumns = @JoinColumn(name = "id_user_fk"),
            inverseJoinColumns = @JoinColumn(name = "id_role_fk")
    )
    private Set<Role> roles;



    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Recipe> recipes = new ArrayList<>();

    public void addRecipe(Recipe recipe) {
        this.recipes.add(recipe);
        recipe.setUser(this);
    }

    public void removeRecipe(Recipe recipe) {
        this.recipes.remove(recipe);
        recipe.setUser(null);
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return getRoles();
    }

    @Override
    public String getUsername() {
        return getEmail();
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return isAuthorise();
    }
}
