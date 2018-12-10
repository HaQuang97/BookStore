@extends('layouts.new-master')
@section('content')
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
 <!-- ====================================== /loc ket qua theo lua chon================================= -->
      <div id="sachLapTrinh"></div>
        @foreach($data as $row)
           <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 no-padding">
            <div class="thumbnail sachLapTrinh">
              <div class="bt">
                <div class="image-m pull-left">
                  <img class="img-responsive" src="{!!url('uploads/products/'.$row->images)!!}" alt="{!!$row->name!!}">
                </div>
                <div class="intro pull-right">
                  <h1><small class="title-sachLapTrinh">{!!$row->name!!}</small></h1>
                  <li>Tên Sách : {!!$row->name!!} </li>
                  <li>Tác Giả :{!!$row->author!!}</li>
                  <span class="label label-info">Mô tả</span>
                  @if ($row->note!='')
                    <li><span class="glyphicon glyphicon-ok-sign"></span>{!!$row->note!!}</li>
                  @endif
                    <li><span class="glyphicon glyphicon-ok-sign"></span>Cài đặt phần miềm, tải ứng dụng miến phí</li>
                </div><!-- /div introl -->
              </div> <!-- /div bt -->
              <div class="ct">
                <a href="{!!url('sachLapTrinh/'.$row->id.'-'.$row->slug)!!}" title="Chi tiết">
                  <span class="label label-warning">Giới thiệu chi tiết</span>
                  <li><strong>Tên Sách</strong> : <i>  {!!$row->name!!}</i></li>
                  <li><strong>Tác Giả</strong> : <i>  {!!$row->author!!}</i></li>
                  <li><strong>Nhà XB</strong> : <i>{!!$row->pub_company!!} </i></li>
                </a>
              </div>
                <span class="btn label-warning"><strong>{!!number_format($row->price) !!}</strong> Vnd </span>
                <a href="{!!url('gio-hang/addcart/'.$row->id)!!}" class="btn btn-success pull-right add">Thêm vào giỏ </a>
            </div> <!-- / div thumbnail -->
          </div>  <!-- /div col-4 item products -->
        @endforeach
      <div class="clearfix">
        
      </div>
    </div>
      <!-- ===================================================================================/products ============================== -->
      {!!$data->render();!!}
@endsection