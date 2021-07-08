package top.sqyy.service;

import org.springframework.stereotype.Service;
import top.sqyy.domain.Student;

import java.util.List;

/**
 * @Classname StudentService
 * @Created by HCJ
 * @Date 2021/7/7 22:09
 */

public interface StudentService {
    int addStudent(Student student);
    List<Student> getStudentList();
}
