@extends('voyager::master')
@section('page_title',Voyager::setting('admin_title') . " - 步骤流程")
@section('page_header')
    <h1 class="page-title">
        <i class="voyager-pie-chart"></i> 步骤流程
        <a href="{{url('admin/step/create')}}" class="btn btn-success">
            <i class="voyager-plus"></i> 新增步骤
        </a>
    </h1>

    {{--<link rel="stylesheet" type="text/css" href="/step/css/index-debug.css">--}}
    {{--<link rel="stylesheet" type="text/css" href="/step/css/index.css">--}}
    {{--<link rel="stylesheet" type="text/css" href="/step/css/jquery.step.css">--}}
@stop

@section('content')

    <div class="container-fluid">
        <div class="alerts"></div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-bordered">
                    <div class="panel-body table-responsive">

                            {{--<div class="step-content"  id="myStep">--}}
                                {{--<div class="step-list">--}}
                                    {{--<div class="intro-flow">--}}

                                        {{--@foreach($data as $v => $n)--}}

                                            {{--<div class="intro-list">--}}
                                                {{--<div class="intro-list-left" style="font-size: 17px;">--}}
                                                    {{--<p style="color: {{$n->color}};font-weight: 800">  {{$n->title}}</p>--}}
                                                {{--</div>--}}
                                                {{--<div class="intro-list-right">--}}
                                                    {{--<span><i class="{{$n->icon}}"></i></span>--}}
                                                    {{--<a href="{{url('admin/step/'.$n->id.'/edit')}}" class="intro-list-content" style="font-size: 14px;background-color: {{$n->color}};border: none;color: #fff;width: 300px;">--}}
                                                        {{--{{$n->describe}}--}}
                                                    {{--</a>--}}
                                                {{--</div>--}}
                                            {{--</div>--}}

                                        {{--@endforeach--}}

                                    {{--</div>--}}
                                {{--</div>--}}


                            {{--</div>--}}


                        <table id="dataTable" class="table table-hover dataTable no-footer" role="grid" aria-describedby="dataTable_info">
                            <thead>
                            <tr role="row">
                                <th>标题</th>
                                <th>描述</th>
                                <th>字体图表</th>
                                <th>背景颜色</th>
                                <th>连接地址</th>
                                <th>排序</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                                @foreach($data as $v => $n)

                                    <tr>
                                        <td>{{$n->title}}</td>
                                        <td>{{$n->describe}}</td>
                                        <td>{{$n->icon}}</td>
                                        <td>{{$n->color}}</td>
                                        <td>{{$n->href}}</td>
                                        <td>{{$n->sort}}</td>
                                        <td>
                                            <div class="bread_actions">

                                                <a href="{{url('admin/step/'.$n->id.'/edit')}}"
                                                   class="btn-sm btn-warning browse_bread">
                                                    <i class="voyager-edit"></i> 编辑
                                                </a>
                                                <div class="btn-sm btn-danger delete" style="display:inline" data-id="{{ $n->id }}">
                                                    <i class="voyager-trash"></i> 删除
                                                </div>

                                            </div>
                                        </td>
                                    </tr>

                                    @endforeach
                            </tbody>
                        </table>

                    </div>
                </div>

            </div>
        </div>
    </div>


    <div class="modal modal-danger fade" tabindex="-1" id="delete_modal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title">
                        <i class="voyager-trash"></i> 确定要删除此步骤吗？
                    </h4>
                </div>
                <div class="modal-body"></div>
                <div class="modal-footer">
                    <form action="" id="delete_form" method="POST">
                        {{ method_field("DELETE") }}
                        {{ csrf_field() }}
                        <input type="submit" class="btn btn-danger pull-right delete-confirm" value="删除">
                    </form>
                    <button type="button" class="btn btn-default pull-right" data-dismiss="modal">取消</button>
                </div>
            </div>
        </div>
    </div>






@endsection


@section('javascript')
    {{--<script src="/step/js/jquery.step.js"></script>--}}
    <script>
        $('#dataTable').DataTable({!! json_encode(array_merge([ "order" => [],"language" => __('voyager.datatable'),],config('voyager.dashboard.data_tables', [])), true) !!});
        $('.delete').click(function (e) {
            var id = $(e.target).data('id');
            $('#delete_form').attr('action','{{url('admin/step')}}/'+id);
            $('#delete_modal').modal('show');
        })



//        var step= $("#myStep").step({
//            animate:true,
//            initStep:1,
//            speed:1000
//        });
//
//
//        $("#preBtn").click(function(event) {
//            var yes=step.preStep();
//
//        });
//        $("#applyBtn").click(function(event) {
//            var yes=step.nextStep();
//
//        });
//        $("#submitBtn").click(function(event) {
//            var yes=step.nextStep();
//
//
//        });
//        $("#goBtn").click(function(event) {
//            var yes=step.goStep(3);
//
//        });
    </script>

@stop