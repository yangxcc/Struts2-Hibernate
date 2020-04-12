# Struts2-Hibernate
## Struts2框架原理性知识
Struts2本质上相当于一个servlet，在MVC设计模式中，Struts2采用拦截器（过滤器）的机制来处理用户的请求，作为控制器(Controller)来建立模型与视图的数据交互。<br>
* 使用Struts2首先要导入使用框架所需的jar包，然后在项目web.xml文件中配置核心过滤器org.apache.struts2.dispatcher.ng.filter.StrutsPrepareAndExecuteFilter，然后再创建动作类，在动作类中实现想要完成的动作，最后再创建视图（首页或者返回页面），在页面上对action进行调用。**struts2的工作流程大致如下**
![](https://github.com/yangxcc/struct2-hibernate/blob/master/image/struts2%E5%B7%A5%E4%BD%9C%E6%B5%81%E7%A8%8B.jpg)<br>
* struts.xml 是 Struts2 框架的核心配置文件，该文件主要用于配置 Action 和请求的对应关系，以及配置逻辑视图和物理视图（逻辑视图就是在 struts.xml 文件中配置的 <result> 元素，它的 name 属性值就是逻辑视图名；物理视图是指 <result> 元素中配置的结果页面，如 JSP 文件）资源的对应关系。struts.xml放在src目录下。<br>
* 在 Struts2 框架中，Action 是框架的核心类，被称为业务逻辑控制器，主要用于实现对用户请求的处理。实现 Action 控制类通常采用两种方式，分别是实现 Action 接口和`继承 ActionSupport 类`。<br>
 * 在 Struts2 框架中，页面的请求数据和 Action 有两种基本的对应方式，分别是字段驱动（FieldDriven，也称为属性驱动）方式和模型驱动（ModelDriver）方式。**属性驱动**是指在 Action 中通过字段属性进行与页面之间的数据传递，通常使用时会包括两种情况：一种是与基本数据类型的属性对应，另一种是直接使用域对象。**模型驱动方式**要求 Action 需要通过实现ModelDriven接口接收请求参数，并且要重写 getModel() 方法。getModel() 方法返回的就是 Action 所使用的数据模型对象。与属性驱动中直接使用域对象字段驱动方式的数据传递类似，模型驱动方式也是通过 JavaBean 模型进行数据传递的。只要是普通的 JavaBean，就可以充当模型部分，并且 JavaBean 中所封装的属性要与表单的属性一一对应，JavaBean 就是数据传递的载体。<br>
* Struts2 还提供了标签库，Struts2 的标签库主要分为两大类：`普通标签`和 `UI 标签`。普通标签的主要功能是在页面生成时控制页面代码的执行流程；UI 标签的主要功能是以丰富且可复用的 HTML 文件显示数据。普通标签又分为控制标签（Control Tags）和数据标签（Data Tags）。控制标签用于完成条件逻辑和循环逻辑的控制，也可用于做集合的操作。数据标签用于输出后台的数据和完成其他数据访问功能。UI 标签又分为表单标签（Form Tags）、非表单标签（Non-Form Tags）和 Ajax 标签。表单标签主要用于生成 HTML 页面中的表单元素，非表单标签主要用于生成非表单的可视化元素，如输出 Action 中封装的信息等。Ajax 标签主要用于提供对 Ajax 技术的支持。`Struts2标签库的使用非常简单`只需在 JSP 文件内使用 taglib 指令导入 Struts2 标签库即可，`<%taglib prefix="s" uri="/struts-tags"%>`
  
## Hibernate框架原理性知识
使用JDBC做数据库相关功能开发会做很多重复性的工作，比如创建连接，关闭连接，把字段逐一映射到属性中。 Hibernate把这一切都封装起来了，使得数据库访问变得轻松而简单，代码也更加容易维护。 
  ### Hibernate简介
* Hibernate是一个开放源代码的对象关系映射框架，它对JDBC进行了非常轻量级的对象封装，它将POJO与数据库表建立映射关系，是一个全自动的orm框架，hibernate可以自动生成SQL语句，自动执行，其中使用的是hsql语句，和sql类似。 Hibernate可以应用在任何使用JDBC的场合，既可以在Java的客户端程序使用，也可以在Servlet/JSP的Web应用中使用，最具革命意义的是，Hibernate可以在应用EJB的JaveEE架构中取代CMP，完成**数据持久化**的重任。Hibernate用反射机制实现持久化对象操作，实现与IDE(Integrated Development Environment)的耦合度。Hibernate使用数据库和配置信息为应用程序提供持久化服务。从配置文件中读取数据库相关参数，将持久化类和数据表对应使用。用 Hibernate API对象持久化，利用映像信息将持久化操作翻译为SQL语句进行查询。
* Hibernate框架技术最关键是数据持久化，是将数据保存到持久层的过程。持久层的数据在掉电后也不会丢失的数据。持久层是基于Hibernate技术的检索系统开发的基本。系统结构的层次模型有三个阶段。
* 整个过程首先实现应用层和数据层。数据层保存持久化数据，应用层接收输入的数据。然后通过MVC 模式实现业务逻辑与表示层的分开。表示层和用户实现交互，业务逻辑层处理数据持久化操作。将第二阶段业务逻辑层的功能部署拆分后，业务逻辑层完成核心业务逻辑处理，持久层完成对象持久化。降低业务逻辑层复杂度的同时将数据持久化让其他组件完成。
### Hibernate的使用
* 首先在src文件夹下配置hibernate.cfg.xml，在该配置文件中填写驱动器名称、数据库名称、用户名、密码等信息
* 创建实体类，JavaBean（用户包含的属性以及set,get方法）
* 配置实体类名.hbm.xml文件，用于映射实体类对应数据库中的表，并在hibernate.cfg.xml文件中注册该xml文件
* 创建一个测试类，Action类中的动作实现时，hibernate的基本步骤是：
1. 获取SessionFactory <br>
2. 通过SessionFactory 获取一个Session <br>
3. 在Session基础上开启一个事务 <br>
4. 通过调用Session的save方法把对象保存到数据库；或者session.getQuery(hql)等 <br>
5. 提交事务 <br>
6. 关闭Session <br>
7. 关闭SessionFactory <br>

## 数据流通（以登陆为例）
* 首先，数据在jsp表单中被输入，在表单action属性那里注册处理表单属性的方法，属性方法的填写方式需要在之前在struts.xml中规定（通配符的使用）<br>
* 第二，数据在struts.xml的派发下被送到UsersAction中的login()方法进行处理，在这里需要注意的是表单数据的获取是使用的struts2框架提供的模型驱动的方式获得表单数据，使用模型驱动，获得的对象可以不实现get,set方法，但是要实例化<br>
* 在方法中返回login_success或者login_failure的字符串结果，把结果在struts.xml文件中注册，返回这个结果对应的下一步动作。<br>
* 注意：hibernate框架在实现Dao层接口时被用到，因为要实现方法，必须要获取数据库中的数据，然后再action动作类中可以直接调用Dao层接口实现的方法。
