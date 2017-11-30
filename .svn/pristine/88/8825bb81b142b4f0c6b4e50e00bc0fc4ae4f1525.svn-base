@extends('voyager::master')


    @section('page_title',Voyager::setting('admin_title') . " - 联系我们")





@section('page_header')
    <h1 class="page-title">
        <i class="voyager-telephone"></i> 联系我们
    </h1>
    <link rel="stylesheet" type="text/css" href="{{ asset('dropify-master/css/dropify.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ asset('wangEditor-2.1.22/dist/css/wangEditor.min.css') }}">
@stop

@section('content')

    <div class="page-content edit-add container-fluid">
        <div class="row">
            <div class="col-md-12">

                <div class="panel panel-bordered">

                    <div class="panel-body">

                        @include('admin.error')

                     <form role="form" class="form-edit-add"  action="{{url('admin/contact')}}"  method="POST" enctype="multipart/form-data">

                         {{ csrf_field() }}

                            <div class="form-group">
                                <label class="col-md-2 control-label">公司简介</label>
                                <textarea rows="6" class="form-control"  name="title" id="title" placeholder="请输入公司简介"  >@if(isset($data->title)){{old('title', $data->title)}}@else{{old('title')}}@endif</textarea>
                            </div>

                         <div class="form-group">
                             <label  class="col-md-8 control-label" for="header_pic">公司简介封面图  &nbsp;&nbsp;&nbsp;  <code>提示：禁止上传带中文名称图片，最大限1M 图片像素：600 x 350</code></label>
                             <input type="file" class="dropify"  id="img" data-max-file-size="2M" name="img" data-default-file="@if(isset($data->img)){{asset($data->img)}}@endif"  value="">
                         </div>

                        <div class="form-group">

                                <textarea id="textarea139"  class="form-control" style="height: 800px;" name="content"> @if(isset($data->content)) {!! $data->content !!} @else {{old('content')}} @endif </textarea>

                        </div>

                        <div class="form-group">
                             <label class="col-md-2 control-label">请输入联系地址</label>
                             <input type="text" class="form-control"  name="address" id="address" placeholder="请输入联系地址" value="@if(isset($data->address)){{old('address', $data->address)}}@else{{old('address')}}@endif" />
                        </div>

                        <div class="panel-footer">
                            <button type="submit" class="btn btn-primary save">

                                 保存设置

                            </button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
    </div>

@endsection


@section('javascript')

    <script type="text/javascript" src="{{ asset('dropify-master/js/dropify.min.js') }}"></script>

    <script type="text/javascript" src="{{asset('wangEditor-2.1.22/dist/js/wangEditor.min.js')}}"></script>


    <script type="text/javascript">

        $('#img').dropify({
            messages: {
                'default': '点击或拖拽来上传封面图',
                'replace': '点击或拖拽图片到这里来替换图片',
                'remove':  '移除图片',
                'error': '对不起，你上传的图片太大了',
            }
        });

        var editor = new wangEditor('textarea139');

        editor.config.uploadImgUrl = '/admin/details';


        editor.config.uploadImgFns.onload = function (resultText, xhr) {

            var originalName = editor.uploadImgOriginalName || '';

            editor.command(null, 'insertHtml', '<img src="' +  resultText.split("<")[0] + '" alt="' + originalName + '" style="max-width:100%;"/>');

        };

        editor.config.uploadParams = {

            _token:$('meta[name="csrf-token"]').attr('content'),

        };

        editor.config.uploadHeaders = {

            'Accept' : 'text/x-json'

        };

        editor.config.mapAk = 'CTwPDLy8vyI9pDPldkuKiqswVoh0RArl';

        editor.config.uploadImgShowBase64 = true;

        editor.create();

        $("#pid").change(function(){var val = $('#pid').find("option:selected").text(); $('input[name="name"]').val(val)})

    </script>


    @stop