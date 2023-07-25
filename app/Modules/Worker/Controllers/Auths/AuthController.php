<?php
namespace App\Modules\Worker\Controllers\Auths;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->services = new \App\Services\AuthService;
    }
    
    public function login(Request $request)
    {
        $data['title'] = 'Đăng nhập - công nhân sản xuất';
        $data['link_login'] = 'Worker/login';
        return $this->services->baseLogin($request, $data);
    }
}
?>