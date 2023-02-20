<?php

namespace App\Http\Controllers;

use App\Components\MenuRecusive;
use App\Models\Menu;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class MenuController extends Controller
{
    protected $menu;
    protected $menuRecusive;
    public function __construct(Menu $menu, MenuRecusive $menuRecusive)
    {
        $this->menu = $menu;
        $this->menuRecusive = $menuRecusive;
    }
    public function index()
    {
        $menus = $this->menu->latest('id')->paginate(5);
        return view('admin.menus.index', compact('menus'));
    }
    public function create()
    {
        $optionSelect = $this->menuRecusive->menuRecusiveAdd();
        return view('admin.menus.add', compact('optionSelect'));
    }
    public function store(Request $request)
    {
        $this->menu->create([
            'name' => $request->name,
            'parent_id' => $request->parent_id,
            'slug' => Str::slug($request->name)
        ]);
        return redirect()->route('admin.menus.index');
    }
    public function edit(Request $request, $id)
    {
        $menus = $this->menu->find($id);
        $optionSelect = $this->menuRecusive->menuRecusiveEdit($menus->parent_id);
        return view('admin.menus.edit', compact('optionSelect', 'menus'));
    }
    public function update(Request $request, $id)
    {
        $this->menu->find($id)->update([
            'name' => $request->name,
            'parent_id' => $request->parent_id,
            'slug' => Str::slug($request->name)
        ]);
        return redirect()->route('admin.menus.index');
    }
    public function delete($id)
    {
        $this->menu->find($id)->delete();
        return redirect()->route('admin.menus.index');
    }
}
