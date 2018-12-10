@extends('layouts.new-master')
@section('content')
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
 <!-- ====================================== /loc ket qua theo lua chon================================= -->
        <!-- ===================================danh muc sachGD ==================================-->
        @foreach($data as $row)
          <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 no-padding">
            <div class="thumbnail sachGD">
              <div class="bt">
                <div class="image-m pull-left">
                  <img class="img-responsive" src="{!!url('uploads/products/'.$row->images)!!}" alt="{!!$row->name!!}">
                </div>
                <div class="intro pull-right">
                  <h1><small class="title-sachGD">{!!$row->name!!}</small></h1>
                  <li>{!!$row->intro!!}</li>
                  <span class="label label-info">Mô tả</span>
                  @if ($row->note!='')
                    <li><span class="glyphicon glyphicon-ok-sign"></span>{!!$row->note!!}</li>
                  @endif
                    <li><span class="glyphicon glyphicon-ok-sign"></span>Cài đặt phần miềm, tải ứng dụng miến phí</li>
                </div><!-- /div introl -->
              </div> <!-- /div bt -->
              <div class="ct">
                <a href="{!!url('sachGD/'.$row->id.'-'.$row->slug)!!}" title="Chi tiết">
                    <span class="label label-warning">Giới thiệu chi tiết</span>
                    <li><strong>Tên Sách</strong> : <i>  {!!$row->name!!}</i></li>
                    <li><strong>Tác Giả</strong> : <i>  {!!$row->author!!}</i></li>
                    <li><strong>Nhà XB</strong> : <i>{!!$row->pub_company!!} </i></li>
                </a>
              </div>
                <span class="btn label-warning"><strong>{!!number_format($row->price)!!}</strong>Vnd </span>
                <a href="{!!url('gio-hang/addcart/'.$row->id)!!}" class="btn btn-success pull-right add">Thêm vào giỏ </a>
            </div> <!-- / div thumbnail -->
          </div>  <!-- /div col-4 -->
        @endforeach
      <div class="clearfix">
        
      </div>
    </div>
      <!-- ===================================================================================/products ============================== -->
      {!!$data->render();!!}
@endsection