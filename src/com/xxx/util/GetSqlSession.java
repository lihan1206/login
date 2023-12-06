package com.xxx.util;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.io.IOException;
import java.io.InputStream;

public class GetSqlSession {
    /**
     * 获取sqlSession对象
     *
     * @return
     */
    public static SqlSession createSqlSession() {

        SqlSessionFactory sqlSessionFactory = null;
        InputStream input = null;
        SqlSession session = null;

        try {

            String resource = "mybatis-config.xml";

            input = Resources.getResourceAsStream(resource);

            sqlSessionFactory = new sqlSessionFactoryBuilder().build(input);

            session = sqlSessionFactory.openSession();
            return session;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void main(String[] args){
        System.out.println(createSqlSession());
    }
}

