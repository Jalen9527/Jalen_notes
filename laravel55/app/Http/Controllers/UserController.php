<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/3/11
 * Time: 15:53
 */

namespace App\Http\Controllers;
use Illuminate\Routing\Controller;

class UserController extends Controller
{

    public  function index($userid =1)
    {

        $userlist = [
            'lisa','maye','cici'
        ];

        $user = '李白';

        echo $userid;

        return view('user/index',['userlist'=>$userlist,'user'=>$user]);
    }

}