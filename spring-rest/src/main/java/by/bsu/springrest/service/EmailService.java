package by.bsu.springrest.service;

import by.bsu.springrest.dto.EmailDto;

public interface EmailService {
    void sendMessageToCompany(EmailDto emailDto);
}
