<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title> @yield('title') </title>

    @include('admin.common.header')

</head>
<!-- begin::Body -->
<body  class="m-page--fluid m--skin- m-content--skin-light2 m-header--fixed m-header--fixed-mobile m-aside-left--enabled m-aside-left--skin-dark m-aside-left--fixed m-aside-left--offcanvas m-footer--push m-aside--offcanvas-default"  >

<!-- begin:: Page -->
<div class="m-grid m-grid--hor m-grid--root m-page">

@include('admin.common.top')

<!-- begin::Body -->
    <div class="m-grid__item m-grid__item--fluid m-grid m-grid--ver-desktop m-grid--desktop m-body">


        @include('admin.common.left')

        @section('body')

        @show


    </div>
    <!-- end:: Body -->


    @include('admin.common.footer')



</div>
<!-- end:: Page -->


<!-- begin::Scroll Top -->
<div id="m_scroll_top" class="m-scroll-top">
    <i class="la la-arrow-up"></i>
</div>
<!-- end::Scroll Top -->


<!--begin::Base Scripts -->
<script src="/upload/assets/vendors/base/vendors.bundle.js" type="text/javascript"></script>
<script src="/upload/assets/demo/default/base/scripts.bundle.js" type="text/javascript"></script>
<!--end::Base Scripts -->


<!--begin::Page Vendors Scripts -->
<script src="/upload/assets/vendors/custom/fullcalendar/fullcalendar.bundle.js" type="text/javascript"></script>
<!--end::Page Vendors Scripts -->



<!--begin::Page Snippets -->
<script src="/upload/assets/app/js/dashboard.js" type="text/javascript"></script>
<!--end::Page Snippets -->


<script src="/upload/assets/vendors/custom/datatables/datatables.bundle.js" type="text/javascript"></script>
<script src="/upload/assets/demo/default/custom/crud/datatables/basic/headers.js" type="text/javascript"></script>


</html>