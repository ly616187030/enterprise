@extends('voyager::master')


 @if(isset($id))

        @section('page_title',Voyager::setting('admin_title') . " - 编辑商品")

@else

    @section('page_title',Voyager::setting('admin_title') . " - 新增商品")

@endif



@section('page_header')
    <h1 class="page-title">
        <i class="voyager-github"></i> @if(isset($id)) 编辑商品 @else 新增商品 @endif
    </h1>

    <link rel="stylesheet" type="text/css" href="{{ asset('dropzone/dist/dropzone.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('wangEditor-2.1.22/dist/css/wangEditor.min.css') }}">
@stop

@section('content')

    <div class="page-content edit-add container-fluid">
        <div class="row">
            <div class="col-md-12">

                <div class="panel panel-bordered">

                    <div class="panel-body">

                        @include('admin.error')

                     <form role="form" class="form-edit-add"  @if(isset($id)) action="{{url('admin/goods/'.$id)}}" @else action="{{url('admin/goods')}}" @endif   method="POST" enctype="multipart/form-data">

                         @if(isset($id))

                             {{ method_field("PUT") }}

                         @endif

                         {{ csrf_field() }}

                        <div class="form-group">
                            <label class="col-md-2 control-label">选择类型</label>
                            <select class="form-control" name="pid" id="pid">
                                @foreach($nav as $v => $n)

                                    <option value="{{$n->id}}" @if(isset($data->pid)&&$data->pid==$n->id) selected @endif  >{{$n->name}}</option>

                                @endforeach

                            </select>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">商品名称</label>
                            <input type="text" class="form-control" id="goods_name" name="goods_name" placeholder="请输入商品名称" value="@if(isset($data->goods_name)){{old('goods_name', $data->goods_name)}}@else{{old('goods_name')}}@endif">
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">英文名称</label>
                            <input type="text" class="form-control" id="goods_letter" name="goods_letter" placeholder="请输入英文名称" value="@if(isset($data->goods_letter)){{old('goods_letter', $data->goods_letter)}}@else{{old('goods_letter')}}@endif">
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">商品简短描述</label>
                            <textarea placeholder="请输入商品简短描述" id="goods_describe" name="goods_describe" class="form-control">@if(isset($data->goods_describe)){{old('goods_describe', $data->goods_describe)}}@else{{old('goods_describe')}}@endif</textarea>
                        </div>

                         <div class="form-group">
                             <label class="col-md-2 control-label">关键字</label>
                             <input type="text" class="form-control" id="keyword" name="keyword" placeholder="请输入商品关键字" value="@if(isset($data->keyword)){{old('keyword', $data->keyword)}}@else{{old('keyword')}}@endif">
                         </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">商品品牌</label>
                            <input type="text" class="form-control" id="brand" name="brand" placeholder="请输入商品品牌" value="@if(isset($data->brand)){{old('brand', $data->brand)}}@else{{old('brand')}}@endif">
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label">商品重量&nbsp;&nbsp;&nbsp;<code>提示：默认单位（ 克 ）</code></label>
                            <input type="number" class="form-control" id="weight" name="weight" placeholder="请输入商品重量" value="@if(isset($data->weight)){{old('weight', $data->weight)}}@else{{old('weight')}}@endif">
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label">商品香型&nbsp;&nbsp;&nbsp;<code>提示：清香型</code></label>
                            <input type="text" class="form-control" id="flavor" name="flavor" placeholder="请输入商品香型" value="@if(isset($data->flavor)){{old('flavor', $data->flavor)}}@else{{old('flavor')}}@endif">
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">商品产地</label>
                            <input type="text" class="form-control" id="place" name="place" placeholder="请输入商品产地" value="@if(isset($data->place)){{old('place', $data->place)}}@else{{old('place')}}@endif">
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">适用人群</label>
                            <select class="form-control" name="gender" id="gender">
                                <option value="通用" @if(isset($data->gender)&&$data->gender=='通用') selected @endif>通用</option>
                                <option value="男"  @if(isset($data->gender)&&$data->gender=='男') selected @endif>男</option>
                                <option value="女" @if(isset($data->gender)&&$data->gender=='女') selected @endif>女</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <input type="hidden" class="form-control" name="thumb" value="{{old('thumb')}}" >
                            <div id="my-img" class="dropzone dz-clickable">
                                  <div class="dz-default dz-message"><span> @if(isset($data->thumb)) @if(empty($data->thumb)) 禁止上传带中文名称图片，此商品图片为空，请点击上传。<span style="color: red;font-size: 15px;font-weight: bold">上传像素：800 x 500</span>  @else 禁止上传带中文名称图片，此商品图片已存在，如要继续上传将覆盖已有图片 。<span style="color: red;font-size: 15px;font-weight: bold">上传像素：800 x 500</span> @endif  @else @if(old('thumb'))图片已上传 @else 禁止上传带中文名称图片，点击上传商品图片，单次可上传多张。<span style="color: red;font-size: 15px;font-weight: bold">上传像素：800 x 500</span>  @endif @endif</span> </div>
                           </div>
                            @if(isset($id))
                            <button type="button" class="btn btn-info shpt">查看商品图</button>@endif
                        </div>

                        <div class="form-group">

                                <textarea id="textarea139"  class="form-control" style="height: 800px;" name="goods_detail"> @if(isset($id)) {!! $data->goods_detail !!} @else {{old('goods_detail')}} @endif </textarea>

                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">商品排序</label>
                            <input type="number" class="form-control" id="sort" name="sort" placeholder="请输入栏目排序" value="@if(isset($data->sort)){{old('sort', $data->sort)}}@else{{old('sort')}}@endif">
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">商品状态</label>
                            <input type="radio" id="state" name="state" value="-1"  @if(isset($data->state)&&$data->state==-1) checked @endif>
                            <label for="state">&nbsp;&nbsp;&nbsp;待审核</label>
                            <input type="radio" id="state_1" style="margin-left: 30px;" name="state" value="1"  @if(isset($data->state)&&$data->state==1) checked @elseif(!isset($data->state)) checked @endif>
                            <label for="state_1">&nbsp;&nbsp;&nbsp;审核通过</label>
                        </div>

                        <div class="panel-footer">
                            <button type="submit" class="btn btn-primary save">

                                 @if(isset($id)) 编辑商品 @else 新增商品 @endif

                            </button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
    </div>


    @if(isset($id))
        <div class="modal modal-info fade" tabindex="-1" id="delete_modal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title">
                            <i class="voyager-trash"></i> 查看商品图片
                        </h4>
                    </div>
                    <div class="modal-body">

                           @if(!empty($data->img_d))

                               @foreach($data->img_d as $v => $n)

                                   <img src="{{$n}}" style="width: 270px;height: 280px;">

                                   @endforeach

                               @endif

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default pull-right" data-dismiss="modal">取消</button>
                    </div>
                </div>
            </div>
        </div>
    @endif
