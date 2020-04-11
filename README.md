# struct2-hibernate
通过struct2和hibernate框架来搭建网站，原理等最后完成全部开发后写<br>
* 使用Struts2首先要导入使用框架所需的jar包，然后在项目web.xml文件中配置核心过滤器org.apache.struts2.dispatcher.ng.filter.StrutsPrepareAndExecuteFilter，然后再创建动作类，在动作类中实现想要完成的动作，最后再创建视图（首页或者返回页面），在页面上对action进行调用。**struts2的工作流程大致如下**
![](https://github.com/yangxcc/struct2-hibernate/blob/master/image/struts2%E5%B7%A5%E4%BD%9C%E6%B5%81%E7%A8%8B.jpg)<br>
* struts.xml 是 Struts2 框架的核心配置文件，该文件主要用于配置 Action 和请求的对应关系，以及配置逻辑视图和物理视图（逻辑视图就是在 struts.xml 文件中配置的 <result> 元素，它的 name 属性值就是逻辑视图名；物理视图是指 <result> 元素中配置的结果页面，如 JSP 文件）资源的对应关系。struts.xml放在src目录下。<br>
* 在 Struts2 框架中，Action 是框架的核心类，被称为业务逻辑控制器，主要用于实现对用户请求的处理。实现 Action 控制类通常采用两种方式，分别是实现 Action 接口和`继承 ActionSupport 类`。<br>
 * 在 Struts2 框架中，页面的请求数据和 Action 有两种基本的对应方式，分别是字段驱动（FieldDriven，也称为属性驱动）方式和模型驱动（ModelDriver）方式。**属性驱动**是指在 Action 中通过字段属性进行与页面之间的数据传递，通常使用时会包括两种情况：一种是与基本数据类型的属性对应，另一种是直接使用域对象。**模型驱动方式**要求 Action 需要通过实现 ModelDriven 接口接收请求参数，并且要重写 getModel() 方法。getModel() 方法返回的就是 Action 所使用的数据模型对象。与属性驱动中直接使用域对象字段驱动方式的数据传递类似，模型驱动方式也是通过 JavaBean 模型进行数据传递的。只要是普通的 JavaBean，就可以充当模型部分，并且 JavaBean 中所封装的属性要与表单的属性一一对应，JavaBean 就是数据传递的载体。

