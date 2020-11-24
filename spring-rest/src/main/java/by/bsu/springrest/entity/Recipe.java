package by.bsu.springrest.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "recipe")
@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Recipe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_recipe")
    private Integer idRecipe;

    @Column(name = "recipe_name")
    private String recipeName;

    @Column(name = "cooking_time")
    private int cookingTime;

    @Column
    private int yield;

    @Column(name = "main_picture")
    private String mainPicture;

    @Column
    private String instruction;

    @OneToMany(mappedBy = "recipe", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Comment> comments = new ArrayList<>();

    public void addComment(Comment comment) {
        this.comments.add(comment);
        comment.setRecipe(this);
    }

    public void removeComment(Comment comment) {
        this.comments.remove(comment);
        comment.setRecipe(null);
    }

    @ManyToOne(fetch = FetchType.LAZY)
    private User user;

    @ManyToOne(fetch = FetchType.LAZY)
    private Category category;

    @ManyToMany (cascade = {
            CascadeType.PERSIST,
            CascadeType.MERGE
    })
    @JoinTable(name = "recipe_ingredient",
            joinColumns = @JoinColumn(name = "id_recipe_fk"),
            inverseJoinColumns = @JoinColumn(name = "id_ingredient_fk")
    )
    private Set<Ingredient> ingredients = new HashSet<>();

    public void addIngredient(Ingredient ingredient) {
        this.ingredients.add(ingredient);
        ingredient.getRecipes().add(this);
    }

    public void removeIngredient(Ingredient ingredient) {
        this.ingredients.remove(ingredient);
        ingredient.getRecipes().remove(this);
    }
}
