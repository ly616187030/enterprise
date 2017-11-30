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
                            <table>
                                <tbody style="padding: 0px; margin: 0px;"><tr class="firstRow" style="padding: 0px; margin: 0px;">
                                    <td width="569" valign="top" style="padding: 0px; margin: 0px; word-break: break-all;">
                                        <img class="imgloading" height="200" data-original="{{$con['img']}}" alt="简介.png"/>
                                    </td>
                                    <td width="30" valign="top" style="padding: 0px; margin: 0px;">
                                        <br/>
                                    </td>
                                    <td width="569" valign="top" style="padding: 0px; margin: 0px; word-break: break-all;">
                                        <br>
                                        <p style="word-wrap: break-word; word-break: normal; color: rgb(106, 106, 106); font-family: Arial, 微软雅黑; font-size: 13px;text-indent: 20px;padding: 0 15px">{{$con['title']}}</p>
                                        <p style="word-wrap: break-word; word-break: normal; color: rgb(106, 106, 106); font-family: Arial, 微软雅黑; font-size: 13px;"><br style="padding: 0px; margin: 0px;"/></p>
                                        {{--<p style="word-wrap: break-word; word-break: normal; color: rgb(106, 106, 106); font-family: Arial, 微软雅黑; font-size: 13px;">十多年来，公司以“演绎经典，铸造时尚”的理念为指导；以“客户为源，员工为泉”的精神为动力；以“建好每项工程，树立企业形象，积极开拓市场，诚信服务社会”为宗旨；以树立“万圣风范，行业楷模”的信念为目标，孜孜以求，毫不懈怠。企业对每项工程始终以“安全第一、质量第一、信誉第一”为不变之初衷，回报社会。以演绎经典，铸造时尚为核心，不断完善自我，精心打造“万圣”品牌，深得同行以及各界人士好评。2006年被《中国质量万里行》市场调查中心评定为“重质量、讲诚信、树品牌”企业。</p>--}}
                                        <p style="word-wrap: break-word; word-break: normal;"><br/></p>
                                    </td></tr>
                                </tbody>
                            </table>
                            <p><br/><br/></p>
                            <p style="white-space: normal; line-height: normal;"><span style="font-size: 13px; color: rgb(89, 89, 89);">{!! $con['content'] !!}</span></p>
                            <hr style="height: 1px; margin-right: 0px; margin-left: 0px; border-right-width: initial; border-style: dotted none none; border-bottom-width: initial; border-left-width: initial; border-top-color: rgb(211, 211, 211); white-space: normal; padding: 0px; color: rgb(106, 106, 106); font-family: Arial, 微软雅黑; font-size: 13px;"/>
                            <p style="margin-bottom: 0px; white-space: normal; padding: 0px; word-wrap: break-word; word-break: normal; color: rgb(106, 106, 106); font-family: Arial, 微软雅黑; font-size: 13px;">
                                <span style="padding: 0px; margin: 0px; font-size: 24px; color: rgb(51, 51, 51);"><br style="padding: 0px; margin: 0px;"/></span>
                            </p>
                            <p style="margin-bottom: 0px; white-space: normal; padding: 0px; word-wrap: break-word; word-break: normal; color: rgb(106, 106, 106); font-family: Arial, 微软雅黑; font-size: 13px;">
                                <span style="padding: 0px; margin: 0px; font-size: 24px; color: rgb(51, 51, 51);">{{$nav['name']}}</span>
                            </p>
                            <p class="ordinary-output target-output" style="margin-bottom: 0px; white-space: normal; padding: 0px; word-wrap: break-word; word-break: normal; color: rgb(106, 106, 106); font-family: Arial, 微软雅黑; font-size: 13px;">
                                <span class="" style="padding: 0px; margin: 0px;">{{$nav['english']}}</span>
                            </p>
                            <p style="margin-bottom: 0px; white-space: normal; padding: 0px; word-wrap: break-word; word-break: normal; color: rgb(106, 106, 106); font-family: Arial, 微软雅黑; font-size: 13px;"><br style="padding: 0px; margin: 0px;"/></p>
                            <p style="margin-bottom: 0px; white-space: normal; padding: 0px; word-wrap: break-word; word-break: normal; color: rgb(106, 106, 106); font-family: Arial, 微软雅黑; font-size: 13px;">
                                <span style="color: rgb(89, 89, 89);">公司地址：{{$con['address']}} &nbsp; &nbsp;&nbsp;</span>
                                {{--<span style="color: rgb(89, 89, 89);">联系电话: &nbsp; &nbsp;&nbsp;</span>--}}
                                {{--<span style="color: rgb(89, 89, 89);">邮箱地址：</span></p>--}}
                            <p style="margin-bottom: 0px; white-space: normal; padding: 0px; word-wrap: break-word; word-break: normal; color: rgb(106, 106, 106); font-family: Arial, 微软雅黑; font-size: 13px;">
                                <span style="color: rgb(89, 89, 89);"><br/></span>
                            </p>
                            <p style="margin-bottom: 0px; white-space: normal; padding: 0px; word-wrap: break-word; word-break: normal; color: rgb(106, 106, 106); font-family: Arial, 微软雅黑; font-size: 13px;">
                                <br/>
                            </p><hr style="padding: 0px; margin-right: 0px; margin-left: 0px; height: 1px; border-right-width: initial; border-style: dotted none none; border-bottom-width: initial; border-left-width: initial; border-top-color: rgb(211, 211, 211);"/>
                        </div>
                        <p><br/></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection