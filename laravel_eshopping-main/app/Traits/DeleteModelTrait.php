<?php

namespace App\Traits;

use Exception;
use Illuminate\Support\Facades\Log;

trait DeleteModelTrait
{
    public function deleteModelTrait($id, $model)
    {
        try {
            $model->find($id)->delete();
            return response()->json([
                'code' => 200,
                'message' => 'Delete success',
            ], 200);
        } catch (Exception $exc) {
            Log::error('Error: ' . $exc->getMessage() . '---Line: ' . $exc->getLine());
            return response()->json([
                'code' => 500,
                'message' => 'Delete fail',
            ], 500);
        }
    }
}
