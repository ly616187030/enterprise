<div class="met-position  pattern-show">
    <div class="container">
        <div class="row">
            <ol class="breadcrumb">
                <li>
                    <a href="{{url('/')}}" title="首页">
                        <i class="icon wb-home" aria-hidden="true"></i>首页
                    </a>
                </li>
                <li class="dropdown">
                    <a href="{{$nav['url_status']==1?url($nav['url']):$nav['link']}}" target="{{$nav['target']==1?'_blank':'_self'}}" title="{{$nav['name']}}" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">{{$nav['name']}} <i class="caret"></i></a>
                    <ul class="dropdown-menu bullet">
                        <li><a href="{{$nav['url_status']==1?url($nav['url']):$nav['link']}}" target="{{$nav['target']==1?'_blank':'_self'}}"  title="全部">全部</a></li>
                        @foreach($nav['child'] as $v)
                            <li><a href="{{$v['url_status']==1?url($v['url'].'/'.$v['id']):$v['link']}}" target="{{$v['target']==1?'_blank':'_self'}}" title="{{$v['name']}}">{{$v['name']}}</a></li>
                        @endforeach
                    </ul>
                </li>
                <li class="dropdown">
                @foreach($nav['child'] as $v)
                    @if($nav['pid']==$v['id'])
                    <a href="{{$v['url_status']==1?url($v['url'].'/'.$v['id']):$v['link']}}" target="{{$v['target']==1?'_blank':'_self'}}" title="{{$v['name']}}">{{$v['name']}}</a>
                    @endif
                @endforeach
                </li>
            </ol>
        </div>
    </div>
</div>