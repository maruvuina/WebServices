package by.bsu.springrest.service.impl;

import by.bsu.springrest.converter.UserConverter;
import by.bsu.springrest.dto.UserDto;
import by.bsu.springrest.dto.UserGetDto;
import by.bsu.springrest.dto.UserPostDto;
import by.bsu.springrest.dto.UserPutDto;
import by.bsu.springrest.entity.Role;
import by.bsu.springrest.entity.RoleEnum;
import by.bsu.springrest.entity.User;
import by.bsu.springrest.exception.ServiceException;
import by.bsu.springrest.repository.RoleRepository;
import by.bsu.springrest.repository.UserRepository;
import by.bsu.springrest.service.UserService;
import by.bsu.springrest.validator.Validator;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.apache.logging.log4j.Level;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

@AllArgsConstructor
@Service
public class UserServiceImpl implements UserService {
    private static final Logger logger = LogManager.getLogger(UserServiceImpl.class);

    private PasswordEncoder passwordEncoder;

    private UserRepository userRepository;

    private RoleRepository roleRepository;

    private UserConverter userConverter;

    @Override
    public UserPostDto saveUser(UserPostDto userPostDto) throws ServiceException {
        if (Validator.isValidUserPostDto(userPostDto)) {
            userPostDto.setPassword(passwordEncoder.encode(userPostDto.getPassword()));
            Set<Role> roles = new HashSet<>();
            roles.add(roleRepository.getOne(2));
            userPostDto.setRoles(roles);
            System.out.println("---------------------------> " + userConverter.fromUserPostDtoToUser(userPostDto).toString());
            User savedUser = userRepository.save(userConverter.fromUserPostDtoToUser(userPostDto));
            return userConverter.fromUserToUserPostDto(savedUser);
        } else {
            logger.log(Level.ERROR, "Not valid UserPostDto data");
            throw new ServiceException();
        }
    }

    @Override
    public void deleteUser(Integer userId) {
        userRepository.deleteById(userId);
    }

    @Override
    public UserGetDto findByEmail(String email) throws ServiceException {
        User user = userRepository.findByEmail(email);
        if (user != null) {
            return userConverter.fromUserToUserGetDto(user);
        } else {
            logger.log(Level.ERROR, "Not valid email");
            throw new ServiceException();
        }
    }

    @Override
    public boolean updateUser(UserPutDto userPutDto) {
        return userRepository
                .updateUserById(userPutDto.getEmail(),
                        userPutDto.getFullname(),userPutDto.getUserId());
    }

    @Override
    public List<UserDto> findAll() {
        return userRepository.findAll()
                .stream()
                .map(userConverter::fromUserToUserDto)
                .collect(Collectors.toList());
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return userRepository.findByEmail(username);
    }
}
