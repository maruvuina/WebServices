package by.bsu.springrest.dto;

import by.bsu.springrest.entity.Role;
import by.bsu.springrest.entity.RoleEnum;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import java.util.Set;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class UserPostDto {
    private String email;
    private String password;
    private String fullName;
    @Enumerated(EnumType.STRING)
    private Set<Role> roles;
}
