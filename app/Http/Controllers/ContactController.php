<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contact as Contact;
use App\Review as Review;

class ContactController extends Controller
{
    //

    function index() {
        return view('user/pages/contacts');
    }

    function save(Request $request) {

        $newContact = new Contact;

        $newContact->f_name = $request->f_name;
        $newContact->l_name = $request->l_name;
        $newContact->e_mail = $request->e_mail;
        $newContact->phone = $request->phone;
        $newContact->message = $request->message;

        $newContact->save();

        
        // dd($new_reservation);
        return view('user/pages/contacts', compact('newContact'));


        dd($newContact);
        $all_contact = Contact::all();
        print_r($all_contact);
        dd("Hello");
    }

    function review(Request $request){
        $newReview = new Review;

        $newReview->customer_name = $request->customer_name;
        $newReview->star_count = $request->star_count;
        $newReview->brief = $request->brief;
        $newReview->image_url = $request->image_url;

        $newReview->save();
        $reviews = Review::all();

        $sumRating = 0;

        foreach($reviews as $review){

            $sumRating += $review->star_count;
        }
        $avgRating = $sumRating/ count($reviews);
        // dd($avgRating);
        return view('user/pages/guest', compact('newReview','reviews','avgRating'));
    }
}
