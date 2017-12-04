@extends('HomeLayout.layout')
@section('title',$nav['name'])
@section('description',$nav['seo_keyword'])
@section('keywords',$nav['seo_description'])

@section('css')
    <style>
        .alert {
            position: fixed;
            width: 100%;
            z-index: 10000;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="{{ asset('dropify-master/css/dropify.min.css')}}">
    @endsection
@section('main')
    @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
    @endif
    <div class="met-banner " data-height='300||'>
        <div class="slick-slide">
            <img class="cover-image" src="{{asset($nav['header_pic'])}}" srcset='{{asset($nav['header_pic'])}}?&x=767 500w,{{asset($nav['header_pic'])}}' sizes="(max-width: 767px) 500px" alt="">
            <div class="banner-text p-5">
                <div class='container'>
                    <div class='banner-text-con'>
                        <h1 style="color:#fff;">{{$nav['name']}}</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="met-job animsition">
        <div class="container">
            <div class="row">
                <div class="met-job-list met-page-ajax">
                    @foreach($zp as $v)
                    <div class="widget widget-article widget-shadow">
                        <div class="widget-body">
                            <h3 class="widget-title">
                                {{$v['title']}}
                            </h3>
                            <p class="widget-metas">
                                <span>{{mb_substr($v['time'],0,10,'utf8')}}</span>
                                <span><i class="icon wb-map margin-right-5" aria-hidden="true"></i>{{$v['address']}}</span>
                                <span><i class="icon wb-user margin-right-5" aria-hidden="true"></i>{{$v['number']}}</span>
                                <span><i class="icon wb-payment margin-right-5" aria-hidden="true"></i>{{$v['salary']}}</span>
                            </p>
                            <hr>
                            <div class="met-editor lazyload clearfix">
                                {!! $v['content'] !!}
                                <p><br/></p>
                            </div>
                            <hr>
                            <div class="widget-body-footer margin-top-0">
                                <a class="btn btn-outline btn-squared btn-primary met-job-cvbtn" href="javascript:void(0)" data-jobid="{{$v['id']}}">在线应聘</a>
                            </div>
                        </div>
                    </div>
                        @endforeach
                </div>
            </div>
        </div>
    </section>

    <div class="modal fade modal-primary" id="met-job-cv" aria-hidden="true" role="dialog" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <form class="met-form" action="{{url('jobs')}}" method="POST" role="form" enctype="multipart/form-data">
                    <input type="hidden" name="_token" value="{{csrf_token()}}">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                        <h4 class="modal-title">在线应聘</h4>
                    </div>
                    <div class="modal-body padding-bottom-0">
                        <input type="hidden" id="job_id" name="job_id" value="">
                        <div class="form-group">
                            <div>
                                <input name="name" id="name" class="form-control" type="text" placeholder="姓名">
                            </div>
                            <small class="help-block name" style="display: none;">不能为空</small>
                        </div>
                        <div class="form-group">
                            <label class="control-label">性别</label>
                            <div>
                                <div class="radio-custom radio-primary">
                                    <input name="gender" type="radio" checked="" value="先生" id="para19_1">
                                    <label for="para19_1">先生</label>
                                </div>
                                <div class="radio-custom radio-primary">
                                    <input name="gender" type="radio" value="女士" id="para19_2">
                                    <label for="para19_2">女士</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div>
                                <input name="birth_time" id="birth_time" class="form-control" type="text" placeholder="出生年月 ">
                            </div>
                            <small class="help-block birth_time" style="display: none;">不能为空</small>
                        </div>
                        <div class="form-group">
                            <div>
                                <input name="origin" class="form-control" type="text" placeholder="籍贯 ">
                            </div>
                        </div>
                        <div class="form-group">
                            <div>
                                <input name="telephone" maxlength="11" id="telephone" class="form-control" type="text" placeholder="联系电话 ">
                            </div>
                            <small class="help-block telephone" style="display: none;">不能为空</small>
                            <small class="help-block telephone_yz" style="display: none;">格式不正确</small>
                        </div>
                        <div class="form-group">
                            <div>
                                <input name="zip_code" class="form-control" type="text" placeholder="邮编 ">
                            </div>
                        </div>
                        <div class="form-group">
                            <div>
                                <input name="email" id="email" class="form-control" type="text" placeholder="E–mail ">
                            </div>
                            <small class="help-block email" style="display: none;">不能为空</small>
                            <small class="help-block email_yz" style="display: none;">格式不正确</small>
                        </div>
                        <div class="form-group">
                            <div>
                                <input name="education" class="form-control" type="text" placeholder="学历 ">
                            </div>
                        </div>
                        <div class="form-group">
                            <div>
                                <input name="major" class="form-control" type="text" placeholder="专业 ">
                            </div>
                        </div>
                        <div class="form-group">
                            <div>
                                <input name="school" class="form-control" type="text" placeholder="学校 ">
                            </div>
                        </div>
                        <div class="form-group">
                            <div>
                                <input name="address" class="form-control" type="text" placeholder="通讯地址 ">
                            </div>
                        </div>
                        <div class="form-group">
                            <div>
                                <textarea name="awards" class="form-control" placeholder="所获奖项 " rows="3"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <div>
                                <textarea name="experience" class="form-control" placeholder="工作经历 " rows="3"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <div>
                                <textarea name="hobby" class="form-control" placeholder="业余爱好 " rows="3"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-md-8 control-label" for="header_pic">近期照片&nbsp;&nbsp;&nbsp;<code>提示：不要上传中文名称图片，最大限2M</code></label>
                            <input type="file" class="dropify"  id="header_pic" data-max-file-size="2M" name="img" data-default-file=""  value="">
                        </div>
                    </div>
                    <div class="modal-footer text-left">
                        <a href="javascript:void(0);" class="btn btn-primary btn-squared" id="submit">提交</a>
                        <button type="button" class="btn btn-default btn-squared" data-dismiss="modal">取消</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="{{ asset('dropify-master/js/dropify.min.js') }}"></script>
    <script type="text/javascript">
        setTimeout("$('.alert').fadeOut('slow')",3000);
        $('#header_pic').dropify({
            messages: {
                'default': '点击或拖拽来上传近期照片',
                'replace': '点击或拖拽图片到这里来替换图片',
                'remove':  '移除图片',
                'error': '对不起，你上传的图片太大了',
            }
        });
        $('#name').bind('input propertychange', function() {
            if($(this).val()!='')$('.name').hide();
        });
        $('#telephone').bind('input propertychange', function() {
            if($(this).val()!='')$('.telephone').hide();
            if(!$(this).val().match(/^(((13[0-9]{1})|(14[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/)){
                $('.telephone_yz').show();
            }else{
                $('.telephone_yz').hide();
            }
        });
        $('#email').bind('input propertychange', function() {
            if($(this).val()!='')$('.email').hide();
            if(!$(this).val().match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)){
                $('.email_yz').show();
            }else{
                $('.email_yz').hide();
            }
        });
        $('#birth_time').bind('input propertychange', function() {
            if($(this).val()!='')$('.birth_time').hide();
        });

        $('#submit').click(function () {
            var name = $('#name').val(),
                birth_time = $('#birth_time').val(),
                telephone = $('#telephone').val(),
                email = $('#email').val();
            if(name==''){$('.name').show();}
            else if(birth_time==''){$('.birth_time').show();}
            else if(telephone==''){$('.telephone').show();}
            else if(email==''){$('.email').show();}
            else if(!telephone.match(/^(((13[0-9]{1})|(14[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/)){$('.telephone_yz').show();}
            else if(!email.match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)){$('.email_yz').show();}
            else{
                $('.met-form').submit();
            }
        })
    </script>
@endsection

