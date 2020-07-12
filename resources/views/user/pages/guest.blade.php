@extends('user/app')

@section('main-content')

<style>
    /* Rating Star Widgets Style */
.rating-stars ul {
  list-style-type:none;
  padding:0;
  
  -moz-user-select:none;
  -webkit-user-select:none;
}
.rating-stars ul > li.star {
  display:inline-block;
  
}

/* Idle State of the stars */
.rating-stars ul > li.star > i.fa {
  font-size:2.5em; /* Change the size of the stars */
  color:#ccc; /* Color on idle state */
}

/* Hover state of the stars */
.rating-stars ul > li.star.hover > i.fa {
  color:#FFCC36;
}

/* Selected state of the stars */
.rating-stars ul > li.star.selected > i.fa {
  color:#FF912C;
}

</style>

<!-- Page Title #4
============================================= -->
<section id="page-title" class="page-title bg-overlay bg-parallax bg-overlay-gradient">
    <div class="bg-section">
        <img src="{{asset('user/assets/images/page-title/11.jpg')}}" alt="Background" />
    </div>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="title title-4 text-center">
                    <div class="title--content">
                        <div class="title--subtitle">People love us</div>
                        <div class="title--heading">
                            <h1>Our Average rating {{$avgRating}}&nbsp;<i class="fa fa-star" style="color:#FFCC36; font-size: 30px;"></i></h1> 
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <ol class="breadcrumb">
                        <li class="active">Guestbook</li>
                    </ol>
                    <div class="divider--shape-1down"></div>
                </div>
                <!-- .title end -->
            </div>
            <!-- .col-md-12 end -->
        </div>
        <!-- .row end -->
    </div>
    <!-- .container end -->
</section>
<!-- #page-title end -->

<!-- banner#2
============================================= -->
<section id="banner2" class="banner banner-2 text-center bg-white">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="banner-img mt-20">
                    <img src="{{asset('user/assets/images/banners/4.jpg')}}" alt="image">
                </div>
            </div>
            <!-- .col-md-3 end -->
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="banner-img">
                    <img src="{{asset('user/assets/images/banners/5.jpg')}}" alt="image">
                </div>
                <!-- .col-md-3 end -->
            </div>
            <!-- .col-md-3 end -->
            <div class="col-xs-12 col-sm-12 col-md-6">
                <div class="heading heading-1 text--center mt-60">
                    <p class="heading--subtitle">Hello dear</p>
                    <h2 class="heading--title">Welcome To Granny</h2>
                    <div class="divider--shape-4"></div>
                    <p class="heading--desc">Granny was the first retaurant to open in Egypt, the resturant was designed with the history in mind we have created a soft industrial dining room, combined with an open kitchen, coffee take out bar and on site coffee roastery.</p>
                </div>
                <!-- .heading end -->
                <div class="signiture--img mt-30">
                    <img src="{{asset('user/assets/images/heading/signiture.png')}}" alt="Signiture img">
                </div>
            </div>
            <!-- .col-md-6 end -->
        </div>
        <!-- .row end -->
    </div>
    <!-- .container end -->
</section>
<!-- #banner#2 end -->

