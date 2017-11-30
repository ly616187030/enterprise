@extends('voyager::master')


 @if(isset($id))

        @section('page_title',Voyager::setting('admin_title') . " - 编辑人员")

@else

    @section('page_title',Voyager::setting('admin_title') . " - 新增人员")

@endif



@section('page_header')
    <h1 class="page-title">
        <i class="voyager-beer"></i> @if(isset($id)) 编辑人员 @else 新增人员@endif
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

                     <form role="form" class="form-edit-add"  @if(isset($id)) action="{{url('admin/team/'.$id)}}" @else action="{{url('admin/team')}}" @endif   method="POST" enctype="multipart/form-data">

                         @if(isset($id))

                             {{ method_field("PUT") }}

                         @endif

                         {{ csrf_field() }}

                        <div class="form-group">
                            <label class="col-md-2 control-label">选择人员</label>
                            <select class="form-control" name="pid" id="pid">
                                <option value="">请选择人员</option>
                                @foreach($nav as $v => $n)
                                    <option value="{{$n->id}}" @if(isset($data->pid)&&$data->pid==$n->id) selected @endif  >{{$n->name}}</option>

                                @endforeach

                            </select>

                            <input type="hidden" name="name" value="@if(isset($data->name)){{old('name', $data->name)}}@endif">
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">简短描述</label>
                            <textarea class="form-control"  name="introduction" id="introduction" placeholder="请输入简短描述">@if(isset($data->introduction)){{old('introduction', $data->introduction)}}@else{{old('introduction')}}@endif</textarea>
                        </div>

                        <div class="form-group">

                            <div class="form-group">
                                <label  class="col-md-8 control-label" for="header_pic">人物封面图  &nbsp;&nbsp;&nbsp;  <code>提示：禁止上传带中文名称图片，最大限1M 图片像素：420 x 460</code></label>
                                <input type="file" class="dropify"  id="img" data-max-file-size="2M" name="img" data-default-file="@if(isset($data->img)){{asset($data->img)}}@endif"  value="">
                            </div>

                        </div>

                        <div class="form-group">

                                <textarea id="textarea139"  class="form-control" style="height: 800px;" name="content"> @if(isset($id)) {!! $data->content !!} @else {{old('content')}} @endif </textarea>

                        </div>

                             <div class="form-group">
                                 <label class="col-md-2 control-label">人员状态</label>
                                 <input type="radio" id="state" name="state" value="-1"  @if(isset($data->state)&&$data->state==-1) checked @endif>
                                 <label for="state">&nbsp;&nbsp;&nbsp;隐藏</label>
                                 <input type="radio" id="state_1" style="margin-left: 30px;" name="state" value="1"  @if(isset($data->state)&&$data->state==1) checked @elseif(!isset($data->state)) checked @endif>
                                 <label for="state_1">&nbsp;&nbsp;&nbsp;显示</label>
                             </div>

                        <div class="panel-footer">
                            <button type="submit" class="btn btn-primary save">

                                 @if(isset($id)) 编辑人员 @else 新增人员 @endif

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