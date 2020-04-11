# struct2-hibernate
通过struct2和hibernate框架来搭建网站，原理等最后完成全部开发后写<br>
## Struts2框架原理性知识
Struts2本质上相当于一个servlet，在MVC设计模式中，Struts2采用拦截器（过滤器）的机制来处理用户的请求，作为控制器(Controller)来建立模型与视图的数据交互。<br>
* 使用Struts2首先要导入使用框架所需的jar包，然后在项目web.xml文件中配置核心过滤器org.apache.struts2.dispatcher.ng.filter.StrutsPrepareAndExecuteFilter，然后再创建动作类，在动作类中实现想要完成的动作，最后再创建视图（首页或者返回页面），在页面上对action进行调用。**struts2的工作流程大致如下**
![](https://github.com/yangxcc/struct2-hibernate/blob/master/image/struts2%E5%B7%A5%E4%BD%9C%E6%B5%81%E7%A8%8B.jpg)<br>
* struts.xml 是 Struts2 框架的核心配置文件，该文件主要用于配置 Action 和请求的对应关系，以及配置逻辑视图和物理视图（逻辑视图就是在 struts.xml 文件中配置的 <result> 元素，它的 name 属性值就是逻辑视图名；物理视图是指 <result> 元素中配置的结果页面，如 JSP 文件）资源的对应关系。struts.xml放在src目录下。<br>
* 在 Struts2 框架中，Action 是框架的核心类，被称为业务逻辑控制器，主要用于实现对用户请求的处理。实现 Action 控制类通常采用两种方式，分别是实现 Action 接口和`继承 ActionSupport 类`。<br>
 * 在 Struts2 框架中，页面的请求数据和 Action 有两种基本的对应方式，分别是字段驱动（FieldDriven，也称为属性驱动）方式和模型驱动（ModelDriver）方式。**属性驱动**是指在 Action 中通过字段属性进行与页面之间的数据传递，通常使用时会包括两种情况：一种是与基本数据类型的属性对应，另一种是直接使用域对象。**模型驱动方式**要求 Action 需要通过实现ModelDriven接口接收请求参数，并且要重写 getModel() 方法。getModel() 方法返回的就是 Action 所使用的数据模型对象。与属性驱动中直接使用域对象字段驱动方式的数据传递类似，模型驱动方式也是通过 JavaBean 模型进行数据传递的。只要是普通的 JavaBean，就可以充当模型部分，并且 JavaBean 中所封装的属性要与表单的属性一一对应，JavaBean 就是数据传递的载体。<br>
* Struts2 还提供了标签库，Struts2 的标签库主要分为两大类：`普通标签`和 `UI 标签`。普通标签的主要功能是在页面生成时控制页面代码的执行流程；UI 标签的主要功能是以丰富且可复用的 HTML 文件显示数据。普通标签又分为控制标签（Control Tags）和数据标签（Data Tags）。控制标签用于完成条件逻辑和循环逻辑的控制，也可用于做集合的操作。数据标签用于输出后台的数据和完成其他数据访问功能。UI 标签又分为表单标签（Form Tags）、非表单标签（Non-Form Tags）和 Ajax 标签。表单标签主要用于生成 HTML 页面中的表单元素，非表单标签主要用于生成非表单的可视化元素，如输出 Action 中封装的信息等。Ajax 标签主要用于提供对 Ajax 技术的支持。`Struts2标签库的使用非常简单`只需在 JSP 文件内使用 taglib 指令导入 Struts2 标签库即可，`<%taglib prefix="s" uri="/struts-tags"%>`
## Hibernate框架原理性知识
