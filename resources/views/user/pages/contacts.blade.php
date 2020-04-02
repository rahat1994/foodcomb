@extends('user/app')

@section('main-content')


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
                        <div class="title--subtitle">Contact us</div>
                        <div class="title--heading">
                            <h1>Get In Toutch</h1>
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
                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="contact--desc">
                                <p>FoodComb was the first restaurant to open in Sylhet, the resturant was designed with the history in mind we have created a soft industrial dining room, combined with an open kitchen and coffee roastery.</p>
                            </div>
                            <div class="row mb-30">
                                <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="contact--info">
                                        <h3>Our Address</h3>
                                        <p>Any Building, At Your Road,</p>
                                        <p>Zindabazar, Sylhet.</p>
                                        <a class="link--styled" href="#">Visit Us</a>
                                    </div>
                                </div>
                                <!-- .col-md-6 end -->
                                <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="contact--info">
                                        <h3>Our Phone</h3>
                                        <p>Office Telephone : +880 1700000000</p>
                                        <p>Mobile : +880 1700000099</p>
                                        <a class="link--styled" href="#">Call Us</a>
                                    </div>
                                </div>
                                <!-- .col-md-6 end -->
                            </div>
                            <!-- .row end -->
                            <div class="row">
                                <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="contact--info">
                                        <h3>Our Email</h3>
                                        <p>Main Email: foodcomb@gmail.com</p>
                                        <p>Inquiries : Info@foodcomb.com</p>
                                        <a class="link--styled" href="#">Send a Message</a>
                                    </div>
                                </div>
                                <!-- .col-md-6 end -->
                                <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="contact--info">
                                        <h3>Follow Us</h3>
                                        <div class="social-icons">
                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                            <a href="#"><i class="fa fa-instagram"></i></a>
                                            <a href="#"><i class="fa fa-tripadvisor"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <!-- .col-md-6 end -->
                            </div>
                            <!-- .row end -->
                        </div>
                        <!-- .col-md-3 end -->

                        <div class="col-xs-12 col-sm-12 col-md-6">
                            <div class="contact-form">
                                <form method="post" action="{{asset('user/assets/php/contact.php')}}" class="contactForm mb-0">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="contact-name" id="name" placeholder="First Name:" required>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="contact-last" id="last" placeholder="Last Name" required>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="email" class="form-control" name="contact-email" id="email" placeholder="Email:" required>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="contact-phone" id="phone" placeholder="Phone:" required>
                                        </div>
                                        <div class="col-md-12">
                                            <textarea class="form-control" name="contact-message" id="message" rows="2" placeholder="Message" required></textarea>
                                        </div>
                                        <div class="col-md-12">
                                            <input type="submit" value="Send Message" name="submit" class="btn btn--secondary btn--block mt-10">
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
<!-- #contact1 end -->

@endsection