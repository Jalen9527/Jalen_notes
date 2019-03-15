<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AdminUser extends Model
{
    //

    public  function  getAdminUserList($pageSize)
    {
        $list = $this->paginate($pageSize);  //分页

        return $list;
    }
}
