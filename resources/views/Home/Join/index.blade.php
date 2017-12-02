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
                        <h1 style="color:#fff;">{{$nav['name']}}</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="met-show animsition">
        <div class="container">
            <div class="row">

                <div class="met-editor lazyload clearfix">
                    <div>
                        <div>
                            <p><br/></p>
                            <p style="white-space: normal; line-height: normal;"><span style="font-size: 13px; color: rgb(89, 89, 89);">{!! $con['content'] !!}</span></p>
                            <hr style="height: 1px; margin-right: 0px; margin-left: 0px; border-right-width: initial; border-style: dotted none none; border-bottom-width: initial; border-left-width: initial; border-top-color: rgb(211, 211, 211); white-space: normal; padding: 0px; color: rgb(106, 106, 106); font-family: Arial, 微软雅黑; font-size: 13px;"/>
                        </div>
                        <p><br/></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection