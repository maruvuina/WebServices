package by.bsu.springrest.controller;

import by.bsu.springrest.dto.UserPostDto;
import by.bsu.springrest.exception.ServiceException;
import by.bsu.springrest.service.UserService;
import org.apache.logging.log4j.Level;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class RegistrationController {
    private static final Logger logger = LogManager.getLogger(RegistrationController.class);

    @Autowired
    private UserService userService;

    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("userPostDto", new UserPostDto());
        return "registration";
    }

    @PostMapping("/registration")
    public String saveUsers(@ModelAttribute UserPostDto userPostDto, Model model) {
        model.addAttribute("userPostDto", userPostDto);
        UserPostDto savedUser;
        try {
            savedUser = userService.saveUser(userPostDto);
            System.out.println(savedUser.toString());
        } catch (ServiceException e) {
            logger.log(Level.ERROR, "Registration error: ", e);
        }
        return "login";
    }
}
