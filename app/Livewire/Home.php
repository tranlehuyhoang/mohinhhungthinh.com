<?php

namespace App\Livewire;

use App\Models\Slide;
use Livewire\Component;

class Home extends Component
{
    public function render()
    {
        $slides = Slide::get();
        return view('livewire.home', compact('slides'));
    }
}
