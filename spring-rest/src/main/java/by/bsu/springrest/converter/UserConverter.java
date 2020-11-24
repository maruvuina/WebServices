package by.bsu.springrest.converter;

import by.bsu.springrest.dto.UserDto;
import by.bsu.springrest.dto.UserGetDto;
import by.bsu.springrest.dto.UserPostDto;
import by.bsu.springrest.entity.RoleEnum;
import by.bsu.springrest.entity.User;
import org.springframework.stereotype.Component;

import java.util.Collections;

@Component
public class UserConverter {

    public User fromUserDtoToUser(UserDto userDto) {
        return User.builder()
                .id(userDto.getId())
                .email(userDto.getEmail())
                .password(userDto.getPassword())
                .fullName(userDto.getFullName())
                .roles(userDto.getRoles())
                .build();
    }

    public UserDto fromUserToUserDto(User user) {
        return UserDto.builder()
                .id(user.getId())
                .email(user.getEmail())
                .password(user.getPassword())
                .fullName(user.getFullName())
                .roles(user.getRoles())
                .build();
    }



    public User fromUserPostDtoToUser(UserPostDto userPostDto) {
        return User.builder()
                .email(userPostDto.getEmail())
                .password(userPostDto.getPassword())
                .fullName(userPostDto.getFullName())
                .roles(userPostDto.getRoles())
                .build();
    }

    public UserPostDto fromUserToUserPostDto(User user) {
        return UserPostDto.builder()
                .email(user.getEmail())
                .password(user.getPassword())
                .fullName(user.getFullName())
                .roles(user.getRoles())
                .build();
    }

    public UserGetDto fromUserToUserGetDto(User user) {
        return UserGetDto.builder()
                .id(user.getId())
                .email(user.getEmail())
                .fullName(user.getFullName())
                .build();
    }

}
