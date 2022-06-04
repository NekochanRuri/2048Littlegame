package com.web.service;

import com.web.entity.User;
import com.web.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired
    UserMapper mapper;
    public List<User> getUsers(){
        return mapper.selectAllUser();
    }

    public User getUser(String name){
        return mapper.selectUser(name);
    }

    public void register(String name,String password){
        mapper.register(name,password);
    }
    public void upScore(String name,int score){
        mapper.upScore(name,score);
    }
    public void updateBestScore(String name,int score){
        mapper.updateBestScore(name,score);
    }

    public List<User> selectBestPlayers(){
        return mapper.selectBestPlayers();
    }
}
