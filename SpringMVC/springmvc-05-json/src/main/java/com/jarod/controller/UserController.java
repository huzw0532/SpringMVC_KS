package com.jarod.controller;

import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.jarod.pojo.User;
import org.springframework.http.converter.json.Jackson2ObjectMapperBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class UserController {

    @RequestMapping(value = "/j1",produces = "application/json;charset=utf-8")
    @ResponseBody//它就不会走视图解析器，会直接返回一个字符串
    public String json1() throws JsonProcessingException {

        ObjectMapper mapper = new ObjectMapper();

        //创建一个对象
        User user = new User("李白1号",3,"男");

        String str = mapper.writeValueAsString(user);

        return str;
    }

    @RequestMapping(value = "/j2",produces = "application/json;charset=utf-8")
    @ResponseBody
    public String json2(){
        User user = new User("杜甫",6,"女");

        return JSON.toJSONString(user);
    }


}
