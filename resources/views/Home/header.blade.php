<nav class="navbar navbar-default met-nav navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="row">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle hamburger hamburger-close collapsed" data-target="#example-navbar-default-collapse" data-toggle="collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="hamburger-bar"></span>
                </button>
                <a href="/" class="navbar-brand navbar-logo vertical-align" title="res017">
                    <div class="vertical-align-middle"><img src="{{asset('storage/'.setting('site.logo'))}}" alt="res017" title="res017" /></div>
                </a>
            </div>
            <div class="collapse navbar-collapse navbar-collapse-toolbar" id="example-navbar-default-collapse">
                <ul class="nav navbar-nav navbar-right navlist">
                    <li><a href="{{url('/')}}" title="首页" class="link @if($active==='index') active @endif">首页</a></li>
                    @if($menus!='')
                    @foreach($menus as $val)
                        @if(empty($val['child']))
                            <li class="margin-left-30"><a href="{{$val['url_status']==1?url($val['url']):$val['link']}}" target="{{$val['target']==1?'_blank':'_self'}}"  title="{{$val['name']}}" class="link @if($val['url']==$active||$val['link']==$active) active @endif animation-zoomIn">{{$val['name']}}</a></li>
                        @else
                            <li class="dropdown margin-left-30">
                                <a class="dropdown-toggle link @if($val['url']==$active||$val['link']==$active) active @endif animation-zoomIn" data-toggle="dropdown" data-hover="dropdown" href="{{$val['url_status']==1?url($val['url']):$val['link']}}" target="{{$val['target']==1?'_blank':'_self'}}" aria-expanded="false" role="button" title="{{$val['name']}}">{{$val['name']}} <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu dropdown-menu-right bullet " role="menu" >
                                    @foreach($val['child'] as $v)
                                        <li class="animation-fade animation-delay-"><a  href="{{$v['url_status']==1?url($v['url'].'/'.$v['id']):$v['link']}}" target="{{$v['target']==1?'_blank':'_self'}}" class=" animation-fade "  title="{{$v['name']}}">{{$v['name']}}</a></li>
                                    @endforeach
                                </ul>
                            </li>
                        @endif
                    @endforeach
                        @endif
                </ul>
            </div>
        </div>
    </div>
</nav>
