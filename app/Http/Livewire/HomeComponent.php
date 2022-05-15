<?php

namespace App\Http\Livewire;

use App\Models\Category;
use App\Models\HomeCategory;
use App\Models\HomeSlider;
use App\Models\Product;
use App\Models\Sale;
use Cart;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class HomeComponent extends Component
{
    public function render()
    {
        $sliders = HomeSlider::where('status', 1)->get();
        $products = Product::inRandomOrder()->get()->take(5);
        $bannerproducts = Product::inRandomOrder()->get()->take(3);
        $articleproducts = Product::inRandomOrder()->get()->take(3);
        $latest_products = Product::orderBy('created_at', 'DESC')->get()->take(8);
        $popular_products = Product::inRandomOrder()->get()->take(8);
        $category = HomeCategory::find(1);
        $cats = explode(',', $category->sel_categories);
        $categories = Category::whereIn('id', $cats)->get();
        $no_of_products = $category->no_of_products;
        $sproducts = Product::where('sale_price', '>', 0)->inRandomOrder()->get()->take(8);
        $ahrefproducts = Product::inRandomOrder()->limit(5)->get()->take(5);
        $sale = Sale::find(1);
        if (Auth::check()) {
            Cart::instance('cart')->restore(Auth::user()->email);
        }
        return view('livewire.home-component', ['sliders' => $sliders, 'products' => $products, 'bannerproducts' => $bannerproducts, 'articleproducts' => $articleproducts, 'latest_products' => $latest_products, 'popular_products' => $popular_products, 'categories' => $categories, 'no_of_products' => $no_of_products, 'sproducts' => $sproducts, 'ahrefproducts' => $ahrefproducts, 'sale' => $sale])->layout('layouts.base');
    }
}
