# Flutter

## Widget

-  #### 基础 Widgets

  - 基础widget定义在widgets.dart中,Meterial和Cupertino中都可以使用的

    - Text
    - Image
    - Icon
    - Form
    - Row
    - Column
    - Flex
    - Wrap
    - Stack
    - Container
  
- 文本
  
  - from widgets.dart
  
  - 创建一个带格式的文本
  
  - 类:Text
  
  - 默认fontSize为14
  
    - 常用参数
  
      - "xxx" 
        - 必填参数
        - 类型: String
      - textAlign：
        - 可选参数
        - 类型: TextAlign
        - 文本的对齐方式,对齐的参考系是Text widget本身 
      - maxLines: 
        - 可选参数
        - 类型:  int
        - 文本显示的最大行数,默认情况下，文本是自动折行的
      - overflow
        - 可选参数
        - 类型:TextOverflow
          - ellipsis
        - 需要配合maxLines使用的,当到文本达到最大行数时,指定的截断方式,默认是直接截断
      - textScaleFactor:
        - 可选参数
        - 类型:double
        - 文本相对于当前字体大小的缩放因子,相当于style里fontSize的快捷方式
      - style
        - 可选参数
        - 类型: TextStyle
          - color
            - 文字颜色
            - 类型:Color
          - fontSize 
            - 文字大小
            - 类型:double
          - height 
            - 类型:double
            - 该属性用于指定行高，但它并不是一个绝对值，而是一个因子，具体的行高等于`fontSize`*`height`
          - fontFamily
            - 指定字体
            - 类型:String
          - background
            - 文字行背景
            - 类型:Paint
          - decoration
            - 下划线等
            - 类型:TextDecoration
        - decorationStyle
            - 横线的样式
          - 类型:TextDecorationStyle
  
    - Text.rich
  
      - 命名构造函数rich,可以创建富文本,也就是可以是文本内容的不同部分按照不同的样式显示
      - 常用参数
        - textSpan
          - 必填参数
          - 类型:TextSpan
            - text
          - style
            - children
            - 可以再包含TextSpan
  
  - 关于使用自定义的字体
  
      - 在pubspec.yaml中声明资源
  
        - ```yaml
          flutter:
            fonts:
              - family: Raleway
                fonts:
                  - asset: assets/fonts/Raleway-Regular.ttf
                  - asset: assets/fonts/Raleway-Medium.ttf
                    weight: 500
                  - asset: assets/fonts/Raleway-SemiBold.ttf
                    weight: 600
              - family: AbrilFatface
              fonts:
                  - asset: assets/fonts/abrilfatface/AbrilFatface-Regular.ttf
          ```
    ```
        
    ```
      
      - 在TextStyle中使用
      
        - ```dart
          const textStyle = const TextStyle(
          fontFamily: 'Raleway',
          );
          ```
        ```
        
        ```
  
