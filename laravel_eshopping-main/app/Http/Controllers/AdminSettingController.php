<?php

namespace App\Http\Controllers;

use App\Http\Requests\SettingAddRequest;
use App\Http\Requests\SettingUpdateRequest;
use App\Models\Setting;
use App\Traits\DeleteModelTrait;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class AdminSettingController extends Controller
{
    use DeleteModelTrait;
    protected $setting;
    public function __construct(Setting $setting)
    {
        $this->setting = $setting;
    }
    public function index()
    {
        $settings = $this->setting->latest()->paginate(5);
        return view('admin.settings.index', compact('settings'));
    }

    public function create()
    {
        return view('admin.settings.add');
    }
    public function store(SettingAddRequest $request)
    {
        $this->setting->create([
            'config_key' => $request->config_key,
            'config_value' => $request->config_value,
            'type' => $request->type
        ]);
        return redirect()->route('settings.index');
    }
    public function edit($id)
    {
        $setting = $this->setting->find($id);
        return view('admin.settings.edit', compact('setting'));
    }
    public function update(SettingUpdateRequest $request, $id)
    {
        $this->setting->find($id)->update([
            'config_key' => $request->config_key,
            'config_value' => $request->config_value
        ]);
        return redirect()->route('settings.index');
    }
    public function delete($id)
    {
        return $this->deleteModelTrait($id, $this->setting);
    }
}
