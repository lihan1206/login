package com.xxx.test;

import com.xxx.entity.User;
import com.xxx.mapper.UserMapper;
import com.xxx.util.GetSqlSession;
import org.apache.ibatis.session.SqlSession;

public class test {
    public static void main(String[] args) {
        //获取sqlsession对象
        SqlSession session = GetSqlSession.createSqlSession();
        //得到对应的mapper
        UserMapper userMapper = session.getMapper(UserMapper.class);
        //调用方法返回用户对象
        User user = userMapper.queryUserByName("adamin");
        System.out.println(user);
    }
}