- DefaultTextStyle
  
    - 一个提供默认样式的Widget,里面定义的样式可以被其中所有的子元素继承
    
    - ```dart
      DefaultTextStyle(
        //1.设置文本默认样式  
        style: TextStyle(
          color:Colors.red,
          fontSize: 20.0,
        ),
        textAlign: TextAlign.start,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("hello world"),
            Text("I am Jack"),
            Text("I am Jack",
              style: TextStyle(
                inherit: false, //2.不继承默认样式
                color: Colors.grey
              ),
            ),
          ],
      ),
      )
      ```
  ```
    
  - 按钮
  
    - 关于
      - from material.dart
      - 各种都有的常用参数
        - textColor 按钮文字颜色
        - disabledTextColor 禁用时文字的颜色
        - disabledColor 按钮禁用时的背景颜色
        - highlightColor 按钮按下时的背景颜色
        - splashColor 点击时水波动画的颜色
        - colorBrightness 按钮主题
          - 主题分为深浅可以改变内容文字的颜色,以使文字显得明显
          - 类型 Brightness
        - padding 按钮那边距
        - shape 按钮形状
          - 类型 ShapeBorder
        - onPressed 如果不提供该回调则按钮会处于禁用状态，禁用状态不响应用户点击
    - RaisedButton
      - 说明: 默认带有阴影和灰色背景,按下时，阴影会变大
      - 参数
        - child
          - 类型: Widget 一般为Text
        - color
          - 类型 Color 设置按钮背景颜色
        - onPressed
    - FlatButton
      - 说明:默认背景透明并不带阴影。按下时，会有背景色
      - 参数
        - child
          - 类型: Widget 一般为Text
        - color
          - 类型Color
        - onPressed
    - OutlineButton
      - 说明: 默认有一个边框，不带阴影且背景透明。按下时，边框颜色会变亮、同时出现背景和阴影(较弱)
      - 参数
        - child
          - 类型: Widget 一般为Text
        - color
          - 类型 Color 设置按钮背景颜色
        - onPressed
    - 带图标的按钮
      - 以上三个按钮都有一个icon命名构造函数,可以轻松创建带图标的按钮
      - 参数
        - icon
          - 类型 Icon
        - label
          - 类型 Widget
        - onPressed
    - IconButton
      - 说明:是一个可点击的Icon，不包括文字，默认没有背景，点击时会出现背景
      - 参数
        - icon
          - 类型 Icon
        - color
        - icon颜色
          - 类型 Color
      - onPressed
  
  - 图片
  
    - 加载并显示图片，图片的数据源可以是asset、文件、内存以及网络
    - Flutter框架对加载过的图片是有缓存的（内存），默认最大缓存数量是1000张，最大缓存空间为100M
    - 类:Image
    - from widgets.dart
    - 参数
      - image
        - 类型 ImageProvider
        - AssetImage
          - 加载本地资源
          - 本地资源文件夹里要至少配置出2.0x文件夹和3.0x文件夹
          - 参数
            - url of String
          - 可以调用命名构造函数简写为Image.asset()
        - NetworkImage
          - 加载网络资源
          - 参数
            - url of String
          - 可以调用命名构造函数简写为Image.network()
      - width
        - 图片宽度
        - 类型 double
        - 只设置`width`、`height`的其中一个，那么另一个属性默认会按比例缩放
        - 不指定宽高时，图片会根据当前父容器的限制，尽可能的显示其原始大小
      - height
        - 图片高度
        - 类型 double
        - 只设置`width`、`height`的其中一个，那么另一个属性默认会按比例缩放
        - 不指定宽高时，图片会根据当前父容器的限制，尽可能的显示其原始大小
      - fit
        - 在图片的显示空间和图片本身大小不同时指定图片的适应模式
        - 类型 BoxFit
          - fill			会拉伸填充满显示空间，图片本身长宽比会发生变化，图片会变形
          - cover      会按图片的长宽比放大后居中填满显示空间，图片不会变形，超出显示空间部分会被剪裁
          - contain   图片的默认适应规则，图片会在保证图片本身长宽比不变的情况下缩放以适应当前显示空间，图片不会变形
          - fitWidth  图片的宽度会缩放到显示空间的宽度，高度会按比例缩放，然后居中显示，图片不会变形，超出显示空间部分会被剪裁
          - fitHeight 图片的高度会缩放到显示空间的高度，宽度会按比例缩放，然后居中显示，图片不会变形，超出显示空间部分会被剪裁
      - color
        - 图片的混合色值,对每一个像素进行颜色混合处理
        - 类型 Color
      - colorBlendMode
        - 指定颜色混合模式
        - 类型 BlendMode
    - repeat
        - 图片本身大小小于显示空间时，指定图片的重复规则
      - 类型 ImageRepeat
  ```
  
