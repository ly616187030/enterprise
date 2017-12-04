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
                        <form method="get" class="page-search-form" role="search" action="{{url($nav['url'])}}">
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
        <div class="met-banner " data-height='300||'>
            <div class="slick-slide">
                <img class="cover-image" src="{{asset($nav['header_pic'])}}" srcset='{{asset($nav['header_pic'])}}?&x=767 500w,{{asset($nav['header_pic'])}}' sizes="(max-width: 767px) 500px" alt="">
                <div class="banner-text p-5">
                    <div class='container'>
                        <div class='banner-text-con'>
                            <h1 style="color:#fff;">{{$nav['name']}}</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <section class="met-news animsition ">
            <div class="container">
                <div class="row">
                    <div class="col-md-9 met-news-body">
                        <div class="row">
                            <div class="met-news-list">
                                @if(count($ne)==0)
                                    <div class="bg-white height-400 padding-top-50 text-center">
                                        <h1 class="page-search-title">
                                            暂时没有内容…
                                        </h1>
                                    </div>
                                @else
                                    <ul class="met-page-ajax" data-scale='0.625'>
                                        @foreach($ne as $v)
                                            <li class="">
                                                <div class="media media-lg">
                                                    <div class="media-left">
                                                        <a href="{{url('new/shown/'.$v['id'])}}" title="{{$v['title']}}" target='_self'>
                                                            <img class="media-object" src="{{asset($v['img'])}}" style='height:150px;' alt="{{$v['title']}}">
                                                        </a>
                                                    </div>
                                                    <div class="media-body">
                                                        <h4 class="media-heading">
                                                            <a href="{{url('new/shown/'.$v['id'])}}" title="{{$v['title']}}" target='_self'>
                                                                {{$v['title']}}
                                                            </a>
                                                        </h4>
                                                        <a href="{{url('service/shown/'.$v['id'])}}" title="{{$v['title']}}" target='_self'>
                                                        <p class="des">{{mb_substr($v['dec'],0,45,'utf8').'...'}}</p>
                                                        <p class="info">
                                                            <span>{{mb_substr($v['release_time'],0,10,'utf8')}}</span>
                                                            <span>{{$v['people']}}</span>
                                                            <span><i class="icon wb-eye margin-right-5" aria-hidden="true"></i>{{$v['preview_quantity']}}</span>
                                                        </p>
                                                        </a>
                                                    </div>
                                                </div>
                                            </li>
                                        @endforeach
                                    </ul>
                                @endif
                                {{ $ne ->links() }}
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="row">
                            <div class="met-news-bar">
                                <form method="get" action="{{url($nav['url'])}}">
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
                                        <li><a href="{{$v['url_status']==1?url($v['url'].'/'.$v['id']):$v['link']}}" target="{{$v['target']==1?'_blank':'_self'}}" title="{{$v['name']}}" >{{$v['name']}}</a></li>
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
