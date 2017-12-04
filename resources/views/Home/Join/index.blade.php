@extends('HomeLayout.layout')
@section('title',$nav['name'])
@section('description',$nav['seo_keyword'])
@section('keywords',$nav['seo_description'])

@section('main')
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

                {{--步骤S--}}
                <div class="purchase-process-intro summary-body  text-center">
                    <div class="container">
                        <h3 class='invisible' data-plugin="appear" data-animate="slide-bottom" data-repeat="false">只需 <span class='red-600' style='position:relative;'>{{count($step)}}</span> 步</h3>
                        {{--<p class="animation-delay-500 invisible desc" data-plugin="appear" data-animate="fade" data-repeat="false">「极」速开通，即刻拥有</p>--}}
                        <br>
                        <ul class="purchase-process timeline timeline-icon">
                            @foreach($step as $k => $v)
                                @if($k%2==0)
                                    <li class="timeline-item" style="">
                                        <a href="{{$v['href']}}">
                                            <div class="timeline-dot invisible animation-delay-400" style="background-color:{{$v['color']}};!important; " data-plugin="appear" data-animate="scale-down" data-repeat="false"> <i class="{{$v['icon']}}" aria-hidden="true"></i>
                                            </div>
                                            <div class="timeline-content invisible animation-delay-600" data-plugin="appear" data-animate="slide-right10" data-repeat="false">
                                                <div role="alert" style="background-color: {{$v['color']}};border: {{$v['color']}}" class="alert dark alert-primary alert-avatar alert-dismissible">
                                                    <span class="avatar blue-600" style="color:{{$v['color']}} !important;background-color: #fff;border-radius: 1000px;height: 40px;background: #fff;text-align: center;line-height: 40px;">{{$k+1}}</span>
                                                    <h4>{{$v['title']}}</h4>
                                                    <p>{{$v['describe']}}</p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                @else
                                    <li class="timeline-item timeline-reverse" style="">
                                        <a href="{{$v['href']}}">
                                            <div class="timeline-dot invisible animation-delay-400" style="background-color:{{$v['color']}};!important; " data-plugin="appear" data-animate="scale-down" data-repeat="false"> <i class="{{$v['icon']}}" aria-hidden="true"></i>
                                            </div>
                                            <div class="timeline-content invisible animation-delay-600" data-plugin="appear" data-animate="slide-right10" data-repeat="false">
                                                <div role="alert" style="background-color: {{$v['color']}};border: {{$v['color']}}" class="alert dark alert-primary alert-avatar alert-dismissible">
                                                    <span class="avatar blue-600" style="color:{{$v['color']}} !important;background-color: #fff;border-radius: 1000px;height: 40px;background: #fff;text-align: center;line-height: 40px;">{{$k+1}}</span>
                                                    <h4>{{$v['title']}}</h4>
                                                    <p>{{$v['describe']}}</p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                @endif
                            @endforeach

                        </ul>
                    </div>
                </div>
                {{--步骤E--}}
            </div>
        </div>
    </section>

@endsection