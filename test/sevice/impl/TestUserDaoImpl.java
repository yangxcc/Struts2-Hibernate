package sevice.impl;

import entity.Users;

import junit.framework.Assert;
import org.junit.Test;
import service.UsersDao;
import service.impl.UserDaoImpl;

public class TestUserDaoImpl {

    @Test
    public void testusersLogin(){
        Users users = new Users(1,"zhangsan","123456");
        UsersDao uDao = new UserDaoImpl();
        //Assert.assertEquals(true,uDao.usersLogin(users));
        Assert.assertEquals(true,uDao.usersLogin(users));
    }
}
