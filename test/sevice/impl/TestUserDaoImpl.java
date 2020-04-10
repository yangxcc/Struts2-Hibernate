package sevice.impl;

import entity.Users;

import junit.framework.Assert;
import org.junit.Test;
import service.UsersDao;
import service.impl.UserDaoImpl;

import java.util.List;

public class TestUserDaoImpl {


    public void testusersLogin(){
        Users users = new Users(1,"zhangsan","123456");
        UsersDao uDao = new UserDaoImpl();
        //Assert.assertEquals(true,uDao.usersLogin(users));
        Assert.assertEquals(true,uDao.usersLogin(users));
    }

    public void testQueryAllUsers(){
        UsersDao udao = new UserDaoImpl();
        List<Users> list = udao.queryAllUsers();
        for (int i=0;i<list.size();i++){
            System.out.println(list.get(i));
        }
    }


    public void testGetNewUid(){
        UserDaoImpl uDao = new UserDaoImpl();
        System.out.println(uDao.getNewUid());
    }

    @Test
    public void testAddUsers(){
        Users user = new Users();
        user.setUsername("lisi");
        user.setPassword("123456");
        UsersDao uDao = new UserDaoImpl();
        Assert.assertEquals(true,uDao.addUsers(user));
    }
}
