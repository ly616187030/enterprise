@extends('HomeLayout.layout')
@section('title','首页')
@section('description','描述')
@section('keywords','关键字')

@section('main')
    {{--BANNER S--}}
    <div class="met-banner " data-height='||'>
        @if(count($lunbo)!=0)
        @foreach($lunbo as $v)
            <a href="{{$v['herf']==''?'javascript:void(0);':url($v['herf'])}}" target="_blank">
                <div class="slick-slide">
                    <img class="cover-image" src="{{asset($v['img'])}}" srcset='{{asset($v['img'])}} 500w,{{asset($v['img'])}}' sizes="(max-width: 767px) 500px" alt="">
                </div>
            </a>
        @endforeach
            @endif
    </div>
    {{--BANNER E--}}

    {{--项目案例 S--}}
    @if($anlidata!='')
    <div class="met-index-product met-index-body">
        <div class="container">
            <h3 class="invisible" data-plugin="appear" data-animate="fade" data-repeat="false">{{$anlidata['name']}}</h3>
            <p class="desc invisible animation-delay-100" data-plugin="appear" data-animate="fadeInDown" data-repeat="false">—— {{$anlidata['english']}}——</p>
            <p class="desc invisible animation-delay-200" data-plugin="appear" data-animate="fadeInDown" data-repeat="false">{{$anlidata['title_description']}}</p>
            <div class='invisible animation-delay-300' data-plugin="appear" data-animate="fadeInUp" data-repeat="false">
                <ul class="nav nav-tabs">
                    @foreach($anlidata['child'] as $v)
                        <li>
                            <a href="{{$v['url_status']==1?url($v['url'].'/'.$v['id']):$v['link']}}" target="{{$v['target']==1?'_blank':'_self'}}" title="{{$v['name']}}">{{$v['name']}}</a>
                        </li>
                    @endforeach
                </ul>
            </div>

            <div class="slider index_product animation-delay-400" id="product_list" data-show="2 2 4 4 " data-plugin="appear" data-animate="slide-bottom" data-repeat="false" >
                @foreach($cp as $v)
                <div data-type="list_114" >
                    <div class="widget widget-shadow">
                        <figure class="widget-header cover">
                            <a href="{{url('product/showpro/'.$v['id'])}}" title="{{$v['goods_name']}}" target='_self'>
                                <div class="mask">
                                </div>
                                <img class="img-responsive" alt="{{$v['goods_name']}}" src="{{asset($v['thumb'])}}"/>
                            </a>
                        </figure>
                        <h4 class="widget-title">
                            <a href="{{url($v['id'])}}" title="{{$v['goods_name']}}" target='_self'>{{mb_substr($v['goods_name'],0,15,'utf8')}}</a>
                        </h4>
                    </div>
                </div>
                @endforeach
            <!-- End Example Lazy Loading -->
            </div>
            <a href="{{$anlidata['url_status']==1?url($anlidata['url']):$anlidata['link']}}" target="{{$anlidata['target']==1?'_blank':'_self'}}" class="index_more"></a>
            <a href="{{$anlidata['url_status']==1?url($anlidata['url']):$anlidata['link']}}" target="{{$anlidata['target']==1?'_blank':'_self'}}" class="more">MORE</a>
        </div>
    </div>
    @endif
    {{--项目案例 E--}}

    {{--步骤S--}}
    <div class="purchase-process-intro summary-body bg-blue-grey-100 text-center">
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

    {{--关于我们 S--}}
    @if($gydata!='')
    <div class="met-index-about met-index-body">
        <div class="container ">
            <div class="about_img col-sm-12 col-md-4 col-lg-4 invisible" data-animate="zoomIn" data-plugin="appear" data-repeat="false">
                <img data-original="{{asset($gy['img'])}}" src="{{asset($gy['img'])}}" class="imgload">
            </div>
            <div class="about_cont col-sm-12 col-md-8 col-lg-8">
                <h3 class="invisible" data-plugin="appear" data-animate="fade" data-repeat="false">{{$gydata['name']}}</h3>
                <p class="desc invisible animation-delay-100" data-plugin="appear" data-animate="fadeInDown" data-repeat="false" >{{$gydata['english']}}</p>
                <p class="desc invisible animation-delay-200" data-plugin="appear" data-animate="fadeInDown" data-repeat="false">{{$gydata['title_description']}}</p>
                <div class="met-editor no-gallery lazyload clearfix invisible animation-delay-300" data-plugin="appear" data-animate="fadeInDown" data-repeat="false">
                    {{$gy['title']}}
                </div>
                <a href="{{$gydata['url_status']==1?url($gydata['url']):$gydata['link']}}" target="{{$gydata['target']==1?'_blank':'_self'}}" class="more" data-animate="bounceIn"></a>
            </div>
        </div>
    </div>
    @endif
    {{--关于我们 E--}}

    {{--咨询中心 S--}}
    @if($zxdata!='')
    <div class="met-index-news met-index-body">
        <div class="container">
            <h3 class="invisible" data-plugin="appear" data-animate="fade" data-repeat="false">{{$zxdata['name']}}</h3>
            <p class="desc invisible animation-delay-100" data-plugin="appear" data-animate="fadeInDown" data-repeat="false">—— {{$zxdata['english']}} ——</p>
            <p class="desc invisible animation-delay-200" data-plugin="appear" data-animate="fadeInDown" data-repeat="false">{{$zxdata['title_description']}}</p>
            <ul class="blocks-2" data-scale='0.6'>
                @foreach($zxdata['child'] as $key => $v)
                    @if($key%2==0)
                        <li class="invisible animation-delay-300" data-plugin="appear" data-animate="fadeInRight" data-repeat="false">
                            <div class="media media-lg">

                                <div class="media-left">
                                    <a href="{{url('new/shown/'.$v['id'])}}" title="{{$v['title']}}" target='_self'>
                                        <img class="media-object" data-original="{{asset($v['img'])}}?x-oss-process=image/resize,m_fill,h_120,w_200,limit_0" style="display: block;" alt="{{$v['title']}}" src="{{asset($v['img'])}}?x-oss-process=image/resize,m_fill,h_120,w_200,limit_0">
                                    </a>
                                </div>

                                <div class="media-body">
                                    <h4 class="media-heading">
                                        <span class="news_time">{{mb_substr($v['release_time'],0,10,'utf8')}}</span>
                                        <a href="{{url('new/shown/'.$v['id'])}}" title="{{$v['title']}}" target='_self' >
                                            {{mb_substr($v['title'],0,15,'utf8')}}
                                        </a>
                                    </h4>
                                    <p class="des">{{mb_substr($v['dec'],0,20,'utf8').'…'}}</p>
                                    <p class="info">
                                    </p>
                                </div>
                            </div>
                        </li>
                        @else
                        <li class="invisible animation-delay-300" data-plugin="appear" data-animate="fadeInLeft" data-repeat="false">
                            <div class="media media-lg">

                                <div class="media-left">
                                    <a href="{{url('new/shown/'.$v['id'])}}" title="{{$v['title']}}" target='_self'>
                                        <img class="media-object" data-original="{{asset($v['img'])}}?x-oss-process=image/resize,m_fill,h_120,w_200,limit_0" style="display: block;" alt="{{$v['title']}}" src="{{asset($v['img'])}}?x-oss-process=image/resize,m_fill,h_120,w_200,limit_0">
                                    </a>
                                </div>

                                <div class="media-body">
                                    <h4 class="media-heading">
                                        <span class="news_time">{{mb_substr($v['release_time'],0,10,'utf8')}}</span>
                                        <a href="{{url('new/shown/'.$v['id'])}}" title="{{$v['title']}}" target='_self' >
                                            {{mb_substr($v['title'],0,15,'utf8')}}
                                        </a>
                                    </h4>
                                    <p class="des">{{mb_substr($v['dec'],0,20,'utf8').'…'}}</p>
                                    <p class="info">
                                    </p>
                                </div>
                            </div>
                        </li>
                    @endif
                @endforeach
            </ul>
            <a href="{{$zxdata['url_status']==1?url($zxdata['url']):$zxdata['link']}}" target="{{$zxdata['target']==1?'_blank':'_self'}}"  class="more" title="{{$zxdata['name']}}"></a>
        </div>
    </div>
    @endif
    {{--咨询中心 E--}}

    {{--友情链接 S--}}
    <div class="met-links text-center">
        <div class="container">
            <ol class="breadcrumb">
                <li>友情链接 :</li>

                <li><a href="http://" title="" target="_blank" class="link_img"><img src="{{asset('home/index/img/1501037507.png')}}"></a></li>

                <li><a href="http://" title="" target="_blank" class="link_img"><img src="{{asset('home/index/img/1501037089.png')}}"></a></li>

                <li><a href="http://" title="" target="_blank" class="link_img"><img src="{{asset('home/index/img/1501037030.png')}}"></a></li>

                <li><a href="http://" title="" target="_blank" class="link_img"><img src="{{asset('home/index/img/1501036985.png')}}"></a></li>

            </ol>
        </div>
    </div>
    {{--友情链接 E--}}
@stop
