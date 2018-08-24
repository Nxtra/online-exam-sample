package com.crossover.restController;

import com.crossover.entity.User;
import com.crossover.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(path = "/resources/user")
public class UserRestController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/list")
    public List<User> listUsers(){
        return userRepository.findAll();
    }
}
