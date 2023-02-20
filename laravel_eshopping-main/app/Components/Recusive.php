<?php

namespace App\Components;

class Recusive
{
    protected $data;
    protected $htmlSelect = '';
    public function __construct($data)
    {
        $this->data = $data;
    }

    function categoryRecusive($parentId, $id = 0, $text = '')
    {
        foreach ($this->data as $item) {
            if ($item->parent_id == $id) {
                if (!empty($parentId) && $parentId == $item->id) {
                    $this->htmlSelect = $this->htmlSelect . "<option selected value='" . $item->id . "'>" . $text . $item->name . "</option>";
                } else {
                    $this->htmlSelect = $this->htmlSelect . "<option value='" . $item->id . "'>" . $text . $item->name . "</option>";
                }
                $this->categoryRecusive($parentId, $item->id, $text . '---');
            }
        }

        return $this->htmlSelect;
    }
}
