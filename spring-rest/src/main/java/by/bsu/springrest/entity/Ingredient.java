package by.bsu.springrest.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "ingredient")
@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Ingredient {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_ingredient")
    private Integer idIngredient;

    @Column(name = "ingredient_name")
    private String ingredientName;

    @ManyToMany(mappedBy = "ingredients")
    private Set<Recipe> recipes = new HashSet<>();
}
