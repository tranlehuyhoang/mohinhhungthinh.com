<?php

use App\Livewire\About;
use App\Livewire\Home;
use App\Livewire\Projects;
use App\Livewire\Project;
use App\Livewire\Products;
use App\Livewire\Product;
use App\Livewire\Services;
use App\Livewire\Service;
use Illuminate\Support\Facades\Route;

Route::get('/', Home::class);
Route::get('/projects',Projects::class);
Route::get('/project/{slug}',Project::class);

Route::get('/about',action: About::class);
Route::get('/products',Products::class);
Route::get('/product/{slug}',Product::class);

Route::get('/services',Services::class);
Route::get('/service/{slug}',Service::class);



