package com.jarod.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class HelloController {

    @RequestMapping("/hello")
    public String Hello(Model model){
        //封装数据
        model.addAttribute("msg","Hello,SpringMVCAnnotation666!");
        return "hello"; //会被视图解析器处理；
    }

}
