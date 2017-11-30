@extends('voyager::master')
@section('page_title',Voyager::setting('admin_title') . " - 商品设置")
@section('page_header')
    <h1 class="page-title">
        <i class="voyager-github"></i> 商品设置
        <a href="{{url('admin/goods/create')}}" class="btn btn-success">
            <i class="voyager-plus"></i> 新增商品
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
                                <th>商品名称</th>
                                <th>品牌</th>
                                <th>产地</th>
                                <th>适用人群</th>
                                <th>香型</th>
                                <th>排序</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>

                            @foreach($data as $v => $n)

                                <tr>
                                    <td>{{$n->id}}</td>
                                    <td>{{$n->goods_name}}</td>
                                    <td>{{$n->brand}}</td>
                                    <td>{{$n->place}}</td>
                                    <td>{{$n->gender}}</td>
                                    <td>{{$n->flavor}}</td>
                                    <td>{{$n->sort}}</td>
                                    <td>
                                        <div class="bread_actions">

                                            <a href="{{url('admin/goods/'.$n->id.'/edit')}}"
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
                        <i class="voyager-trash"></i> 确定要删除商品吗？
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
    <script>
        $('#dataTable').DataTable({!! json_encode(array_merge([ "order" => [],"language" => __('voyager.datatable'),],config('voyager.dashboard.data_tables', [])), true) !!});
        $('.delete').click(function (e) {
            var id = $(e.target).data('id');
            $('#delete_form').attr('action','{{url('admin/goods')}}/'+id);
            $('#delete_modal').modal('show');
        })
    </script>

@stop