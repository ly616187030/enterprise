@extends('HomeLayout.layout')
@section('title',$nav['name'])
@section('description',$nav['seo_keyword'])
@section('keywords',$nav['seo_description'])

@section('main')
    @if($content!='')
        <section class="met-search animsition">
            <div class="container">
                <div class="row">
                    <div class="met-search-body">
                        <form method="get" class="page-search-form" role="search" action="{{url($nav['url'].'/'.$id)}}">
                            <div class="input-search input-search-dark">
                                <button type="submit" class="input-search-btn"><i class="icon wb-search" aria-hidden="true"></i></button>
                                <input type="text" class="form-control input-lg" name="content" value="{{$content}}" placeholder="请输入搜索关键词！" data-fv-notempty="true" data-fv-message="不能为空">
                            </div>
                        </form>
                        @if(count($nec)==0)
                            <h1 class="page-search-title">
                                没有含有 "{{$content}}" 的信息内容
                            </h1>
                        @else
                            <ul class="list-group list-group-full list-group-dividered met-page-ajax">
                                @foreach($nec as $v)
                                    <li class="list-group-item">
                                        <h4>
                                            <a href="{{url('new/shown/'.$v['id'])}}">
                                                {{$v['title']}}
                                            </a>
                                        </h4>
                                        <a class="search-result-link" href="{{url('new/shown/'.$v['id'])}}">{{url('new/shown/'.$v['id'])}}
                                        </a>
                                        <p>{{mb_substr($v['dec'],0,70,'utf8').'...'}}</p>
                                    </li>
                                @endforeach
                            </ul>
                        @endif
                        {{ $nec->appends(['content' => $content])->links() }}
                    </div>
                </div>
            </div>
        </section>
        @else
    <section class="met-shownews animsition">
        <div class="container">
            <div class="row">
                <div class="col-md-9 met-shownews-body">
                    <div class="row">
                        <div class="met-shownews-header">
                            <h1>{{$ne['title']}}</h1>
                            <div class="info">
							<span>
								{{mb_substr($ne['release_time'],0,10,'utf8')}}
							</span>
                                <span>
								{{$ne['people']}}
							</span>
                                <span>
								<i class="icon wb-eye margin-right-5" aria-hidden="true"></i>{{$ne['preview_quantity']}}
							</span>
                            </div>
                        </div>
                        <div class="met-editor lazyload clearfix">
                            <div>
                                {!!$ne['content']!!}
                                <div id="metinfo_additional"></div>
                            </div>
                            <div class="center-block met_tools_code"></div>
                        </div>
                        <div class="met-shownews-footer">

                            <ul class="pager pager-round">
                                <li class="previous ">
                                    <a href="@if(count($nepre)==0)javascript:void(0);@else{{url('new/shown/'.$nepre['id'])}}@endif" title="baubaus访谈专辑第十五期 – 华黎">
                                        上一篇
                                        <span aria-hidden="true" class='hidden-xs'>：@if(count($nepre)==0)已经是第一篇@else{{$nepre['title']}}@endif</span>
                                    </a>
                                </li>
                                <li class="next ">
                                    <a href="@if(count($nenext)==0)javascript:void(0);@else{{url('new/shown/'.$nenext['id'])}}@endif" title="baubaus book x nendo创始人佐藤大的设计哲学">
                                        下一篇
                                        <span aria-hidden="true" class='hidden-xs'>：@if(count($nenext)==0)已经是最后一篇@else{{$nenext['title']}}@endif</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="row">
                        <div class="met-news-bar">
                            <form method="get" action="{{url($nav['url'].'/shown',$id)}}">
                                <div class="form-group">
                                    <div class="input-search">
                                        <button type="submit" class="input-search-btn"><i class="icon wb-search" aria-hidden="true"></i></button>
                                        <input type="text" class="form-control" name="content" value="{{$content}}" placeholder="Search">
                                    </div>
                                </div>
                            </form>
                            <div class="recommend news-list-md">
                                <h3>为您推荐</h3>
                                <ul class="list-group list-group-bordered">
                                    @foreach($tuijian as $v)
                                        <li class="list-group-item"><a href="{{url('new/shown/'.$v['id'])}}" title="{{$v['title']}}" target='_self'>{{$v['title']}}</a></li>
                                    @endforeach
                                </ul>
                            </div>

                            <ul class="column">
                                <li><a href="{{$nav['url_status']==1?url($nav['url']):$nav['link']}}" target="{{$nav['target']==1?'_blank':'_self'}}" title="{{$nav['name']}}">{{$nav['name']}}</a></li>
                                @foreach($nav['child'] as $v)
                                    <li><a href="{{$v['url_status']==1?url($v['url'].'/'.$v['id']):$v['link']}}" target="{{$v['target']==1?'_blank':'_self'}}" title="{{$v['name']}}" @if($ne['pid'] ==$v['id'] ) class="active" @endif >{{$v['name']}}</a></li>
                                @endforeach
                            </ul>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
    @endif
@stop
