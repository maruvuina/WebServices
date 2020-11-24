package by.bsu.springrest.validator;

import by.bsu.springrest.dto.UserPostDto;

import static by.bsu.springrest.util.StringUtil.isParamsNotEmpty;
import static by.bsu.springrest.util.StringUtil.isParamsNotNull;
import static by.bsu.springrest.validator.ParamRegex.EMAIL_REGEX;
import static by.bsu.springrest.validator.ParamRegex.PASSWORD_REGEX;

public class Validator {
    public static boolean isValidUserPostDto(UserPostDto userPostDto) {
        return isLoginParamsValid(userPostDto.getEmail(), userPostDto.getPassword());
    }

    private static boolean isLoginParamsValid(String login, String password) {
        return isParamsNotNull(login, password) && isParamsNotEmpty(login, password) &&
                isValidEmail(login) && isValidPassword(password);
    }

    private static boolean isValidEmail(String email) {
        return email.matches(EMAIL_REGEX);
    }

    private static boolean isValidPassword(String username) {
        return username.matches(PASSWORD_REGEX);
    }
}
