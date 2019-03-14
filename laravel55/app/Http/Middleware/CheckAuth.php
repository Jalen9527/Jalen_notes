<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/3/14
 * Time: 18:18
 */



namespace App\Http\Middleware;

use Closure;

class CheckAuth
{
    public function handle($request, Closure $next)
    {
        // 执行动作
        // 1先检查后台管理是否登录，2检查是否有权限
        
        $token = $request->input('token');
//        dump('not have auth!');exit;

        return $next($request);
    }
}