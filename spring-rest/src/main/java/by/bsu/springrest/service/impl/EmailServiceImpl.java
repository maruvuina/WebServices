package by.bsu.springrest.service.impl;

import by.bsu.springrest.converter.EmailConverter;
import by.bsu.springrest.dto.EmailDto;
import by.bsu.springrest.email.GoogleMail;
import by.bsu.springrest.service.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmailServiceImpl implements EmailService {

    @Autowired
    private EmailConverter emailConverter;

    @Override
    public void sendMessageToCompany(EmailDto emailDto) {
        GoogleMail googleMail = emailConverter.fromEmailDtoToGoogleMail(emailDto);
        googleMail.sendMessage();
    }
}
