<?php
 
namespace App\Models;
 
use Illuminate\Database\Eloquent\Model;
 
class Printer extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'printers';
    protected $protectFields = false;
}