@endsection


@section('javascript')

    <script src="{{ asset('dropzone/dist/min/dropzone.min.js')}}"></script>

    <script type="text/javascript" src="{{asset('wangEditor-2.1.22/dist/js/wangEditor.min.js')}}"></script>


    <script type="text/javascript">

        var u = [];

        Dropzone.autoDiscover = false;

        var myDropzone = new Dropzone('#my-img',{
            url: "/admin/goods-img",
            addRemoveLinks: true,
            method: 'post',
            filesizeBase: 2024,
            paramName:'url',
            maxThumbnailFilesize:2,
            thumbnailWidth:1500,
            maxFiles:6,
            maxFilesize:0.5,
            dictInvalidFileType:'*.jpg,*.png',
            headers:{
                'X-CSRF-TOKEN':$('meta[name="csrf-token"]').attr('content')
            },
            dictRemoveFile:'移除', init:function(){
                this.on("success", function(file, response) {
                    //console.log("----- " + JSON.stringify(file) + "-------"+JSON.stringify(response));
                    u.push(response);
                    $('input[name="thumb"]').val(u);
                });

                this.on("removedfile", function(file) {
                    delete_img(file.xhr.response);
                });
            }
        });

        function delete_img(vr) {
            $.ajax({
                url:'/admin/goods-delete',
                headers:{ 'X-CSRF-TOKEN':$('meta[name="csrf-token"]').attr('content')},
                type:'POST',
                data:{name:vr},
                success:function(data){
                    if(data == 1){
                        $.each(u,function (index,it) {
                            if(it == vr){
                                u.splice(index,1);$('input[name="thumb"]').val(u);
                            }
                        })
                    }
                }
            });

        }


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


        $('.shpt').click(function () {

            $('#delete_modal').modal('show');


        });


    </script>


    @stop