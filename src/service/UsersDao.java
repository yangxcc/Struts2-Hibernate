package service;

import entity.Users;

//用户业务逻辑接口
public interface UsersDao {

    //用户登陆方法
    public boolean usersLogin(Users users);

}
