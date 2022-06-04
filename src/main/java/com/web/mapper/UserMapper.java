package com.web.mapper;

import com.web.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    public List<User> selectAllUser();
    public User selectUser(String name);
    public void register(String name,String password);
    public void upScore(String name,int score);

    public void updateBestScore(String name,int score);
    public List<User> selectBestPlayers();

}
