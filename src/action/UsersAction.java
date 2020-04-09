package action;

import com.opensymphony.xwork2.ModelDriven;
import entity.Users;
import service.UsersDao;
import service.impl.UserDaoImpl;

public class UsersAction extends SuperAction implements ModelDriven<Users> {

    //使用模型驱动的方式获得表单数据，使用模型驱动，获得的对象可以不实现get,set方法，但是要实例化

    private static final long serialVersionUID = 7505705122483392025L;
    private Users users = new Users();

    //用户登录动作
    public String login(){
        UsersDao udao = new UserDaoImpl();
        if (udao.usersLogin(users)){
            session.setAttribute("username",users.getUsername());
            return "login_success";
        }else {
            return "login_failure";
        }
    }

    @Override
    public Users getModel() {
        return this.users;
    }
}
