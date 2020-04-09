package entity;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.hibernate.tool.hbm2ddl.SchemaExport;
import org.junit.Test;

public class TestUsers {

	@Test
	public void testSchemaExport() {
		//创建配置对象
		Configuration config = new Configuration().configure();
		//创建服务注册对象
		ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(config.getProperties()).buildServiceRegistry();
		//创建sessionFactory
		SessionFactory sessionFactory = config.buildSessionFactory(serviceRegistry);
		//获得session
		Session session = sessionFactory.getCurrentSession();
		//创建schemaExport对象
		SchemaExport export = new SchemaExport(config);

		export.create(true, true);
	}
}
	
//	//录入测试数据
//	@Test
//	public void testSaveUsers(){
//		//创建配置对象
//		Configuration config = new Configuration().configure();
//		//创建服务注册对象
//		ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(config.getProperties()).buildServiceRegistry();
//		//创建sessionFactory
//		SessionFactory sessionFactory = config.buildSessionFactory(serviceRegistry);
//		//获得session
//		Session session = sessionFactory.getCurrentSession();
//		//获得事务对象
//		Transaction tx = session.beginTransaction();
//
//		Users user1 = new Users(1,"luna", "123456");
//		Users user2 = new Users(2,"admin", "123456");
//		Users user3 = new Users(3,"root", "123456");
//
//		session.save(user1);
//		session.save(user2);
//		session.save(user3);
//		tx.commit();
//		sessionFactory.close();
//	}
//
//}
