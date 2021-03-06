<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.ico">
    <link
        href="https://fonts.googleapis.com/css?family=Lato:300,400,400italic,700,700italic,900,900italic&amp;subset=latin,latin-ext"
        rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css?family=Open%20Sans:300,400,400italic,600,600italic,700,700italic&amp;subset=latin,latin-ext"
        rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700&family=Nunito&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@200;300;400;500;600;700;800&display=swap"
        rel="stylesheet">

    <link href="http://fonts.cdnfonts.com/css/basis-grotesque-pro" rel="stylesheet">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Noto+Serif:ital,wght@0,400;0,700;1,400;1,700&display=swap"
        rel="stylesheet">

    {{-- CUSTOM CSS --}}
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/animate.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/letter-scroll-animation.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/text-section.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/3d-animation.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/links-hover-show-image.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/hero-landing-module.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/hero-module.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/font-awesome.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/bootstrap.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/owl.carousel.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/flexslider.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/chosen.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/style.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/color-01.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/select2.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/datetimepicker.min.css') }}">
    @livewireStyles


</head>

<body class="home-page home-01 ">

    <!-- mobile menu -->
    <div class="mercado-clone-wrap">
        <div class="mercado-panels-actions-wrap">
            <div class="mercado-item-title-menu">Menu</div>

            <a class="mercado-close-btn mercado-close-panels" href="#">x</a>
        </div>
        <div class="mercado-panels"></div>
    </div>

    <!--header-->
    <header id="header" class="header header-style-1">
        <div class="container-fluid">
            <div class="row bg-gainsboro-faded">
                <div class="topbar-menu-area">
                    <div class="container">
                        <div class="topbar-menu left-menu">
                            <ul>
                                <li class="menu-item">
                                    <a title="Hotline: (+123) 456 789" href="#"><span
                                            class="icon label-before fa fa-mobile"></span>Hotline: (+123) 456 789</a>
                                </li>
                            </ul>
                        </div>
                        <div class="topbar-menu right-menu">
                            <ul>

                                <li class="menu-item lang-menu menu-item-has-children parent">
                                    <a title="English" href="#"><span class="img label-before"><img
                                                src="{{ asset('assets/images/lang-en.png') }}"
                                                alt="lang-en"></span>English<i class="fa fa-angle-down"
                                            aria-hidden="true"></i></a>
                                    <ul class="submenu lang">
                                        <li class="menu-item"><a title="hungary" href="#"><span
                                                    class="img label-before"><img
                                                        src="{{ asset('assets/images/lang-hun.png') }}"
                                                        alt="lang-hun"></span>Hungary</a></li>
                                        <li class="menu-item"><a title="german" href="#"><span
                                                    class="img label-before"><img
                                                        src="{{ asset('assets/images/lang-ger.png') }}"
                                                        alt="lang-ger"></span>German</a></li>
                                        <li class="menu-item"><a title="french" href="#"><span
                                                    class="img label-before"><img
                                                        src="{{ asset('assets/images/lang-fra.png') }}"
                                                        alt="lang-fre"></span>French</a></li>
                                        <li class="menu-item"><a title="canada" href="#"><span
                                                    class="img label-before"><img
                                                        src="{{ asset('assets/images/lang-can.png') }}"
                                                        alt="lang-can"></span>Canada</a></li>
                                    </ul>
                                </li>
                                <li class="menu-item menu-item-has-children parent">
                                    <a title="Dollar (USD)" href="#">Dollar (USD)<i class="fa fa-angle-down"
                                            aria-hidden="true"></i></a>
                                    <ul class="submenu curency">
                                        <li class="menu-item">
                                            <a title="Pound (GBP)" href="#">Pound (GBP)</a>
                                        </li>
                                        <li class="menu-item">
                                            <a title="Euro (EUR)" href="#">Euro (EUR)</a>
                                        </li>
                                        <li class="menu-item">
                                            <a title="Dollar (USD)" href="#">Dollar (USD)</a>
                                        </li>
                                    </ul>
                                </li>
                                @if (Route::has('login'))
                                    @auth
                                        @if (Auth::user()->utype === 'ADM')
                                            <li class="menu-item menu-item-has-children parent">
                                                <a title="My account" href="#">My account ({{ Auth::user()->name }})<i
                                                        class="fa fa-angle-down" aria-hidden="true"></i></a>
                                                <ul class="submenu curency">
                                                    <li class="menu-item">
                                                        <a title="Dashboard"
                                                            href="{{ route('admin.dashboard') }}">Dashboard</a>
                                                    </li>
                                                    <li class="menu-item">
                                                        <a title="Categories"
                                                            href="{{ route('admin.categories') }}">Categories</a>
                                                    </li>

                                                    <li class="menu-item">
                                                        <a title="Attributes"
                                                            href="{{ route('admin.attributes') }}">Attributes</a>
                                                    </li>

                                                    <li class="menu-item">
                                                        <a title="Products"
                                                            href="{{ route('admin.products') }}">Products</a>
                                                    </li>
                                                    <li class="menu-item">
                                                        <a title="Manage Home Slider"
                                                            href="{{ route('admin.homeslider') }}">Manage Home Slider</a>
                                                    </li>
                                                    <li class="menu-item">
                                                        <a title="Manage Home Categories"
                                                            href="{{ route('admin.homecategories') }}">Manage Home
                                                            categories</a>
                                                    </li>
                                                    <li class="menu-item">
                                                        <a title="Sale Settings" href="{{ route('admin.sale') }}">Sale
                                                            Settings</a>
                                                    </li>
                                                    <li class="menu-item">
                                                        <a title="All orders" href="{{ route('admin.orders') }}">All
                                                            orders</a>
                                                    </li>

                                                    <li class="menu-item">
                                                        <a title="Contact Messages"
                                                            href="{{ route('admin.contact') }}">Contact Messages</a>
                                                    </li>

                                                    <li class="menu-item">
                                                        <a title="Settings"
                                                            href="{{ route('admin.settings') }}">Settings</a>
                                                    </li>


                                                    <li class="menu-item">
                                                        <a href="{{ route('logout') }}"
                                                            onclick="event.preventDefault(); document.getElementById('logout-form').submit();">Logout</a>
                                                    </li>
                                                    <form id="logout-form" action="{{ route('logout') }}" method="POST">
                                                        @csrf
                                                    </form>

                                                </ul>
                                            </li>
                                        @else
                                            <li class="menu-item menu-item-has-children parent">
                                                <a title="My account" href="#">My account ({{ Auth::user()->name }})<i
                                                        class="fa fa-angle-down" aria-hidden="true"></i></a>
                                                <ul class="submenu curency">
                                                    <li class="menu-item">
                                                        <a title="Dashboard"
                                                            href="{{ route('user.dashboard') }}">Dashboard</a>
                                                    </li>

                                                    <li class="menu-item">
                                                        <a title="My Profile" href="{{ route('user.profile') }}">My
                                                            Profile</a>
                                                    </li>

                                                    <li class="menu-item">
                                                        <a title="My Orders" href="{{ route('user.orders') }}">My
                                                            Orders</a>
                                                    </li>

                                                    <li class="menu-item">
                                                        <a title="Change Password"
                                                            href="{{ route('user.changepassword') }}">Change Password</a>
                                                    </li>

                                                    <li class="menu-item">
                                                        <a href="{{ route('logout') }}"
                                                            onclick="event.preventDefault(); document.getElementById('logout-form').submit();">Logout</a>
                                                    </li>
                                                    <form id="logout-form" action="{{ route('logout') }}" method="POST">
                                                        @csrf
                                                    </form>

                                                </ul>
                                            </li>
                                        @endif
                                    @else
                                        <li class="menu-item"><a title="Register or Login"
                                                href="{{ route('login') }}">Login</a></li>
                                        <li class="menu-item"><a title="Register or Login"
                                                href="{{ route('register') }}">Register</a></li>
                                    @endif
                                    @endif
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="container">
                        <div class="mid-section main-info-area">

                            <div class="wrap-logo-top left-section">
                                <a href="/home" class="link-to-home">
                                    <div class="logo-container">

                                        <img src="{{ asset('assets/images/icons/logo-white.svg') }}" alt="mercado">
                                    </div>
                                </a>
                            </div>

                            @livewire('header-search-component')

                            <div class="wrap-icon right-section">
                                <div class="wrap-icon-section wishlist">
                                    <a href="#" class="link-direction">
                                        <i class="fa fa-heart" aria-hidden="true"></i>
                                        <div class="left-info">
                                            <span class="index">
                                                0 items</span>
                                            <span class="title">Wishlist</span>
                                        </div>
                                    </a>
                                </div>
                                @livewire('cart-count-component')


                                <div class="wrap-icon-section show-up-after-1024">
                                    <a href="#" class="mobile-navigation">
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                    </a>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="nav-section header-sticky">
                        <div class="header-nav-section">
                            <div class="container">
                                <ul class="nav menu-nav clone-main-menu" id="mercado_haead_menu" data-menuname="Sale Info">
                                    <li class="menu-item"><a href="/shop" class="link-term">Weekly
                                            Featured</a><span class=""></span></li>
                                    <li class="menu-item"><a href="#sale-items" class="link-term">Hot Sale
                                            items</a><span class=""></span></li>
                                    <li class="menu-item"><a href="#new-items" class="link-term">Top new
                                            items</a><span class=""></span></li>
                                    <li class="menu-item"><a href="#top-selling-items" class="link-term">Top
                                            Selling</a><span class=""></span></li>
                                    <li class="menu-item"><a href="#top-category-items" class="link-term">Top
                                            Category
                                            items</a><span class=""></span></li>
                                </ul>
                            </div>
                        </div>

                        <div class="primary-nav-section">
                            <div class="container">
                                <ul class="nav primary clone-main-menu" id="mercado_main" data-menuname="Main menu">
                                    <li class="menu-item home-icon">
                                        <a href="/home" class="link-term mercado-item-title"><i class="fa fa-home"
                                                aria-hidden="true"></i></a>
                                    </li>
                                    <li class="menu-item">
                                        <a href="/about-us" class="link-term mercado-item-title">About Us</a>
                                    </li>
                                    <li class="menu-item">
                                        <a href="/shop" class="link-term mercado-item-title">Shop</a>
                                    </li>
                                    <li class="menu-item">
                                        <a href="/cart" class="link-term mercado-item-title">Cart</a>
                                    </li>
                                    <li class="menu-item">
                                        <a href="/checkout" class="link-term mercado-item-title">Checkout</a>
                                    </li>
                                    <li class="menu-item">
                                        <a href="/contact-us" class="link-term mercado-item-title">Contact Us</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        {{ $slot }}

        @livewire('footer-component')

        <script src="{{ asset('assets/js/jquery-1.12.4.minb8ff.js?ver=1.12.4') }}"></script>
        <script src="{{ asset('assets/js/jquery-ui-1.12.4.minb8ff.js?ver=1.12.4') }}"></script>
        <script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
        <script src="{{ asset('assets/js/jquery.flexslider.js') }}"></script>
        <script src="{{ asset('assets/js/chosen.jquery.min.js') }}"></script>
        <script src="{{ asset('assets/js/owl.carousel.min.js') }}"></script>
        <script src="{{ asset('assets/js/cd-slider.js') }}"></script>
        <script src="{{ asset('assets/js/on-scroll.js') }}"></script>
        <script src="{{ asset('assets/js/hero-module.js') }}"></script>
        <script src="{{ asset('assets/js/jquery.countdown.min.js') }}"></script>
        <script src="{{ asset('assets/js/jquery.sticky.js') }}"></script>
        <script src="{{ asset('assets/js/functions.js') }}"></script>
        <script src="{{ asset('assets/js/select2.min.js') }}"></script>
        <script src="{{ asset('assets/js/moment.min.js') }}"></script>
        <script src="{{ asset('assets/js/datetimepicker.min.js') }}"></script>

        @livewireScripts

        <script defer>
            $(document).ready(function() {
                // Select2 Multiple
                $('.select2-multiple').select2({
                    placeholder: "val",
                    allowClear: true
                });
            });
        </script>

        <script defer>
            $(function() {
                $('#sale-date').datetimepicker({
                    format: "Y-MM-DD h:m:s",
                });

            });
        </script>

        {{-- <script defer>
            $(document).ready(function() {
                $('.sel_categories').select2();
                $('.sel_categories').on('change', function(e) {
                    var data = $('#select2Multiple').select2("val");
                    @this.set('selected_categories', data);
                });
            });
        </script> --}}




    </body>

    </html>
