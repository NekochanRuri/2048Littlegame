package com.web.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.web.entity.User;
import com.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@CrossOrigin
@Controller
public class HelloController {
    @Autowired
    UserService service;

    @RequestMapping("/hello")
    public String hello(){
        return "../static/index";
    }

    @RequestMapping("/login")
    @ResponseBody
    public String login(HttpServletRequest request, HttpServletResponse response, @RequestBody String Data){
        //System.out.println(Json);
        JSONObject jsonObject = JSON.parseObject(Data);
        String name = jsonObject.getString("name");//从json获取数据
        String password = jsonObject.getString("password");//从json获取数据
        if(name == ""||password == "") {
            return "warn";
        }
        HttpSession httpSession = request.getSession();//获取session
        User user = service.getUser(name);//查询这个用户
        if(user == null){//没有这个用户就注册
            service.register(name,password);
            httpSession.setAttribute("name",name);//存入session
            httpSession.setAttribute("bestScore",0);
            return "ok";
        }else if(password.equals(user.getPassword())){//找到这个用户验证密码
            httpSession.setAttribute("name",name);//存入session
            httpSession.setAttribute("bestScore",user.getMaxscore());
            return "ok";
        }else{
            return "warn";
        }

    }

    @ResponseBody
    @RequestMapping("/start")
    public String start(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/2048.html").forward(request,response);//转到游戏页面
        return "start";
    }

    @RequestMapping("/upScore")
    @ResponseBody
    public String upScore(HttpServletRequest request,@RequestBody String data){
        System.out.println("--------------UpLoadData---------------");
        JSONObject jsonObject = JSON.parseObject(data);
        int score = jsonObject.getIntValue("score");//获取前端传来的score
        HttpSession httpSession = request.getSession();
        String name = httpSession.getAttribute("name").toString();//获取当前登录用户
        int bestScore = (int) httpSession.getAttribute("bestScore");
        if(score>bestScore){
            httpSession.setAttribute("bestScore",score);
            service.updateBestScore(name,score);
        }
        service.upScore(name,score);//上传分数
        return "ok";
    }

    @RequestMapping("/getBestScore")
    @ResponseBody
    public String getBestScore(HttpServletRequest request){
        HttpSession session = request.getSession();
        String score = session.getAttribute("bestScore").toString();//从session里面读取最高分，开始会话时就已保存
        return score;
    }

    @ResponseBody
    @RequestMapping("/getBestPlayers")
    public String getBestPlayers(){
        //获取前10名玩家的成绩和姓名
        List<User> users = service.selectBestPlayers();
        List<String> names = new ArrayList<>();
        List<Integer> scores = new ArrayList<>();
        for(User i:users){
            names.add(i.getName());
            scores.add(i.getMaxscore());
        }
        Map<Object, Object> map = new HashMap<>();
        map.put("names",names);
        map.put("scores",scores);//将两个list塞进map转成json发送
        return JSON.toJSONString(map);
    }

}
