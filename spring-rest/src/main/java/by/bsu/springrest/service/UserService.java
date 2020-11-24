package by.bsu.springrest.service;

import by.bsu.springrest.dto.UserDto;
import by.bsu.springrest.dto.UserGetDto;
import by.bsu.springrest.dto.UserPostDto;
import by.bsu.springrest.dto.UserPutDto;
import by.bsu.springrest.exception.ServiceException;
import by.bsu.springrest.exception.ValidationException;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Component;

import java.util.List;

public interface UserService extends UserDetailsService {

    UserPostDto saveUser(UserPostDto userPostDto) throws ServiceException;

    void deleteUser(Integer userId);

    UserGetDto findByEmail(String email) throws ServiceException;

    boolean updateUser(UserPutDto userPutDto);

    List<UserDto> findAll();
}
