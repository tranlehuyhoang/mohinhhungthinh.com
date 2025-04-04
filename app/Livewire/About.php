<?php

namespace App\Livewire;

use App\Models\Introduction;
use Livewire\Component;

class About extends Component
{
    public function render()
    {
        $intro = Introduction::first(); 
        return view('livewire.about',compact('intro'));
    }
}
