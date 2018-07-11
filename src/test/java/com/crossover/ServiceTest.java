package com.crossover;


import com.crossover.entity.Exam;
import com.crossover.service.ExamService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest(properties = "classpath:/application-test.yml", classes = {JpaConfig.class, Application.class})
@ActiveProfiles(profiles = "test")
public class ServiceTest {
    @Autowired
    ExamService svc;

    @Test
    public void testExamService() {
        for (int i = 0; i < 10; i++) {
            final Exam ex = svc.getRandomExam();
            assertNotNull(ex);
            assertNotNull(ex.getName());
            assertNotNull(ex.getDescription());
            assertTrue(ex.getName().contains("Java") || ex.getName().contains("Quiz"));
            logger.info(ex.getDescription());
        }
    }

    private static final Logger logger = LoggerFactory.getLogger(ServiceTest.class);
}