- 字体图标
  
    - 类: Icon
    
      - from widgets.dart
      - 参数
        - icon
          - 指定字体图标
          - 类型 IconData
            - 参数
              - codePoint
                - 类型 int 16进制的
              - fontFamily
                - 类型 String
        - color
          - 指定图标颜色
          - 类型 Color
      - size
          - 指定图标大小
        - 类型 double
    
    - 字体图标也可以Text中使用
    
    - 在Text中使用
        - Text第一个参数需要传递一个16进制的字符码 (String形式的\u开头)
      - style参数里的fontFamily需要设置为相应字体
    
  - 可以使用Material Design的字体图标
  
  - 可以使用自定义图标
  
    - 需要在pubspec.yaml文件中配置
  
      - ```yaml
        fonts:
          - family: myIcon  #指定一个字体名
          fonts:
              - asset: fonts/iconfont.ttf
        ```
      ```
      
      ```
  
    - 在fontFamily中指定相应的字体
  
  - 开关
  
    - from material.dart
    - 类 Switch
      - 不能定义大小
      - 参数
        -  value 
          - 表示是否选中的值
          - 必填
          - 类型 bool
        - onChanged
        - 状态改变回调函数
          - 必填
        - 类型 ValueChanged<bool>   typefrom: Function(T value)
  
  - 单选框
  
    - from material.dart
    - 类 Radio<T>
      - 参数
        - value
          - 必填
          - 代表Radio的值
        - groupValue
          - 必填
          - 不同的Radio有同一个groupValue的引用,就说明是一组
          - 根据groupValue的值是否等于value的值来设置Radio是否处于选中状态
        - onChanged
          - 必填
        - 类型 Function(T v)
            - 参数为value
  - 类RadioListTile<T>
      - 用法和Radio一样,但是有其他参数可以设置文本
      - 其他参数
        - title
          - 类型 Widget 比如Text
          - 设置Radio的相关文本
        - secondary
          - 类型 Widget 比如Icon
          - 在Radio后面设置相关的Icon等
  
  - 复选框
  
    - from material.dart
  - 类 CheckBox
      - 大小不能定义
      - 参数
        - value
          - 表示是否选中的值
          - 必须
          - 类型 bool
        - onChanged
          - 状态改变的回掉
          - 必填
          - 类型 ValueChanged<bool>   typefrom: Function(T value)
        - tristate
          - 是否开启第三种状态 即 一条横线
          - value为null时
  
  - 输入框
  
    - From material.dart
    - 类 TextField
      - 常用可选参数
        - controller
          - 文本框的控制器，通过它可以设置/获取编辑框的内容、选择编辑内容、监听编辑文本改变事件
          
          - 类型 TextEditingController
          
          - 使用
          
            - 获取文本
          
              - 定义一个controller
          
                - ```dart
                  //定义一个controller
                  TextEditingController _controller = TextEditingController();
                  ```
          
              - 设置controller
          
                - ```dart
                  TextField(
                      controller: _controller, //设置controller
                      ...
                  )
                  ```
          
              - 获取文本
          
                - ```dart
                  print(_controller.text)
                  ```
          
            - 监听文本变化
          
              - ```dart
                @override
                void initState() {
                  //监听输入改变  
                  _controller.addListener((){
                    print(_controller.text);
                  });
                }
                ```
          
            - 设置默认值与选择字符
          
              - ```dart
                @override
                void initState() {
                  _controller.text="hello world!";
                	_controller.selection = TextSelection(
                    baseOffset: 2,
                    extentOffset: _controller.text.length
                );
                }
                ```
          
            - 
          
        - focusNode
          
          - 定义了文本框的键盘聚焦引用
          
          - 类型 FocusNode
          
            - 属性
              - hasFocus 是否聚焦
            - 方法
              - unfocus
                - 释放聚焦	
              - requestFocus
                - 聚焦	
              - nextFocus
                - 移动聚焦
          
          - 使用
          
            - 监听focus事件
          
              - ```dart
                focusNode.addListener((){});
                ```
          
        - decoration
        
          - 用于设置输入框的外观显示
          - 类型 InputDecoration
            - 常用参数
              - icon
                - 设置一个在输入框前面的图标
                - 类型 Icon
              - labelText
                - 描述输入框的一个placeholder,当输入框里有内容的时候会缩小到顶部
                - 类型 String
              - hintText
                - 描述输入框的一个placeholder,当输入框里有内容的时候会消失
                - 类型String
              - prefixText
                - 设置输入框内部前面的文字
                - 类型 String
              - prefixIcon
                - 设置输入框内部前面的图标
                - 类型 Icon
              - filled
                - 需要和fillColor一起使用,用于是否设置输入框的背景颜色
                - 类型 bool
              - fillColor
                - 需要和filled参数一起使用,用于设置输入框背景颜色
                - 类型 Color
              - enabledBorder
                - 设置输入框可用时的边框样式
                - 类型
                  - OutlineInputBorder  四周边框
                  - UnderlineInputBorder 只是底部有边框
              - focusedBorder
                - 设置输入框聚焦时的边框样式
                - 类型
                  - OutlineInputBorder	四周有边框
                  - UnderlineInputBorder 只是底部有边框
        
        - keyboardType
        
          - 用于设置输入框的键盘类型
        
          - 类型 TextInputType
        
            - |    枚举值    |                        含义                         |
              | :----------: | :-------------------------------------------------: |
              |     text     |                    文本输入键盘                     |
              |  multiline   |   多行文本，需和maxLines配合使用(设为null或大于1)   |
              |    number    |                数字；会弹出数字键盘                 |
              |    phone     | 优化后的电话号码输入键盘；会弹出数字键盘并显示“* #” |
              |   datetime   |     优化后的日期输入键盘；Android上会显示“: -”      |
              | emailAddress |          优化后的电子邮件地址；会显示“@ .”          |
              |     url      |          优化后的url输入键盘； 会显示“/ .”          |
        
        - textInputAction
          - 键盘操作按钮的类型
          - 类型 TextInputAction
          
        - onEditingComplete
        
          - textInputAction类型按钮的回调,不带参数
          - 类型 Function
        
        - onSubmitted
        
          - textInputAction类型按钮的回调,带输入框内容的参数
          - 类型 Function<String>
        
        - style
        
          - 设置正在编辑的文本的样式
          - 类型 TextStyle
        
        - textAlign
        
          - 设置编辑文本的写入位置
          - 类型 TextAlign
        
        - autofocus
        
          - 是否自动获取焦点
          - 类型 bool
        
        - obscureText
        
          - 是否隐藏正在输入的文本,会有点代替,用于密码的输入
          - 类型 bool
        
        - maxLines
        
          - 输入框的最大行数，默认为1；如果为`null`，则无行数限制
          - 类型 int
        
        - maxLength
        
          - 输入框文本的最大长度，设置后输入框右下角会显示输入的文本计数
          - 类型 int
        
        - maxLengthEnforced
        
          - 当输入文本长度超过maxLength时是否阻止输入，为true时会阻止输入，为false时不会阻止输入但输入框会变红
          - 类型 bool
        
        - onChanged
        
          - 当输入框内容改变时的回调
          - 类型 Function<String>
        
        - inputFormatters
        
          - 用于指定输入格式,不符合格式的不会出现在输入框里
          - 类型: List<TextInputFormatter>
        
        - enable
        
          - 是否禁用输入框
          - 类型 bool
            - false 禁用
            - true 不禁用
        
        - cursorWidth
        
          - 光标宽度
          - 类型 double
        
        - cursorRadius
        
          - 光标圆角
          - 类型 Radius
        
        - cursorColor
        
          - 光标颜色
          - 类型 Color
  
  - Form表单
  
    - From widgets.dart
    - 可以对继承了FormField的子孙组件进行统一的处理,比如校验、重置、内容保存等
    - 参数
      - child
        - Form下面的子组件
        - 类型 Widget
      - autovalidate
        - 是否自动校验继承了FormField的子组件
        - 类型
          - bool
      - onWillPop
        - 决定Form所在的路由是否可以直接返回（如点击返回按钮），该回调返回一个Future对象，如果Future的最终结果是false，则当前路由不会返回；如果为true，则会返回到上一个路由。此属性通常用于拦截返回按钮.
        - 类型
          - Future<bool> Function();
      - onChanged
        - Form的任意一个子FormField内容发生变化时会触发此回调
        - 类型
          - void Function()
    - 对Form子孙Widget进行统一操作的方法在Form的State对象里面
      - State类中的方法
        - validate
          - 调用此方法后，会调用`Form`子孙`FormField的validate`回调，如果有一个校验失败，则返回false，所有校验失败项都会返回用户返回的错误提示
        - save
          - 调用此方法后，会调用`Form`子孙`FormField`的`save`回调，用于保存表单内容
        - reset
          - 调用此方法后，会将子孙`FormField`的内容清空
      - 获取State对象的方法
        - Form.of
          - of一般是是获取statefullwidget的state对象的约定方法,参数为context
        - GlobalKey
  