<!-- Testimonial #1
============================================= -->
<section id="testimonial1" class="testimonial testimonial-1 bg-overlay bg-overlay-dark bg-parallax pb-90">
    <div class="bg-section">
        <img src="{{asset('user/assets/images/background/1.jpg')}}" alt="Background" />
    </div>

    <div class="container">
        <div class="divider--shape-1up"></div>
        <div class="row clearfix">
            <div class="col-xs-12 col-sm-12 col-md-8 col-md-offset-2">
                <div class="heading heading-1 mb-40 text--center">
                    <p class="heading--subtitle">People talk</p>
                    <h2 class="heading--title color-white">Our Guestbook</h2>
                </div>
            </div>
            <!-- .col-md-8 end -->
        </div>
        <!-- .row end -->
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div id="testimonial-carousel" class="carousel carousel-dots carousel-white" data-slide="3" data-autoplay="true" data-nav="false" data-dots="true" data-space="30" data-loop="true" data-speed="800">

                @foreach($reviews as $review)
                    <?php
                        $empty_arr = array_fill(0, $review->star_count, NULL);
                    ?>
                    <!-- Testimonial #1 -->
                    <div class="testimonial-panel">
                        <div class="testimonial--rating">
                            @foreach($empty_arr as $arr)
                                <i class="fa fa-star"></i>
                            @endforeach
                        </div>
                        <!-- .testimonial-rating end -->
                        <div class="testimonial--body">
                            <p>“ {{$review->brief}} ”</p>
                        </div>
                        <!-- .testimonial-body end -->
                        <div class="testimonial--meta">

                            @if(!$review->image_url)
                            <div class="testimonial--img">
                                <img src="{{asset('user/assets/images/testimonial/1.png')}}" alt="Testimonial Author">
                            </div>
                            @else
                            <div class="testimonial--img">
                                <img src="{{asset('storage/' . $review->image_url)}}" alt="Testimonial Author">
                            </div>
                            @endif


                            <div class="testimonial--author">
                                <h4>- {{$review->customer_name}}</h4>
                            </div>
                        </div>
                        <!-- .testimonial-meta end -->
                    </div>
                    <!-- .testimonial-panel end -->
                @endforeach

                </div>
            </div>
            <!-- .col-md-12 end -->
        </div>
        <!-- .row end -->
        <div class="divider--shape-1down"></div>
    </div>
    <!-- .container end -->
</section>
<!-- #testimonial1 end -->

<!-- banner#3
============================================= -->
<section id="banner3" class="banner banner-3 text-center bg-white">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-6">
                <div class="heading heading-1 text--center mt-40">
                    <p class="heading--subtitle">Start eating better</p>
                    <h2 class="heading--title">Daily New Fresh Menus</h2>
                    <div class="divider--shape-4"></div>
                    <p class="heading--desc">Monkfish, onion, paella rice, garlic & smoked paprika, creamy chesapeake crab dip with artichoke, baked and topped with cheddar cheese, with crusty bread for dipping. creamy chesapeake crab dip with artichoke, baked and topped with a hot cheddar cheese. </p>
                    <a class="btn btn--secondary btn--lg mt-40" href="#">Discover Full Menu</a>
                </div>
                <!-- .heading end -->
            </div>
            <!-- .col-md-6 end -->
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="banner-img mt-20">
                    <img src="{{asset('user/assets/images/banners/9.jpg')}}" alt="image">
                </div>
            </div>
            <!-- .col-md-3 end -->
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="banner-img">
                    <img src="{{asset('user/assets/images/banners/10.jpg')}}" alt="image">
                </div>
            </div>
            <!-- .col-md-3 end -->
        </div>
        <!-- .row end -->
    </div>
    <!-- .container end -->
</section>
<!-- #banner#3 end -->

<!-- Page Title #4
============================================= -->
<section id="page-title" class="page-title bg-overlay bg-parallax bg-overlay-gradient">
    <div class="bg-section">
        <img src="{{asset('user/assets/images/page-title/10.jpg')}}" alt="Background" />
    </div>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="title title-4 text-center">
                    <div class="title--content">
                        <div class="title--subtitle">Review Section</div>
                        <div class="title--heading">
                            <h1>Leave your comments</h1>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <ol class="breadcrumb">
                        <li class="active">Contact</li>
                    </ol>
                    <div class="divider--shape-1down"></div>
                </div>
                <!-- .title end -->
            </div>
            <!-- .col-md-12 end -->
        </div>
        <!-- .row end -->
    </div>
    <!-- .container end -->
</section>
<!-- #page-title end -->

