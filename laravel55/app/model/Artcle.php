<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Artcle extends Model
{
    //

    protected $fillable = [
        'ID', '标题', '创建人','添加时间','修改时间'
    ];

}



