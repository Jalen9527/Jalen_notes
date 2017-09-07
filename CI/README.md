
CI 笔记

以下是/目录下的文件：
user_guide文件是用户手册
system文件夹是CI的核心文件
application文件夹是我们的应用文件（开发主要操作的文件）
index.php 入口文件


使用函数：
函数文件放在/application/helpers目录下
在代码中使用$this->load->helper('name');  这就是加载/application/helpers/name_helper.php这个文件

构造方法：
与类名相同的方法会被CI认为是构造方法，每次进入会先执行构造方法再进入别的方法

CI中的控制器中可以多次加载视图文件。例如加载头部和底部等
在视图中加载动态数据：
	
	控制器文件中：
		$data['msg'] = '这是test的数据';
		$this->load->view('welcome_message',$data);

	视图文件中：
		<?php echo $msg; ?> 
		看清楚这里echo的是$data数组中的元素;

		循环输出：
		$data['todo_list'] = array('Clean House', 'Call Mom', 'Run Errands');

		<ul>
	    <?php foreach ($todo_list as $item):?>

	        <li><?php echo $item;?></li>

	    <?php endforeach;?>
	    </ul>


URI类库：
	$id = $this->uri->segment(3,0);
	例如链接：http://localhost/ci/index.php/Welcome/test/11896
	参数1是获取控制器名Welcome，参数2是获取到动作名test，第3个参数是:11896

input类：
	获取post数据 $this->input->post('name');
	获取get数据 $this->input->get('name');  //这里推荐使用uri的segment()获取
	获取服务器的数据 $this->input->server('HTTP_HOST');
	获取cookie的数据 $this->input->cookie()
	获取ip地址 $this->input->ip_address();

数据库操作：
	基础操作
	//加载数据库操作类
	$this->load->database();
	$ret = $this->db->query('select * from tp_log limit 10 ;');
	$arr = $ret->result(); //返回的是对象的形式 
	//$ret->result_array();返回的是二维数组
	//$ret->row(); 返回的是一条记录对象形式
	//$ret->row_array(); 放回的是一条数组的记录 
	//$ret->first_row();  返回的是第一条记录 
	//$ret->first_row('array'); //返回数组形式
	//$res->num_rows(); //放回总条数

	AR 连贯操作
	//加载数据库操作类
	$this->load->database();

	//查询数据
	$obj = $this->db->get('log');  //查询的log表
	$obj->result_array();  返回的是二维数组

	//增加数据
	$this->load->database();
	$this->db->insert($table,$data); //table表名，data 数据数组

	//修改数据
	$this->load->database();
	$this->db->update($table,$data,$where); //table表名，data 数据数组 , $where条件

	//删除数据
	$this->load->database();
	$this->db->delete($table,$where); //table表名, $where条件


	//连贯查询操作
	$this->load->database();
	$res = $this->db->select('operate,admin')
				->where('id=2')
				->order_by('addtime desc')
				->limit(10,1)                //这里注意与mysql 的语句相反的
				->get('log');
	$list = $res->result_array();

	//mysql debug
	$this->db->last_query(); //输出最后一条sql语句


扩展控制器：
	在core文件夹下面 新建一个MY_Controller 继承 CI_Controller ，controller文件夹里面的控制器就继承 MY_Controller
	在构造方法里 parent::__construct();
	MY_Controller.php 文件夹：
	class MY_Controller extends CI_Controller
	{
		
		function __construct(argument)
		{
			parent::__construct();

		}
	}


模型：
	加载models文件夹的模型： $this->load->model('User_model','user');  第一个参数是加载的模型的类名，第二个参数是设置别名

url 相关函数:
	$this->load->helper('url'); 要使用url辅助函数必须加载 并且需要配置config文件的$config['base_url'] = 'ci.com';您的域名
	site_url('index/user'); 用于模板里的跳转<a>标签之类
	base_url()：在根目录下创建一个uploads放置资源的文件夹。可以使用 base_url()."/uploads/"; 来获得路径,或者base_url('/upload/');
	//可以开启自动加载

