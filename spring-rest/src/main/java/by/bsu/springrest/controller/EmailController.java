package by.bsu.springrest.controller;

import by.bsu.springrest.dto.EmailDto;
import by.bsu.springrest.service.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class EmailController {

    @Autowired
    private EmailService emailService;

    @GetMapping("/send-message")
    public String contact(Model model) {
        model.addAttribute("emailDto", new EmailDto());
        return "contact";
    }

    @PostMapping("/send-message")
    public String send(@ModelAttribute EmailDto emailDto, Model model) {
        model.addAttribute("emailDto", emailDto);
        emailService.sendMessageToCompany(emailDto);
        return "index";
    }
}
