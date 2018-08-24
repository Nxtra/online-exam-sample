package com.crossover.restController;

import com.crossover.entity.Exam;
import com.crossover.repository.ExamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/resources/exam")
public class ExamRestcontroller {

    private ExamRepository examRepository;

    @Autowired
    public ExamRestcontroller(ExamRepository examRepository) {
        this.examRepository = examRepository;
    }

    @GetMapping(path="/list")
    public List<Exam> listExams(){
        return examRepository.findAll();
    }
}
