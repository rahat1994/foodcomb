@extends('user/app')

@section('main-content')

<!-- Page Title #4
============================================= -->
<section id="page-title" class="page-title bg-overlay bg-parallax bg-overlay-gradient">
    <div class="bg-section">
        <img src="{{asset('user/assets/images/page-title/5.jpg')}}" alt="Background" />
    </div>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="title title-4 text-center">
                    <div class="title--content">
                        <div class="title--subtitle">Book a table</div>
                        <div class="title--heading">
                            <h1>Online Reservation</h1>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <ol class="breadcrumb">
                        <li class="active">Reservation</li>
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

<!-- Reservation #1
============================================= -->
<section id="reservation1" class="reservation bg-white pt-0 pb-0">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1">
                <div class="reservation-form mt-10 mb-10 text-center">
                    <div class="reservation--dec">
                        You can Book a table online easily in just a couple of minutes. We take reservations for lunch and dinner, just check the availability of your table & book it now!
                    </div>
                    <form method="post" action="{{asset('user/assets/php/reservation.php')}}" class="reservationForm mb-0">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="select-branch">
                                    <i class="fa fa-angle-down"></i>
                                    <select class="form-control" name="res-pepole" id="branch">
                                            <option value="" disabled selected hidden>Select Branch</option>
                                           <option>Zindabazar</option>
                                           <option>Bandar</option>
                                           <option>Shibganj</option>
                                           <option>Ambarkhana</option>
                                </select>
                            </div>

                            <div class="col-xs-12 col-sm-12 col-md-4">
                                <div class="form-select">
                                    <i class="fa fa-angle-down"></i>
                                    <select class="form-control" name="res-pepole" id="num">
									<option value="2">2 People</option>
									<option value="3">3 People</option>
									<option value="4">4 People</option>
									<option value="5">5 People</option>
									<option value="6">6 People</option>
									<option value="8">8 People</option>
									<option value="10">10 People</option>
								</select>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-4">
                                <div class="form-select">
                                    <i class="fa fa-angle-down"></i>
                                    <select class="form-control" name="res-day" id="day">
									<option value="March 23">March 23, 2017</option>
									<option value="March 24">March 24, 2017</option>
									<option value="March 25">March 25, 2017</option>
									<option value="March 26">March 26, 2017</option>
									<option value="March 27">March 27, 2017</option>
								</select>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-4">
                                <div class="form-select">
                                    <i class="fa fa-angle-down"></i>
                                    <select class="form-control" name="res-time" id="time">
									<option value="8:00">8:00 PM</option>
									<option value="9:00">9:00 PM</option>
									<option value="10:00">10:00 PM</option>
									<option value="11:00">11:00 PM</option>
									<option value="12:00">12:00 AM</option>
								</select>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-4">
                                <input type="text" class="form-control" name="res-name" id="name" placeholder="Your Name" required>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-4">
                                <input type="email" class="form-control" name="res-email" id="email" placeholder="Email">
                            </div>
                            <div class="col-md-4">
                                <input type="text" class="form-control" name="contact-phone" id="phone" placeholder="Phone Number" required>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <textarea class="form-control" name="res-message" id="message" rows="2" placeholder="Add a special request (optional)"></textarea>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <input type="submit" value="Find Table" name="submit" class="btn btn--secondary btn--block">
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12">
												<!--Alert Message-->
                            					<div class="reservation-result"></div>
											</div>
                        </div>
                        <!-- .row end -->
                    </form>
                    <!-- form end -->
                </div>
                <!-- .contact-form end -->
            </div>
            <!-- .col-md-8 end -->
        </div>
        <!-- .row end -->
    </div>
    <!-- .container end -->
</section>
<!-- #reservation1 end -->

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
                    <!-- Testimonial #1 -->
                    <div class="testimonial-panel">
                        <div class="testimonial--rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <!-- .testimonial-rating end -->
                        <div class="testimonial--body">
                            <p>“ Granny is simply the best. Great Food, nice atmosphere and very reasonable prices. It just doesn't get any better ”</p>
                        </div>
                        <!-- .testimonial-body end -->
                        <div class="testimonial--meta">
                            <div class="testimonial--img">
                                <img src="{{asset('user/assets/images/testimonial/1.png')}}" alt="Testimonial Author">
                            </div>
                            <div class="testimonial--author">
                                <h4>- Todd Stephen</h4>
                            </div>
                        </div>
                        <!-- .testimonial-meta end -->
                    </div>
                    <!-- .testimonial-panel end -->

                    <!-- Testimonial #2 -->
                    <div class="testimonial-panel">
                        <div class="testimonial--rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <!-- .testimonial-rating end -->
                        <div class="testimonial--body">
                            <p>“ We've been to Granny many times over the years. We know what to expect: great food and awesome prices ”</p>
                        </div>
                        <!-- .testimonial-body end -->
                        <div class="testimonial--meta">
                            <div class="testimonial--img">
                                <img src="{{asset('user/assets/images/testimonial/2.png')}}" alt="Testimonial Author">
                            </div>
                            <div class="testimonial--author">
                                <h4>- David Casper</h4>
                            </div>
                        </div>
                        <!-- .testimonial-meta end -->
                    </div>
                    <!-- .testimonial-panel end -->

                    <!-- Testimonial #3 -->
                    <div class="testimonial-panel">
                        <div class="testimonial--rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <!-- .testimonial-rating end -->
                        <div class="testimonial--body">
                            <p>“ The reasonable prices, the great atmosphere are only topped by the delicious food. Keep up the great work ”</p>
                        </div>
                        <!-- .testimonial-body end -->
                        <div class="testimonial--meta">
                            <div class="testimonial--img">
                                <img src="{{asset('user/assets/images/testimonial/3.png')}}" alt="Testimonial Author">
                            </div>
                            <div class="testimonial--author">
                                <h4>- John Arax</h4>
                            </div>
                        </div>
                        <!-- .testimonial-meta end -->
                    </div>
                    <!-- .testimonial-panel end -->

                    <!-- Testimonial #4 -->
                    <div class="testimonial-panel">
                        <div class="testimonial--rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <!-- .testimonial-rating end -->
                        <div class="testimonial--body">
                            <p>“ Granny is simply the best. Great Food, nice atmosphere and very reasonable prices. It just doesn't get any better ”</p>
                        </div>
                        <!-- .testimonial-body end -->
                        <div class="testimonial--meta">
                            <div class="testimonial--img">
                                <img src="{{asset('user/assets/images/testimonial/4.png')}}" alt="Testimonial Author">
                            </div>
                            <div class="testimonial--author">
                                <h4>- Anthony Kevin</h4>
                            </div>
                        </div>
                        <!-- .testimonial-meta end -->
                    </div>
                    <!-- .testimonial-panel end -->

                </div>
            </div>
            <!-- .col-md-12 end -->
        </div>
        <!-- .row end -->
        
    </div>
    <!-- .container end -->
</section>
<!-- #testimonial1 end -->

@endsection