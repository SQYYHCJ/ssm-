package top.sqyy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import top.sqyy.domain.Student;
import top.sqyy.service.StudentService;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Classname StudentController
 * @Created by HCJ
 * @Date 2021/7/7 22:36
 */

@Controller
@RequestMapping("/student")
public class StudentController {

    @Resource
    private StudentService studentService;


    @RequestMapping("/addStudent.do")
    public ModelAndView addStudent(Student student){
        String tips = "注册失败";
        ModelAndView mv = new ModelAndView();
//        调用
        int nums = studentService.addStudent(student);
        if (nums>0){
//            注册成功
            tips ="学生【"+student.getName()+ "】注册成功";
        }
//        指定数据
        mv.addObject("tips",tips);
//        指定结果页面
        mv.setViewName("result");
        return mv;
    }

    @RequestMapping("/queryStudent.do")
    @ResponseBody
    public List<Student> getStusentList(){

        return studentService.getStudentList();
    }


}
