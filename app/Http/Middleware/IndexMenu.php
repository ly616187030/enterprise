<?php
namespace App\Http\Middleware;

use App\Model\NavModel;
//use App\Models\Admin\SiteInfo;
use Closure;
use Illuminate\Support\Facades\View;

class IndexMenu
{
    public function handle($request, Closure $next)
    {
        //获取数据
        $shareData = [];
        $shareData['menus'] = $this->getMenu();
        $shareData['site'] = $this->getSite();
        //dd($shareData);
        //数据绑定模板
        View::share($shareData);
        return $next($request);
    }

    public function getMenu(){
        $menus = $this->sortMenu(NavModel::where('navigation', 1)->orderBy('sort','asc')->get()->toArray());
        if(empty($menus)){
            $menus='';
        }else{
            $menus = $menus;
        }
        return $menus;
    }

    public function sortMenu($menus,$pid=0)
    {
        $arr = [];
        if (empty($menus)) {
            return '';
        }

        foreach ($menus as $key => $value) {
            if ($value['pid'] == $pid) {
                $arr[$key] = $value;
                $arr[$key]['child'] = self::sortMenu($menus,$value['id']);
            }
        }
        return $arr;
    }

    public function getSite(){
        //return SiteInfo::where('id', 1)->first();
    }

}