package action;

import com.opensymphony.xwork2.ModelDriven;
import entity.Users;
import org.apache.struts2.interceptor.validation.SkipValidation;
import service.UsersDao;
import service.impl.UserDaoImpl;

import java.util.List;

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
    public void validate() {
        // super.validate();
        if ("".equals(users.getUsername())){
            this.addFieldError("usernameError","用户名不能为空");
        }
        if (users.getPassword().length() < 6){
            this.addFieldError("userpasswordError","密码不能少于6位数");
        }
    }


    //用户注销功能
    @SkipValidation
    public String logout(){
        if (session.getAttribute("username") != null){
            session.removeAttribute("username");
        }
        return "logout_success";
    }

    //查询所有用户功能
    @SkipValidation
    public String queryAllUsers(){
        UsersDao uDao = new UserDaoImpl();
        List<Users> users = uDao.queryAllUsers();
        if (users.size() > 0 && users != null){
            session.setAttribute("users_list",users);
        }
        return "query_success";
    }

    //增加用户功能
    @SkipValidation
    public String addUsers(){
        Users users = new Users();

        users.setUsername(request.getParameter("username"));
        users.setPassword(request.getParameter("password"));
        UsersDao uDao = new UserDaoImpl();
        uDao.addUsers(users);
        return "add_success";
    }

    //删除用户功能
    @SkipValidation
    public  String deleteUsers(){
        UsersDao uDao = new UserDaoImpl();
        int uid = Integer.parseInt(request.getParameter("uid"));
        uDao.deleteUsers(uid);
        return "delete_success";
    }

    //修改用户资料功能
    @SkipValidation
    public String modify(){
        //获得传递过来的编号
        int uid = Integer.parseInt(request.getParameter("uid"));
        UsersDao uDao = new UserDaoImpl();
        Users users = uDao.queryUsersByUID(uid);
        session.setAttribute("modify_users",users);
        return "modify_success";
    }

    @SkipValidation
    //注册动作
    public String registerUsers(){
        System.out.println(users.getUsername());
        UsersDao udao = new UserDaoImpl();
        if(users.getPassword() != null && users.getPassword() != "" ){
            if(udao.addUsers(new Users(users.getUid(),users.getUsername(),users.getPassword()))){
                session.setAttribute("username", users.getUsername());
                return "register_success";
            }
        }
        return "register_failure";
    }

    @SkipValidation
    //保存修改后的用户资料
    public String save(){
        Users user = new Users();
        user.setUid(Integer.parseInt(request.getParameter("uid")));
        user.setUsername(request.getParameter("username"));
        user.setPassword(request.getParameter("password"));
        UsersDao uDao = new UserDaoImpl();
        uDao.UpdateUsers(user);
        return "save_success";
    }


    @Override
    public Users getModel() {
        return this.users;
    }
}