- ### 布局Widgets

  - 布局类组件就是指直接或间接继承(包含)`MultiChildRenderObjectWidget`的Widget，它们一般都会有一个`children`属性用于接收子Widget

  - #### 线性布局

    - 超出屏幕显示范围不会自动折行的布局

    - 沿水平或垂直方向排布子组件

    - 主轴和辅轴之分,水平方向布局的话,主轴就是水平方向,辅轴就是垂直方向,反之,亦然.

    - 布局会尽可能的在主轴方向上占据最大的空间

    - 主轴方向上的对齐枚举类

      - MainAxisAlignment

    - 辅轴方向上的对齐枚举类

      - CrossAxisAlignment
    
    - ##### Row
    
      - from widgets.dart
      - 水平方向上的线形布局,主轴为水平方向,辅轴为垂直方向
      - 只是一行,溢出会报错,并不会自动换行
      - 高度等于最高的子组件的高度
      - 如果Row里面有嵌套的Row,只有最外面的Row才会在主轴方向上尽可能的占据最大的空间,Column同理
      - 参数
        - children
          - 子组件数组
          - 类型 
            - List<Widget>
        - mainAxisAlignment
          - 主轴上的对齐方式
          - mainAxisSize为max时才有意义
          - 类型
            - MainAxisAlignment
              - start
              - end
              - center
              - spaceBetween
              - spaceAround
              - spaceEvenly
          - 默认值
            - start
        - mainAxisSize
          - 在主轴方向上即水平方向上所占的空间
          - 类型
            - MainAxisSize
              - min
              - max
          - 默认值
            - max
        - crossAxisAlignment
          - 子组件在辅轴方向上即垂直方向上的对齐方式
          - 只有存在比最高的子组件更矮的子组件的话才会有意义
          - 类型
            - CrossAxisAlignment
              - start
              - end
              - center
              - stretch
              - baseline
          - 默认值
            - center
        - textDirection
          - 水平方向上的对齐的参考
          - 重点:这个永远是水平方向上的,不会跟着主轴或辅轴的变化而变化
          - 类型
            - TextDirection
              - rtl
              - ltr
          - 默认值
            - ltr
        - verticalDirection
          - 垂直方向上的对齐参考
          - 重点:这个永远是垂直方向上的,不会随着主轴或辅轴的变化而变化
          - 类型
            - VerticalDirection
          - up 	 重下往上
              - down 重上往下
      - 默认值
            - Down 
    
    - ##### Column
    
      - from widgets.dart
  - 垂直方向上的线形布局,主轴为垂直方向,辅轴为水平方向
      - 只是一列,溢出会报错,并不会自动换列
  - 参数 
        - 同 Row的参数
    
    - ##### Flex
    
      - from widgets.dart
      - Flex和Expanded配合使用来实现弹性布局
      - 弹性布局允许子组件按照一定比例来分配父容剩余的器空间
      - Row和Column都是Flex类的子类
      - Row和Column都是Flex布局中某个主轴的快捷方式
      - 参数
        - direction
          - 必填参数
          - 设置主轴方向
          - 类型
            - Axis
              - horizontal
              - vertical
        - children
          - 类型 List<Widget>
        - 其他属性同Row和Column
      - Expanded
        - 设置Flex子组件在主轴方向上的伸展弹性系数
        - 不存在收缩弹性系数,因为越界会报错
        - 被Expanded包裹的子组件如果在主轴方向上有width或height,则会失效
        - 参数
          - flex
            - 设置伸展比例
            - 类型
              - int
          - child
            - 类型
              - Widget
    
  - ### 流式布局
  
    - 超出屏幕显示范围会自动折行的布局
  
    - #### Wrap
  
      - from widgets.dart
      - Wrap也有主轴和辅轴之分,水平方向布局的话,主轴就是水平方向,辅轴就是垂直方向,反之,亦然.
      - run概念
        - 当发生自动折行的时候,在辅轴方向的空间中,会存在多个主轴,其中每一个子主轴就叫run
        - 每一个run在主轴和辅轴上的空间都等于其内容空间在各个方向上的大小
      - 布局并不会尽可能的在主轴方向上占据最大的空间,在主轴和辅轴上的空间都是内容空间大小
      - 主轴上的空间是与在主轴方向上空间最大的run一样
      - 辅轴上的空间是各个run和runSpacing之和
      - 参数
        - direction
          - 设置主轴方向
          - 类型
            - Axis
              - horizontal
              - vertical
          - 默认
            - horizontal
        - alignment
          - 设置在每一个run中,主轴方向上子组件如何排列对齐
          - 只有存在多个run并且不同run之间在主轴方向上的空间会有不同时才会有效
          - 对齐的参考空间是主轴方向上空间最大的那个run空间
          - 类型
            - WrapAlignment
              - start
              - end
              - center
              - spaceBetween
              - spaceAround
              - spaceEvenly
          - start
        - spacing
          - 在每一个run中,主轴方向上的子Widget的间距
          - 类型
            - double
          - 默认
            - 0.0
        - runAlignment
          - 所有的run在辅轴方向上的排列对齐方式
          - 这个参数完全没有意义
          - 类型
            - WrapAlignment
          - 默认
            - start
        - runSpacing
          - 各个run在辅轴方向上的间距
          - 类型
            - double
          - 默认
            - 0.0
        - crossAxisAlignment
          - 在每一个run中,辅轴方向上子组件如何排列对齐
          - 类型
            - WrapCrossAlignment
              - start
              - end
              - center
          - 默认
            - start
        - textDirection
          - 水平方向上的对齐的参考
          - 和主轴或辅轴的方向无关
          - 类型
            - TextDirection
              - ltr
              - rtl
        - verticalDirection
          - 垂直方向上的对齐参考
          - 和主轴或辅轴的方向无关
          - 类型
            - VerticalDirection
              - up
              - down
        - children
          - 子组件
          - 类型
            - List<Widget>
  
    - #### Flow
  
      - from widgets.dart
      - 自定义实现布局
      - 暂时略...