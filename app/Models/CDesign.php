<?php
    namespace App\Models;
    use Illuminate\Database\Eloquent\Model;
    class CDesign extends Model
    {
        protected $table = 'c_designs';
        protected $protectFields = false;
        const ARR_ROLE =  [
            'accept'=>1,
            'receive'=>1
        ];    
    }
    
?>