package com.epam.rd.izh.service;

import com.epam.rd.izh.entity.Role;
import com.epam.rd.izh.entity.Skateboard;
import com.epam.rd.izh.entity.User;
import com.epam.rd.izh.repository.RoleRepository;
import com.epam.rd.izh.repository.SkateboardRepository;
import com.epam.rd.izh.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import java.util.*;

@Service
public class UserService implements UserDetailsService {

    @Autowired
    UserRepository userRepository;

    @Autowired
    RoleRepository roleRepository;

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    SkateboardRepository skateboardRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepository.findByUsername(username);
        if (user == null) {
            throw new UsernameNotFoundException("Пользователь не найден");
        }
        return user;
    }

    public User findUserByUsername(String username) {
        User user = userRepository.findByUsername(username);
        return user;
    }

    public List<User> allUsers() {
        return userRepository.findAll();
    }

    public boolean saveUser(User user) {
        User userFromDB = userRepository.findByUsername(user.getUsername());
        if (userFromDB != null) {
            return false;
        }
        user.setRoles(Collections.singleton(new Role(1L, "ROLE_USER")));
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        userRepository.save(user);
        return true;
    }

    public boolean deleteUser(Long userId) {
        if (userRepository.findById(userId).isPresent()) {
            userRepository.deleteById(userId);
            return true;
        }
        return false;
    }


    public boolean addItemByUser(Long id){

        Skateboard skateboard = skateboardRepository.findById(id).orElseThrow();
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        user.setSkateboard(Collections.singletonList(skateboard));
        userRepository.save(user);
        return true;
    }

    public boolean deleteItemByUser(){

        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (user.getSkateboard()!=null){
            user.setSkateboard(null);
            userRepository.save(user);
            return true;
        }
        return false;

    }


}