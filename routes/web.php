<?php
use App\DailySpecial as DailySpecial;
use App\Review as Review;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('logout', '\App\Http\Controllers\Auth\LoginController@logout');

Route::group(['prefix' => 'api'], function () {

  Route::group(['prefix' => 'restaurant'], function () {
      Route::get('/', 'RestaurantController@get_all');
      Route::post('/', 'RestaurantController@store');

      Route::group([
        'prefix' => '{restaurantId}',
        'where' => ['id' => '[0-9]+']
      ], function () {
          Route::get('/', 'RestaurantController@get_single');
          Route::put('/', 'RestaurantController@edit');
          Route::post('/delete', 'RestaurantController@delete');
      });

  });

  Route::group(['prefix' => 'menu_item'], function () {

      Route::get('/', 'MenuItemController@get_all');
      Route::post('/', 'MenuItemController@store');

      Route::group([
        'prefix' => '{restaurantId}',
        'where' => ['id' => '[0-9]+']
      ], function () {
          Route::get('/', 'MenuItemController@get_single');
          Route::put('/', 'MenuItemController@edit');
          Route::post('/delete', 'MenuItemController@delete');
      });

  });

});



//Restaurant Restaurant Owner side


Route::group(['prefix' => 'owner'], function () {

  Route::group(['prefix' => 'menu_item_owner'], function () {

      Route::get('/', 'MenuItemController@index');
      Route::post('/', 'MenuItemController@store');

      Route::group([
        'prefix' => '{restaurantId}',
        'where' => ['id' => '[0-9]+']
      ], function () {
          Route::get('/', 'MenuItemController@get_single');
          Route::put('/', 'MenuItemController@edit');
          Route::post('/delete', 'MenuItemController@delete');
      });

  });

});


//API Calls
Route::post('/getItems', 'ShopController@getItems');
Route::post('/shopPage', 'ShopController@single_restaurant');
Route::post('/order', 'ShopController@order');






//static routes

Route::get('/', function () {
    $dailySpecials = DailySpecial::all();
    $reviews = Review::all();
    // dd($dailySpecials);
    return view('user/pages/home', compact('dailySpecials', 'reviews'));
})->name('home');


Route::get('about', function () {
    return view('user/pages/about');
})->name('about');


Route::get('menu', function () {

    $default_menu = App\FcDefaultMenu::all();
    $arr = array();

    foreach ($default_menu as $key => $item) {
        $arr[$item['item_group']][$key] = $item;
    }
    // dd($arr);
    // dd($default_menu);
    return view('user/pages/menu', compact('arr'));
})->name('menu');


Route::get('guest', function () {
    $reviews = Review::all();

    $sumRating = 0;

    foreach($reviews as $review){

        $sumRating += $review->star_count;
    }
    $avgRating = $sumRating/ count($reviews);
    // dd($reviews);
    return view('user/pages/guest', compact('reviews','avgRating'));
})->name('guest');


Route::get('contacts', 'ContactController@index')->name('contacts');
Route::post('contactSubmit', 'ContactController@save');
Route::post('reviewSubmit', 'ContactController@review');


Route::get('reserve', 'ReservationController@index')->name('reserve');
Route::post('makereservation', 'ReservationController@makereservation');

Route::get('shop', 'productsController@foods')->name('shop');


Route::get('cart', function () {
    return view('user/pages/cart');
})->name('cart');

Route::get('/order-history', 'ShopController@orderHistory'); //->middleware('auth');