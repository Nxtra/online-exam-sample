package com.crossover.restController;

import com.crossover.entity.Answer;
import com.crossover.repository.AnswerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(path = "/resources/answer")
public class AnswerRestController {

    private AnswerRepository answerRepository;

    @Autowired
    public AnswerRestController(AnswerRepository answerRepository) {
        this.answerRepository = answerRepository;
    }

    @GetMapping(path = "/list")
    public List<Answer> listAnswers(){
        return this.answerRepository.findAll();
    }
}