自动加载：
	文件路径：/application/config/autoload.php
	url辅助函数开启自动加载：$autoload['helper'] = array('url');
	数据库自动连接：$autoload['libraries'] = array('database');

路由配置：
	文件路径：/application/config/
	配置进入默认控制器：$route['default_controller'] = 'welcome';


分页类：

	//分页
		$this->load->library('pagination'); //加载器
		$config['base_url'] = site_url('Welcome/index'); // 设置好url
		$config['total_rows'] = $this->model->getrows(); // 获取这个表的总数
		$config['per_page'] = $pagesize;				 //设置每页显示多少个
		$offset = $this->uri->segment(3,0);				 //获取页数 默认是获取第三个  $config['uri_segment'] = 4 ; 可以修改为4个
		$this->pagination->initialize($config);			 //将配置项加进分页里
		$page = $this->pagination->create_links();		 // 获取到整个分页

	//关于配置：
		如果你不喜欢用以上的方法进行参数设置，你可以将参数保存到配置文件中。 简单地创建一个名为 pagination.php 的文件，把 $config 数组加到这个文件中， 然后将文件保存到 application/config/pagination.php 。这样它就可以自动被调用。

		pagination.php 文件：
		$config['prev_link'] = '上一页';
		$config['next_link'] = '下一页';
		$config['last_link'] = '最后一页';
		$config['first_link'] = '首页';

文件上传类：
	//文件上传
			$config['upload_path']      = './uploads/images/';
			$config['allowed_types']    = 'gif|jpg|png|jpeg';
			$config['max_size']     = 2048;
			$config['encrypt_name']     = true; //随机文件名

	        $this->load->library('upload', $config);
	        if ( ! $this->upload->do_upload('img'))      //上传的input name = img
	        {
	            $error = $this->upload->display_errors();
	            echo $error;
	        }
	        echo 'ok';



session类：

	$this->load->library('session');  //加载session类
	$this->session->set_userdata('user','xiaoming');   //添加session ，第二个参数可以是数组
	echo $this->session->user;        //获取session
	$rest = $this->session->unset_userdata('user');    //删除session

验证码类:
	
	$this->load->helper('captcha');   //加载这个辅助函数
	$vals = array(
		    'img_path'  => './captcha/',  //存储路径
		    'img_url'   => base_url().'./captcha',  //地址
		    'img_width' => '150',         //宽度
		    'img_height'    => 30,  	  //高度
		    'expiration'    => 3600,      //过期时间
		    'word_length'   => 5,	      //验证码长度
		    'colors'    => array(         //自定义颜色
			        'background' => array(255, 255, 255),
			        'border' => array(255, 255, 255),
			        'text' => array(0, 0, 0),
			        'grid' => array(255, 40, 40)
			    )
		);

	$cap = create_captcha($vals);
	echo $cap['image'];                  //验证码输出   $cap['word'] 是验证码



表单集合类
	
	控制器文件：
	$this->load->library('form_validation');  //加载表单验证类
	$this->form_validation->set_rules('user','用户名','required');   //验证input 是user的值 , 第二个参数是提示,第三个参数是规则，可以多个
	$this->form_validation->set_rules('pwd','密码','required');
	$this->form_validation->set_rules('email','邮箱','valid_emails|required');
	$this->form_validation->run()  //直接可以判断

	模板文件:
	<?php echo validation_errors(); ?>                   //显示所有验证不通过的消息

	用户名：<input type="text" name="user" value="<?=set_value('user');?>">    //set_value('user');   获取的就是用户填充的数据
	密码: <input type="password" name="pwd" value="<?=set_value('pwd');?>">
	邮箱: <input type="email" name="email" value="<?=set_value('email');?>">

	配置文件的方式：
	application/config/ 目录下创建一个名为 form_validation.php 的文件。 然后在该文件中，将验证规则保存在数组 $config 中即可。

	$config = array(
    'signup' => array(
        array(
            'field' => 'username',
            'label' => 'Username',
            'rules' => 'required'
        ),
    ));

    $this->form_validation->run('signup'); //参数里直接填写配置的规则集合名称就可以判断 非常方便








