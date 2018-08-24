package com.crossover.restController;

import com.crossover.entity.Question;
import com.crossover.entity.User;
import com.crossover.repository.QuestionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(path = "/resources/question/")
public class QuestionRestController {

    private QuestionRepository questionRepository;

    @Autowired
    public QuestionRestController(QuestionRepository questionRepository){
        this.questionRepository = questionRepository;
    }

    @GetMapping("/list")
    public List<Question> listUsers(){
        return questionRepository.findAll();
    }
}
