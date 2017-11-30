@extends('voyager::master')
@section('page_title',Voyager::setting('admin_title') . " - 在线招聘")
@section('page_header')
    <h1 class="page-title">
        <i class="voyager-thumbs-up"></i> 在线招聘
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
                                <th>姓名</th>
                                <th>性别</th>
                                <th>出生日期</th>
                                <th>联系电话</th>
                                <th>Email</th>
                                <th>学历</th>
                                <th>求职日期</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                                @foreach($data as $v => $n)

                                    <tr>
                                        <td>{{$n->name}}</td>
                                        <td>
                                            @if($n->gender == 1)
                                                男

                                            @else

                                                女

                                            @endif
                                        </td>
                                        <td>{{$n->birth_time}}</td>
                                        <td>{{$n->telephone}}</td>
                                        <td>{{$n->email}}</td>
                                        <td>{{$n->education}}</td>
                                        <td>{{$n->qz_date}}</td>
                                        <td>
                                            <div class="bread_actions">

                                                <a href="javascript:;"
                                                   class="btn-sm btn-info browse_bread" data-id="{{$n->id}}">
                                                    <i class="voyager-eye"></i> 查看
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
    @foreach($data as $v => $n)
    <div class="modal modal-info fade" tabindex="-1" id="eye_modal_{{$n->id}}" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title">
                        <i class="voyager-eye"></i> 详细信息
                    </h4>
                </div>
                <div class="modal-body">
                    <table class="table table-hover dataTable no-footer" >
                        <thead>
                            <tr>
                                <th>姓名</th>
                                <th>性别</th>
                                <th>出生日期</th>
                                <th>籍贯</th>
                            </tr>
                        </thead>
                        <tbody>

                            <tr>
                                <td>{{$n->name}}</td>
                                <td>
                                    @if($n->gender == 1)
                                        男

                                    @else

                                        女

                                    @endif
                                </td>
                                <td>{{$n->birth_time}}</td>
                                <td>{{$n->origin}}</td>
                            </tr>
                        </tbody>
                        <thead>
                        <tr>
                            <th>联系电话</th>
                            <th>邮编</th>
                            <th>邮箱</th>
                            <th>学历</th>
                        </tr>
                        </thead>
                        <tbody>

                        <tr>
                            <td>{{$n->telephone}}</td>
                            <td>{{$n->zip_code}}</td>
                            <td>{{$n->email}}</td>
                            <td>{{$n->education}}</td>
                        </tr>
                        </tbody>
                        <thead>
                        <tr>
                            <th>专业</th>
                            <th>学校</th>
                            <th colspan="2">通信地址</th>
                        </tr>
                        </thead>
                        <tbody>

                        <tr>
                            <td>{{$n->major}}</td>
                            <td>{{$n->school}}</td>
                            <td colspan="2">{{$n->address}}</td>
                        </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th colspan="4">所获奖项</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td colspan="4">{{$n->awards}}</td>
                            </tr>
                        </tbody>
                        <thead>
                        <tr>
                            <th colspan="4">工作经历</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td colspan="4">{{$n->experience}}</td>
                        </tr>
                        </tbody>
                        <thead>
                        <tr>
                            <th colspan="4">业余爱好</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td colspan="4">{{$n->hobby}}</td>
                        </tr>
                        </tbody>
                        <thead>
                        <tr>
                            <th colspan="4">所获奖项</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td colspan="4">{{$n->awards}}</td>
                        </tr>
                        </tbody>
                        <thead>
                        <tr>
                            <th colspan="4">求职时间</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td colspan="4">{{$n->qz_date}}</td>
                        </tr>
                        </tbody>
                    </table>
                    
                    <img src="{{$n->img}}" style="width: 300px;height: 300px;">

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-right" data-dismiss="modal">取消</button>
                </div>
            </div>
        </div>
    </div>
    @endforeach

    <div class="modal modal-danger fade" tabindex="-1" id="delete_modal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title">
                        <i class="voyager-trash"></i> 确定要删除此求职信息吗？
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
            $('#delete_form').attr('action','{{url('admin/personnel')}}/'+id);
            $('#delete_modal').modal('show');
        })
        $('.browse_bread').click(function () {
            var id = $(this).data('id');
            $('#eye_modal_'+id).modal('show');
        })
    </script>

@stop