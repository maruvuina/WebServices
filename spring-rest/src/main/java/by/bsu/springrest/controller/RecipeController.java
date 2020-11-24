package by.bsu.springrest.controller;

import by.bsu.springrest.dto.RecipePostDto;
import by.bsu.springrest.dto.UserDto;
import by.bsu.springrest.dto.UserGetDto;
import by.bsu.springrest.dto.UserPostDto;
import by.bsu.springrest.repository.RecipeService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class RecipeController {
    private static final Logger logger = LogManager.getLogger(RegistrationController.class);

//    @Autowired
//    private RecipeService recipeService;

    @GetMapping("/recipes")
    public String addRecipe(Model model) {
        model.addAttribute("userGetDto", new UserGetDto());
        model.addAttribute("recipePostDto", new RecipePostDto());
        return "add-recipe";
    }

//    @PostMapping("/recipes")
//    public String account(Authentication authentication) {
//        String username = authentication.getName();
//        List<UserDto> userDtos = userService.findAll();
//        userDtos.forEach(System.out::println);
//        return "redirect:/user-home";
//    }
}
