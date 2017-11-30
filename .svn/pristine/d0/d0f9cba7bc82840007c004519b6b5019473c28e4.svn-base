@extends('voyager::master')


 @if(isset($id))

        @section('page_title',Voyager::setting('admin_title') . " - 编辑信息")

@else

    @section('page_title',Voyager::setting('admin_title') . " - 新增信息")

@endif



@section('page_header')
    <h1 class="page-title">
        <i class="voyager-certificate"></i> @if(isset($id)) 编辑信息 @else 新增信息 @endif
    </h1>

    <link rel="stylesheet" type="text/css" href="{{ asset('wangEditor-2.1.22/dist/css/wangEditor.min.css') }}">
@stop

@section('content')

    <div class="page-content edit-add container-fluid">
        <div class="row">
            <div class="col-md-12">

                <div class="panel panel-bordered">

                    <div class="panel-body">

                        @include('admin.error')

                     <form role="form" class="form-edit-add"  @if(isset($id)) action="{{url('admin/recruit/'.$id)}}" @else action="{{url('admin/recruit')}}" @endif   method="POST" enctype="multipart/form-data">

                         @if(isset($id))

                             {{ method_field("PUT") }}

                         @endif

                         {{ csrf_field() }}

                        <div class="form-group">
                            <label class="col-md-2 control-label">招聘标题</label>
                            <input type="text" class="form-control" id="title" name="title" placeholder="请输入招聘标题" value="@if(isset($data->title)){{old('title', $data->title)}}@else{{old('title')}}@endif">
                        </div>

                             <div class="form-group">
                                 <label class="col-md-2 control-label">招聘地址</label>
                                 <input type="text" class="form-control" id="address" name="address" placeholder="请输入招聘地址" value="@if(isset($data->address)){{old('address', $data->address)}}@else{{old('address')}}@endif">
                             </div>

                             <div class="form-group">
                                 <label class="col-md-2 control-label">招聘人数</label>
                                 <input type="number" class="form-control" id="number" name="number" placeholder="请输入招聘人数" value="@if(isset($data->number)){{old('number', $data->number)}}@else{{old('number')}}@endif">
                             </div>

                             <div class="form-group">
                                 <label class="col-md-2 control-label">薪资待遇</label>
                                 <input type="text" class="form-control" id="salary" name="salary" placeholder="请输入薪资待遇" value="@if(isset($data->salary)){{old('salary', $data->salary)}}@else{{old('salary')}}@endif">
                             </div>


                        <div class="form-group">

                                <textarea id="textarea139"  class="form-control" style="height: 800px;" name="content"> @if(isset($id)) {!! $data->content !!} @else {{old('content')}} @endif </textarea>

                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">专题状态</label>
                            <input type="radio" id="state" name="state" value="-1"  @if(isset($data->state)&&$data->state==-1) checked @endif>
                            <label for="state">&nbsp;&nbsp;&nbsp;待审核</label>
                            <input type="radio" id="state_1" style="margin-left: 30px;" name="state" value="1"  @if(isset($data->state)&&$data->state==1) checked @elseif(!isset($data->state)) checked @endif>
                            <label for="state_1">&nbsp;&nbsp;&nbsp;发布</label>
                        </div>

                        <div class="panel-footer">
                            <button type="submit" class="btn btn-primary save">

                                 @if(isset($id)) 编辑招聘信息 @else 新增招聘信息 @endif

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