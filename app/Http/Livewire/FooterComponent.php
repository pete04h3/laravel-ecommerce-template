<?php

namespace App\Http\Livewire;

use App\Models\Setting;
use App\Models\Product;
use Livewire\Component;

class FooterComponent extends Component
{
    public function render()
    {
        $setting = Setting::find(1);
        $products = Product::inRandomOrder()->get()->take(5);
        return view('livewire.footer-component', ['setting' => $setting, 'products' => $products]);
    }
}
