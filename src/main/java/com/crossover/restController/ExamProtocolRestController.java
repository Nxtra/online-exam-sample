package com.crossover.restController;

import com.crossover.entity.ExamProtocol;
import com.crossover.repository.ExamProtocolRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(path = "/resources/examprotocol")
public class ExamProtocolRestController {

    private ExamProtocolRepository examProtocolRepository;

    @Autowired
    public ExamProtocolRestController(ExamProtocolRepository examProtocolRepository) {
        this.examProtocolRepository = examProtocolRepository;
    }

    @GetMapping(path = "/list")
    public List<ExamProtocol> listExamProtocols(){
        return this.examProtocolRepository.findAll();
    }
}
