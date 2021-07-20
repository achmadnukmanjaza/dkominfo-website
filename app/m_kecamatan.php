<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class m_kecamatan extends Model
{
    protected $table = 'm_kecamatan';
    
    public function desa()
    {
        return $this->hasMany('App\kel_desa','kecamatan_id','id_kecamatan');
    }
}
