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
                            <h1 style="color:#fff;">{{$nav['name']}}</h1>
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

    <section class="met-show animsition">
        <div class="container">
            <div class="row">

                <ul class="team_list blocks-100 blocks-sm-2 blocks-md-3 blocks-xlg-3  clearfix">

                    @foreach($teams as $v => $n)
                        <li class="team_item">
                            <a href="{{url('teams',$n->pid)}}" title="{{$n->name}}" target="_self">
                                <div class="team_img">
                                    <img src="{{$n->img}}" alt="{{$n->name}}">
                                </div>
                                <div class="wrap">
                                    <div><span class="h"></span><span class="v"></span></div>
                                </div>
                            </a>
                            <div class="team_info">
                                <p class="title">{{$n->name}}</p>
                                <p class="subtitle">{{$n->introduction}}</p>
                                <p class="desc">他追求精致、洗炼的造型达到极致。不只是建筑本身，其它如对美术品的安放、收藏环境等，他都下了相当的功夫。</p>
                            </div>
                        </li>
                    @endforeach
                </ul>
                <div class="met-editor lazyload clearfix">
                    <div></div>
                </div>
            </div>
        </div>
    </section>





    @stop