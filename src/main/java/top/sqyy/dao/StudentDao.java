package top.sqyy.dao;

import top.sqyy.domain.Student;

import java.util.List;

/**
 * @Classname StudentDao
 * @Created by HCJ
 * @Date 2021/7/7 22:04
 */
public interface StudentDao {
    int insertStudent(Student student);
    List<Student> selectStudents();
}