<!-- Contact #1
============================================= -->
<section id="contact1" class="contact contact-1">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="contact-form">
                                <form method="post" action="{{url('/reviewSubmit')}}">
                                    {{csrf_field()}}
                                    <div class="row">
                                        <div class="col-md-12">
                                            <input type="hidden" class="form-control" name="customer_name" id="name" value="{{Auth::user()->name}}" placeholder="Full Name:" required>
                                            <input type="hidden" class="form-control" name="image_url" value="{{Auth::user()->avatar}}">
                                        </div>


                                        <div class="col-md-12">
                                            <!-- <select class="form-control" name="star_count" id="star_count">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                            </select> -->
                                            <input type="hidden" name="star_count" id="star_count">
                                              <!-- Rating Stars Box -->
                                            <div class='rating-stars text-center'>
                                                <ul id='stars'>
                                                <li class='star' title='Poor' data-value='1'>
                                                    <i class='fa fa-star fa-fw'></i>
                                                </li>
                                                <li class='star' title='Fair' data-value='2'>
                                                    <i class='fa fa-star fa-fw'></i>
                                                </li>
                                                <li class='star' title='Good' data-value='3'>
                                                    <i class='fa fa-star fa-fw'></i>
                                                </li>
                                                <li class='star' title='Excellent' data-value='4'>
                                                    <i class='fa fa-star fa-fw'></i>
                                                </li>
                                                <li class='star' title='WOW!!!' data-value='5'>
                                                    <i class='fa fa-star fa-fw'></i>
                                                </li>
                                                </ul>
                                            </div>

                                        </div>

                                        <div class="col-md-12">
                                            <textarea class="form-control" name="brief" id="message" rows="2" placeholder="Message" required></textarea>
                                        </div>

                                        <div class="col-md-12" style="display:none">
                                            <input value="Send Message" type="submit" id="submit_contact_form_hidden" name="submit" class="btn btn--secondary btn--block mt-10">
                                        </div>

                                        <div class="col-md-12">
                                            <input value="Send Review" id="submit_contact_form" type="submit" name="submit" class="btn btn--secondary btn--block mt-10">
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-12">
												<!--Alert Message-->
                            					<div class="contact-result"></div>
											</div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- .col-md-6 end -->
                    </div>
                    <!-- .row end -->
                </div>
            </div>
            <!-- .col-md-12 end -->
        </div>
        <!-- .row end -->
    </div>
    <!-- .container end -->
</section>
@endsection

@push('scripts')
<script type="text/javascript">
    $(document).ready(function(){
        @if(isset($newReview))
        
            swal({
                title: "Review Submitted",
                text: "Thanks for your valuable Opinion",
                icon: "success",
            });
        @endif
  /* 1. Visualizing things on Hover - See next part for action on click */
  $('#stars li').on('mouseover', function(){
    var onStar = parseInt($(this).data('value'), 10); // The star currently mouse on
   
    // Now highlight all the stars that's not after the current hovered star
    $(this).parent().children('li.star').each(function(e){
      if (e < onStar) {
        $(this).addClass('hover');
      }
      else {
        $(this).removeClass('hover');
      }
    });
    
  }).on('mouseout', function(){
    $(this).parent().children('li.star').each(function(e){
      $(this).removeClass('hover');
    });
  });
  
  
  /* 2. Action to perform on click */
  $('#stars li').on('click', function(){

    @if(!Auth::user())
        
            swal({
                title: "Must be Logged In.",
                text: "User must be logged in when rating a restaurant.",
                icon: "warning",
            });
        return;
    @endif
    var onStar = parseInt($(this).data('value'), 10); // The star currently selected
    var stars = $(this).parent().children('li.star');
    
    for (i = 0; i < stars.length; i++) {
      $(stars[i]).removeClass('selected');
    }
    
    for (i = 0; i < onStar; i++) {
      $(stars[i]).addClass('selected');
    }
    
    // JUST RESPONSE (Not needed)
    var ratingValue = parseInt($('#stars li.selected').last().data('value'), 10);
    var msg = "";
    if (ratingValue > 1) {
        msg = "Thanks! You rated this " + ratingValue + " stars.";
    }
    else {
        msg = "We will improve ourselves. You rated this " + ratingValue + " stars.";
    }
    responseMessage(ratingValue);

  });
  
  
});


function responseMessage(ratingValue) {
    $('#star_count').val(ratingValue);
//   $('.success-box').fadeIn(200);  
//   $('.success-box div.text-message').html("<span>" + msg + "</span>");
}
</script>
@endpush