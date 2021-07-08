package top.sqyy.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.sqyy.dao.StudentDao;
import top.sqyy.domain.Student;
import top.sqyy.service.StudentService;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Classname StudentServiceImpl
 * @Created by HCJ
 * @Date 2021/7/7 22:10
 */
@Service
public class StudentServiceImpl implements StudentService {

//    引用类型自动注入@Autowired ，@Resource
    @Resource
    private StudentDao studentDao;

    public StudentServiceImpl(StudentDao studentDao) {
        this.studentDao = studentDao;
    }

    @Override
    public int addStudent(Student student) {
        int count = studentDao.insertStudent(student);
        return count;
    }

    @Override
    public List<Student> getStudentList() {

        return studentDao.selectStudents();
    }
}
