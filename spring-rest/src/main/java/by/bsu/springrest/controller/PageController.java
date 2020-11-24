package by.bsu.springrest.controller;

import by.bsu.springrest.dto.RecipePostDto;
import by.bsu.springrest.dto.UserDto;
import by.bsu.springrest.dto.UserGetDto;
import by.bsu.springrest.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
public class PageController {

    @GetMapping("/home")
    public String goToHomePage(Model model) {
        model.addAttribute("userGetDto", new UserGetDto());
        model.addAttribute("recipePostDto", new RecipePostDto());
        return "index";
    }

    @GetMapping("/company")
    public String goToAboutCompanyPage(Model model) {
        model.addAttribute("userGetDto", new UserGetDto());
        return "company";
    }
}
