<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;
class File extends Model{
    protected $table = 'files';
    protected $protectFeild = false;
    const STORAGE_DIR = 'storages/uploads';
}
