package com.xxx.mapper;

import com.xxx.entity.User;

/**
 * 用户接口
 */
public interface UserMapper {
    public User queryUserByName(String userName);
}
