package by.bsu.springrest.converter;

import by.bsu.springrest.dto.EmailDto;
import by.bsu.springrest.email.GoogleMail;;
import org.springframework.stereotype.Component;

@Component
public class EmailConverter {
    public GoogleMail fromEmailDtoToGoogleMail(EmailDto emailDto) {
        return GoogleMail.builder()
                .username(emailDto.getEmail())
                .title(emailDto.getTitle())
                .message(emailDto.getMessage())
                .build();
    }
}
