@extends('admin.app')

@section('body')

    <div class="m-grid__item m-grid__item--fluid m-wrapper">

        <!-- BEGIN: Subheader -->
        <div class="m-subheader ">
            <div class="d-flex align-items-center">
                <div class="mr-auto">
                    <h3 class="m-subheader__title m-subheader__title--separator">列表</h3>
                    <ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
                        <li class="m-nav__item m-nav__item--home">
                            <a href="#" class="m-nav__link m-nav__link--icon">
                                <i class="m-nav__link-icon la la-home"></i>
                            </a>
                        </li>
                        <li class="m-nav__separator">-</li>
                        <li class="m-nav__item">
                            <a href="" class="m-nav__link">
                                <span class="m-nav__link-text">用户管理</span>
                            </a>
                        </li>
                        <li class="m-nav__separator">-</li>
                        <li class="m-nav__item">
                            <a href="" class="m-nav__link">
                                <span class="m-nav__link-text">管理员列表</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div>
                </div>
            </div>
        </div>
        <!-- END: Subheader -->
        <div class="m-content">

            <div class="m-portlet m-portlet--mobile">
                <div class="m-portlet__head">
                    <div class="m-portlet__head-caption">
                        <div class="m-portlet__head-title">

                        </div>
                    </div>
                    <div class="m-portlet__head-tools">
                        <ul class="m-portlet__nav">
                            <li class="m-portlet__nav-item">
                                <a href="{{url('add')}}" class="btn btn-info m-btn m-btn--custom m-btn--icon m-btn--air">
						<span>
							<i class="la la-plus"></i>
							<span>新增</span>
						</span>
                                </a>
                            </li>
                            <li class="m-portlet__nav-item"></li>
                        </ul>
                    </div>
                </div>
                <div class="m-portlet__body">
                    <!--begin: Datatable -->
                    <table class="table table-striped- table-bordered table-hover table-checkable" id="m_table_1">
                        <thead>

                        <tr>
                            <th >id</th>
                            <th >用户名</th>
                            <th >添加时间</th>
                            <th >修改时间</th>
                            <th >管理</th>
                        </tr>
                        </thead>

                        <tbody>

                        @foreach ( $list as $item )
                        <tr>
                            <td>{{$item->id}}</td>
                            <td>{{$item->username}}</td>
                            <td>{{$item->created_at}}</td>
                            <td>{{$item->updated_at}}</td>
                            <td>
                                <a href="{{url('edit',['id'=>$item->id])}}" class="btn btn-primary m-btn m-btn--custom m-btn--icon m-btn--pill m-btn--air">
									<span>
										<i class="la la-archive"></i>
										<span><font id="WOW_TRANSLATE_476" class="WOW_TRANSLATE_STYLE" data--w-o-w_-i-n-d-e-x="476">编辑</font></span>
									</span>
                                </a>

                                <a href="#" class="btn btn-danger m-btn m-btn--custom m-btn--icon m-btn--pill m-btn--air">
									<span>
										<i class="la la-archive"></i>
										<span><font id="WOW_TRANSLATE_476" class="WOW_TRANSLATE_STYLE" data--w-o-w_-i-n-d-e-x="476">删除</font></span>
									</span>
                                </a>

                            </td>
                        </tr>
                        @endforeach

                        </tbody>

                    </table>


                    {{$list->links('admin.common.page')}}



                </div>
            </div>
            <!-- END EXAMPLE TABLE PORTLET-->                </div>
    </div>

@endsection