package by.bsu.springrest.controller;

import by.bsu.springrest.dto.UserDto;
import by.bsu.springrest.dto.UserGetDto;
import by.bsu.springrest.dto.UserPutDto;
import by.bsu.springrest.entity.User;
import by.bsu.springrest.exception.ServiceException;
import by.bsu.springrest.service.UserService;
import org.apache.logging.log4j.Level;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.security.core.Authentication;

import java.util.List;

@Controller
public class UserController {
    private static final Logger logger = LogManager.getLogger(UserController.class);

    @Autowired
    private UserService userService;

    @GetMapping("/users/account")
    public String account(Authentication authentication, UserGetDto userGetDto, Model model) {
        String username = authentication.getName();
        try {
            userGetDto = userService.findByEmail(username);
        } catch (ServiceException e) {
            logger.log(Level.ERROR, "Error while trying go to user account: ", e);
        }
        model.addAttribute("userGetDto", userGetDto);
        List<UserDto> userDtos = userService.findAll();
        userDtos.forEach(System.out::println);
        return "user-home";
    }

    @GetMapping("/findByEmail")
    public UserGetDto findByLogin(@RequestParam(value = "email") String email) {
        try {
            return userService.findByEmail(email);
        } catch (ServiceException e) {
            logger.log(Level.ERROR, "Error while find user by login: ", e);
        }
        return null;
    }

    @PutMapping("/users/{id}")
    public String updateUsers(@ModelAttribute UserPutDto userPutDto, Model model, @PathVariable Integer id) {
        model.addAttribute("userPutDto", userPutDto);
        userService.updateUser(userPutDto);
        return "redirect:/";
    }

    @DeleteMapping("/users/{id}")
    public ResponseEntity<Void> deleteUsers(@PathVariable Integer id) {
        userService.deleteUser(id);
        return ResponseEntity.ok().build();
    }


    @PostMapping("/users/ex")
    public User users(@PathVariable Integer id) {
        userService.deleteUser(id);
        return new User();
    }
}
