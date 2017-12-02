@extends('voyager::master')
@section('page_title',Voyager::setting('admin_title') . " - 咨询中心")
@section('page_header')
    <h1 class="page-title">
        <i class="voyager-paw"></i> 咨询中心
        @if($role['add_'.$dataType] == true)
        <a href="{{url('admin/news/create')}}" class="btn btn-success">
            <i class="voyager-plus"></i> 新增咨询
        </a>
        @endif
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
                                <th>标题</th>
                                <th>发布人</th>
                                <th>浏览量</th>
                                <th>排序</th>
                                <th>状态</th>
                                @if($role['edit_'.$dataType] == true || $role['delete_'.$dataType] == true)
                                <th>操作</th>
                                    @endif
                            </tr>
                            </thead>
                            <tbody>
                                   @foreach($data as $v => $n)

                                       <tr>
                                           <td>{{$n->id}}</td>
                                           <td>{{$n->title}}</td>
                                           <td>{{$n->people}}</td>
                                           <td>{{$n->preview_quantity	}}</td>
                                           <td>{{$n->sort}}</td>
                                           <td>
                                               @if($n->state == 1)
                                                   发布

                                                   @else
                                                   待审核
                                               @endif
                                           </td>
                                           @if($role['edit_'.$dataType] == true || $role['delete_'.$dataType] == true)
                                               <td>
                                               <div class="bread_actions">
                                                   @if($role['edit_'.$dataType] == true)
                                                   <a href="{{url('admin/news/'.$n->id.'/edit')}}"
                                                      class="btn-sm btn-warning browse_bread">
                                                       <i class="voyager-edit"></i> 编辑
                                                   </a>
                                                   @endif
                                                   @if($role['delete_'.$dataType] == true)
                                                   <div class="btn-sm btn-danger delete" style="display:inline" data-id="{{ $n->id }}">
                                                       <i class="voyager-trash"></i> 删除
                                                   </div>
                                                       @endif
                                               </div>
                                           </td>
                                           @endif
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
                        <i class="voyager-trash"></i> 确定要删除此新闻吗？
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
            $('#delete_form').attr('action','{{url('admin/news')}}/'+id);
            $('#delete_modal').modal('show');
        })
    </script>

@stop