<?php

namespace App\Components;

use App\Models\Menu;

class MenuRecusive
{
    protected $html;
    public function __construct()
    {
        $this->html = '';
    }
    public function menuRecusiveAdd($parentId = 0, $subMark = '')
    {
        $data = Menu::where('parent_id', $parentId)->get();
        foreach ($data as $item) {
            $this->html = $this->html . '<option value="' . $item->id . '">' . $subMark . $item->name . '</option>';
            $this->menuRecusiveAdd($item->id, $subMark . '--');
        }
        return $this->html;
    }
    public function menuRecusiveEdit($parentIdMenuEdit, $parentId = 0, $subMark = '')
    {
        $data = Menu::where('parent_id', $parentId)->get();
        foreach ($data as $item) {
            if ($parentIdMenuEdit == $item->id) {
                $this->html = $this->html . '<option selected value="' . $item->id . '">' . $subMark . $item->name . '</option>';
            } else {
                $this->html = $this->html . '<option value="' . $item->id . '">' . $subMark . $item->name . '</option>';
            }
            $this->menuRecusiveEdit($parentIdMenuEdit, $item->id, $subMark . '--');
        }
        return $this->html;
    }
}
