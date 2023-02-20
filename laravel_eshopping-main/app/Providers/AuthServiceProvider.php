<?php

namespace App\Providers;

use App\Models\Product;
use App\Models\User;
use App\Services\PermissionGateAndPolicyAccess;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;


class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array<class-string, class-string>
     */
    protected $policies = [
        // 'App\Models\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();
        //Sử dụng policy
        $permissionGateAndPolicy = new PermissionGateAndPolicyAccess();
        $permissionGateAndPolicy->setGateAndPolicyAccess();






        //Không sử dụng policy
        Gate::define('menus-list', function ($user) {
            return $user->checkPermissionAccess(config('permissions.access.menus_show'));
        });

        Gate::define('product-edit', function ($user, $id) {
            //Kiểm tra xem user có được phép update & có đúng là user đã tạo product hay không
            $product = Product::find($id);
            if ($user->checkPermissionAccess('products_update') && $user->id === $product->user_id) {
                return true;
            }
            return false;
        });
    }
}
