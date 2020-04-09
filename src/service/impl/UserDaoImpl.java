package service.impl;

import db.MyHibernateSessionFactory;
import entity.Users;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import service.UsersDao;

import java.util.List;
import java.util.concurrent.TransferQueue;

public class UserDaoImpl implements UsersDao {

    @Override
    public boolean usersLogin(Users users) {
        //事务对象
        Transaction tx = null;
        String sql = "";
        try {
            Session session = MyHibernateSessionFactory.getSessionFactory().getCurrentSession();
            tx = session.beginTransaction();
            sql = "from Users where USERNAME = ? and PASSWORD = ?";
            Query query = session.createQuery(sql);
            query.setParameter(0,users.getUsername());
            query.setParameter(1,users.getPassword());
            List list = query.list();
            tx.commit();   //提交事务
            if (list.size() > 0){
                return true;
            }else {
                return false;
            }
        }catch (Exception ex){
            ex.getCause();
            return false;
        }finally {
            if (tx != null){
               // tx.commit();
                tx = null;
            }
        }
    }
}
