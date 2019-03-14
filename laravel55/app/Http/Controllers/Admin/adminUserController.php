<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/3/14
 * Time: 15:16
 */


namespace App\Http\Controllers\Admin;

use Illuminate\Routing\Controller;

class AdminUserController extends Controller{

    /**
     * 管理员列表
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public  function list()
    {

        return view('admin/adminUser/list');

    }
}