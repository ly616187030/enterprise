@extends('voyager::master')


    @section('page_title',Voyager::setting('admin_title') . " - 加入我们")





@section('page_header')
    <h1 class="page-title">
        <i class="voyager-bell"></i> 加入我们
    </h1>
    <link rel="stylesheet" type="text/css" href="{{ asset('wangEditor-2.1.22/dist/css/wangEditor.min.css') }}">
    <div id="voyager-notifications"></div>
    <div class="container-fluid">
        <div class="alert alert-info">
            <strong>如何使用:</strong>
            <p>请在文本框内写入加入我们的内容！！！</p>
        </div>
    </div>

@stop

@section('content')

    <div class="page-content edit-add container-fluid">
        <div class="row">
            <div class="col-md-12">

                <div class="panel panel-bordered">

                    <div class="panel-body">

                        @include('admin.error')

                     <form role="form" class="form-edit-add"  action="{{url('admin/join-us')}}"  method="POST" enctype="multipart/form-data">

                         {{ csrf_field() }}

                        <div class="form-group">
                                <textarea id="textarea139"  class="form-control" style="height: 800px;" name="content" placeholder="请输入联系我们内容"> @if(isset($data->content)) {!! $data->content !!} @else {{old('content')}} @endif </textarea>
                        </div>

                         @if($role['edit_'.$dataType] == true || $role['add_'.$dataType] == true)
                                <div class="panel-footer">
                                    <button type="submit" class="btn btn-primary save">

                                         保存设置

                                    </button>
                                </div>
                         @endif

                    </form>
                </div>
            </div>
        </div>
    </div>
    </div>

@endsection


@section('javascript')

    <script type="text/javascript" src="{{asset('wangEditor-2.1.22/dist/js/wangEditor.min.js')}}"></script>


    <script type="text/javascript">

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

    </script>


    @stop