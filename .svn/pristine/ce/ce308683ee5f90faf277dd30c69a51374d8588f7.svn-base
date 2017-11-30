@extends('HomeLayout.layout')
@section('title',$nav['name'])
@section('description',$nav['seo_keyword'])
@section('keywords',$nav['seo_description'])

@section('main')
    <div class="met-banner " data-height='300||'>
        <div class="slick-slide">
            <img class="cover-image" src="{{asset($nav['header_pic'])}}" srcset='{{asset($nav['header_pic'])}}&x=767 500w,{{asset($nav['header_pic'])}}' sizes="(max-width: 767px) 500px" alt="">
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

    <section class="met-news animsition ">
        <div class="container">
            <div class="row">
                <ul class="service_list blocks-100 blocks-sm-2 blocks-md-3 blocks-xlg-3  clearfix">
                    @foreach($nav['child'] as $v)
                    <li class="service_item">
                        <a href="{{$v['url_status']==1?url($v['url'].'/'.$v['id']):$v['link']}}" target="{{$v['target']==1?'_blank':'_self'}}" title="{{$v['name']}}" target='_self'>
                            <img src="{{asset($v['imgg'])}}" alt="{{$v['name']}}">
                            <h4>{{$v['name']}}</h4>
                            <p>{{$v['title_description']}}</p>
                        </a>
                    </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </section>
@stop
