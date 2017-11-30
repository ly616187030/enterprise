@extends('HomeLayout.layout')
@section('title',$nav['name'])
@section('description',$nav['seo_keyword'])
@section('keywords',$nav['seo_description'])

@section('main')

    <div class="met-banner " data-height='300||'>
        <div class="slick-slide">
            <img class="cover-image" src="{{asset($nav['header_pic'])}}" height="300" alt="">
            <div class="banner-text p-5">
                <div class='container'>
                    <div class='banner-text-con'>
                        <div>
                            @if(count($teams) > 0)
                            <h1 style="color:#fff;">{{$teams->name}}</h1>
                                @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="met-column-nav">
        <div class="container">
            <div class="row">

                <div class="col-md-12 sidebar_tile overflow-visible">
                    <ul class="met-column-nav-ul">


                        <li class="dropdown">

                            <a href="{{$nav['url_status']==1?url($nav['url']):$nav['link']}}" target="{{$nav['target']==1?'_blank':'_self'}}" title="{{$nav['name']}}" class="dropdown-toggle link active" data-toggle="dropdown">
                                {{$nav['name']}} <span class="caret"></span>
                            </a>

                            <ul class="dropdown-menu bullet">

                                @foreach($nav['child'] as $v)

                                    <li> <a href="{{$v['url_status']==1?url($v['url'].'/'.$v['id']):$v['link']}}" target="{{$v['target']==1?'_blank':'_self'}}" title="{{$v['name']}}" class="link">{{$v['name']}}</a></li>

                                @endforeach

                            </ul>

                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
    @if(count($teams) > 0)
    <section class="met-show animsition">
        <div class="container">
            <div class="row">
                <div class="met-editor lazyload clearfix"><div class="editorlightgallery">
                        <div><p><img class="imgloading" height="200" data-original="{{'/'.$teams->img}}" title="{{$teams->name}}" alt="{{$teams->name}}" style="float: left; display: block;" src="{{'/'.$teams->img}}"></p><div id="teambody" style="color: rgb(34, 34, 34); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, Roboto, Arial, sans-serif; font-size: 18px; white-space: normal; padding: 0px; margin: 0px 0px 0px 550px;"><div class="theader" style="padding: 0px; margin: 0px;"><p class="title" style="margin-bottom: 0px; padding: 0px; color: rgb(52, 52, 52); font-size: 30px;">{{$teams->name}}</p><p class="subtitle" style="margin-bottom: 0px; padding: 0px; color: rgb(98, 98, 98);"><span style="font-size: 14px;"><span style="color: rgb(106, 106, 106); font-family: Arial, 微软雅黑; font-size: 13px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{$teams->introduction}}</span></span></p><div class="postbody" style="padding: 0px; margin: 36px 0px 0px; line-height: 24px; font-size: 13px; color: rgb(106, 106, 106);"><hr style="height: 1px; margin: 22px 0px; border-right-width: initial; border-style: dotted none none; border-bottom-width: initial; border-left-width: initial; border-top-color: rgb(211, 211, 211); padding: 0px; font-family: Arial, 微软雅黑;"><p style="margin-bottom: 0px; padding: 0px; word-wrap: break-word; word-break: normal; font-family: Arial, 微软雅黑;">{!! $teams->content !!}</p><p style="margin-bottom: 0px; padding: 0px; word-wrap: break-word; word-break: normal; font-family: Arial, 微软雅黑;"><br style="padding: 0px; margin: 0px;"></p></div></div></div><p><br></p></div>
                    </div></div>
            </div>
        </div>
    </section>
    @endif




@stop