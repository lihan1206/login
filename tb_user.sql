create table tb_user
(
    userId   int         not null comment '用户编号'
        primary key,
    userName varchar(20) not null comment '用户名',
    userPwd  varchar(30) not null comment '用户密码',
    userAge  int         null comment '用户年龄'
)
    comment '用户登录表';

INSERT INTO java_test.tb_user (userId, userName, userPwd, userAge) VALUES (1, 'admin', 'admin', 18);
INSERT INTO java_test.tb_user (userId, userName, userPwd, userAge) VALUES (2, 'zhangsan', '123456', 25);
