@extends('voyager::master')
@section('page_title',Voyager::setting('admin_title') . " - 子栏目设置")
@section('page_header')
    <h1 class="page-title">
        <i class="voyager-crop"></i> {{$name}} <span><i class="voyager-double-right"></i> 子栏目</span>
        <a href="{{url('admin/column-son/create')}}" class="btn btn-success">
            <i class="voyager-plus"></i> 新增栏目
        </a>
        <a href="{{url('admin/column')}}" class="btn btn-info" style="margin-left: 40px;">
             返回上级
        </a>
    </h1>
@stop

@section('content')

    <div class="page-content container-fluid">
        <div class="alerts"></div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-bordered">
                    <div class="panel-body table-responsive">
                        <table id="dataTable" class="table table-hover dataTable no-footer" role="grid" aria-describedby="dataTable_info">
                            <thead>
                            <tr role="row">
                                <th>ID</th>
                                <th>栏目名称</th>
                                <th>是否显示</th>
                                <th>打开窗口</th>
                                <th>连接类型</th>
                                <th>排序</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                                    @foreach($data as $v => $n)

                                        <tr>
                                            <td>{{$n->id}}</td>
                                            <td>{{$n->name}}</td>
                                            <td>
                                                @if($n->navigation == 1)

                                                        是
                                                 @else

                                                      否

                                                @endif
                                            </td>
                                            <td>
                                                @if($n->target == 1)

                                                    是
                                                @else

                                                    否

                                                @endif
                                            </td>
                                            <td>
                                                @if($n->url_status == 1)

                                                    内部连接
                                                @else

                                                    外部连接

                                                @endif
                                            </td>
                                            <td>{{$n->sort}}</td>
                                            <td>
                                                <div class="bread_actions">

                                                        <a href="{{url('admin/column-son/'.$n->id.'/edit')}}"
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
                        <i class="voyager-trash"></i> 确定要删除此项吗？
                    </h4>
                </div>
                <div class="modal-body">
                      <p>如果删除此项栏目，将会删除此项栏目</p>
                </div>
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
    <script>
        $('#dataTable').DataTable({!! json_encode(array_merge([ "order" => [],"language" => __('voyager.datatable'),],config('voyager.dashboard.data_tables', [])), true) !!});
        $('.delete').click(function (e) {
            var id = $(e.target).data('id');
            $('#delete_form').attr('action','{{url('admin/column')}}/'+id);
            $('#delete_modal').modal('show');
        })
    </script>

    @stop