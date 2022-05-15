<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Welcome</title>
    {{-- <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/video.css') }}"> --}}
    {{-- <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/animated-hero-text.css') }}"> --}}
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/ecommerce-template-hero.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    {{-- <script src="https://cdn.tailwindcss.com"></script> --}}
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/skeleton/2.0.4/skeleton.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">


</head>

<body>
    {{-- FULL VIDEO BACKGROUND UNCOMMENT THIS AND THE TWO CSS FILES ABOVE: video.css and animated-hero-text.css --}}

    {{-- <div class="container-fluid-video animate__animated animate__fadeIn">

        <header class='main-header animate__animated animate__fadeInUp'>
            <div class="menu-wrap">
                <!-- Logo container -->
                <a href='/' target='_blank' class="logo-wrap">
                    <img class="logo" src="{{ asset('assets/images/myshop.svg') }}" alt="Logo">
                </a>


                <!-- When this is checked, nav menu is dropped -->
                <input type='checkbox' id='nav-tog'>

                <!-- Hamburger btn -->
                <label for='nav-tog' class="drop-trigger">
                    <!-- Hamburg bars -->
                    <span class="btn-bar top"></span>
                    <span class='btn-bar middle'></span>
                    <span class='btn-bar bottom'></span>
                </label>

                <!-- Menu -->
                <nav class="main-nav">
                    <!-- This covers the whole background of the dropped menu -->
                    <label for='nav-tog' class='nav-revert'></label>

                    <!-- Menu items -->
                    <a href='{{ route('home') }}' class="nav-item">
                        <span> HOME </span>
                    </a>
                    <a href='/shop' class="nav-item">
                        <span> SHOP </span>
                    </a>
                    <a href='/about-us' class="nav-item">
                        <span> ABOUT </span>
                    </a>
                    <a href='/contact-us' class="nav-item">
                        <span> CONTACT </span>
                    </a>
                </nav>
            </div>
        </header>

        <div class="container">
            <div class="intro">

                <span>m</span>
                <span>y</span>
                <span>s</span>
                <span>h</span>
                <span>o</span>
                <span>p</span>
            </div>
            <a href="/home">
                <div class="btn from-right">Go to shop</div>
            </a>
        </div>

        <div class="video-wrapper">
            <div class="video-background">
                <div class="video-foreground">
                    <iframe
                        src="https://player.vimeo.com/video/282358944?autoplay=1&loop=1&title=0&byline=0&portrait=0&background=1"
                        frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                </div>
            </div>
            <div class="img-overlay visible-sm visible-xs"
                style="background-image: url(&quot;https://sitebuilder.realvolution.com/elements/images/bg/house-int-2.jpg&quot;); outline: medium none; cursor: inherit;"
                data-selector=".img-overlay"></div>
        </div>



    </div> --}}

    <div class="container-fluid">
        <div class="ecommerce">
            <a href="{{ route('home') }}" target="_blank">
                <div class="visit">Visit the live version here!
                </div>
            </a>

            <div class="container" style="padding-top: 80px;">
                <div class="row top">
                    <div class="twelve column pb-10">
                        <a href="https://laravel.com/" target="_blank">
                            <div class="logo animated animate__bounceIn" style="animation-delay: 0.1s;"><img
                                    src="{{ asset('assets/images/laravel-logo.png') }}"
                                    style="width: 200px; padding 0;">
                            </div>
                        </a>
                        <a href="https://gitlab.com/peterp4N1K/laravel-ecommerce-template">
                            <h1 class="fadeInUp">Laravel Ecommerce Template</h1>
                        </a>
                        <a href="https://gitlab.com/peterp4N1K/laravel-ecommerce-template">
                            <h2 class="fadeInUp" style="animation-delay: 0.6s;"> Open-source repository</h2>
                        </a>
                    </div>

                    <div class="pt-20 small fadeInUp" style="animation-delay: 0.8s;">
                        <strong>Notion</strong><cite>This is an exam project developed for a PBA, in Web development
                            spring 2022. This project has no associtation with Laravel professionally.
                            The laravel-ecommerce-template is a creation of the author of this website
                            built using the Laravel framework. All Laravel related assets used, copyrights goes to
                            Laravel.</cite>
                    </div>

                </div>



                <div class="row fadeInUp" style="animation-delay: 0.7s;">
                    <div class="one-half column">
                        <div class="pens pulled">
                            <a href="https://tallstack.dev/">
                                <h1>Stack</h1>
                            </a>

                            <ul>
                                <li class="fadeInUp" style="animation-delay: 0.8s;"><a target="_blank"
                                        rel="noopener noreferrer" href="https://laravel.com/docs/8.x">Laravel
                                        8</a></li>
                                <li class="fadeInUp" style="animation-delay: 0.9s;"><a target="_blank"
                                        rel="noopener noreferrer" href="https://www.php.net/docs.php">PHP 8.1</a>
                                </li>
                                <li class="fadeInUp" style="animation-delay: 1s;"><a target="_blank"
                                        rel="noopener noreferrer" href="https://www.mysql.com/">MySQL</a>
                                </li>
                                <li class="fadeInUp" style="animation-delay: 1.1s;"><a target="_blank"
                                        rel="noopener noreferrer"
                                        href="https://getbootstrap.com/docs/5.2/getting-started/introduction/">Bootstrap</a>
                                </li>
                                <li class="fadeInUp" style="animation-delay: 1.2s;"><a target="_blank"
                                        rel="noopener noreferrer" href="https://jquery.com/">jQuery</a>
                                </li>
                                <li class="fadeInUp" style="animation-delay: 1.3s;"><a target="_blank"
                                        rel="noopener noreferrer" href="https://alpinejs.dev/start-here">Alpine.js</a>
                                </li>
                                <li class="fadeInUp" style="animation-delay: 1.4s;"><a target="_blank"
                                        rel="noopener noreferrer"
                                        href="https://tailwindcss.com/docs/installation">Tailwind.css</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="one-half column">
                        <div class="posts pulled">
                            <h1>CRUD</h1>
                            <ul>
                                <li class="fadeInUp" style="animation-delay: 0.8s;"><a
                                        href="https://www.j-w-v.com/writing/index.php/20-awe-inspiring-codepen-examples-you-can-learn-from"
                                        target="_blank" rel="noopener noreferrer">Edit, upload and create products
                                    </a></li>
                                <li class="fadeInUp" style="animation-delay: 0.9s;"><a
                                        href="https://www.j-w-v.com/writing/index.php/hero-images-20-free-places-to-find-them"
                                        target="_blank" rel="noopener noreferrer">Assign category &amp; subcategory
                                        to a
                                        product</a></li>
                                <li class="fadeInUp" style="animation-delay: 1s;"><a
                                        href="https://www.j-w-v.com/writing/index.php/18-mobile-first-css-frameworks"
                                        target="_blank" rel="noopener noreferrer">Upload and edit product images</a>
                                </li>
                                <li class="fadeInUp" style="animation-delay: 1.1s;"><a
                                        href="https://www.j-w-v.com/writing/index.php/how-i-grew-as-a-javascript-developer"
                                        target="_blank" rel="noopener noreferrer">Edit price, and other product
                                        information
                                        from the admin user routes </a></li>
                                <li class="fadeInUp" style="animation-delay: 1.2s;"><a
                                        href="https://www.j-w-v.com/writing/index.php/css-s-undersung-property-box-sizing"
                                        target="_blank" rel="noopener noreferrer"> </a></li>
                                <li class="fadeInUp" style="animation-delay: 1.3s;">
                                    <p>Access now on <a href="https://github.com/pete04h3/laravel-ecommerce-template"
                                            target="_blank">Github</a>
                                        &amp; <a href="https://gitlab.com/peterp4N1K/laravel-ecommerce-template"
                                            target="_blank">Gitlab</a>
                                        or </p>


                                    <a class="deploy-heroku fadeInUp" style="animation-delay: 1.4s;"
                                        href="https://heroku.com/deploy">
                                        <img src="https://www.herokucdn.com/deploy/button.svg" alt="Deploy">
                                    </a>

                                </li>
                                <div class="icon-wrapper fadeInUp" style="animation-delay: 1.5s;">
                                    <li class="fadeInUp" style="animation-delay: 1.6s;"><a
                                            href="https://github.com/pete04h3/laravel-ecommerce-template"
                                            target="_blank">
                                            <i class="fab fa-github"></i></a></li>
                                    <li class="fadeInUp" style="animation-delay: 1.7s;"><a
                                            href="https://gitlab.com/peterp4N1K/laravel-ecommerce-template"
                                            target="_blank"><i class="fa-brands fa-gitlab"></i></a></li>
                                </div>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container fadeInUp" style="animation-delay: 0.5s;">
                <div class="footer">
                    <p>Made using the tall stack <a href="https://alpinejs.dev/start-here">Alpine.js</a>, <a
                            href="https://tailwindcss.com/docs/installation">Tailwind.css</a> & <a
                            href="https://laravel.com/docs/8.x">Laravel</a>
                    </p>
                    <a href="{{ route('home') }}">
                        <div class="btn-wrapper">
                            <button class="pure-material-button-contained">Visit shop <i
                                    class="fas fa-shopping-cart"></i></button>
                        </div>
                    </a>

                </div>
            </div>

            {{-- COOKIE BANNER --}}

            {{-- <div x-data="{ open: !localStorage.getItem('hide-cookie-banner') }" x-show="open" x-transition:enter-start="opacity-0 scale-90"
                x-transition:enter="transition duration-200 transform ease"
                x-transition:leave="transition duration-200 transform ease" x-transition:leave-end="opacity-0 scale-90"
                class="animate__animated animate__fadeInUp bg-black bottom-0 drop-shadow-2xl fixed flex flex-wrap gap-4 items-center justify-center main-header md:flex-nowrap md:justify-between md:text-left mx-auto p-5 text-center text-white">
                <div class="w-full flex flex-wrap">
                    <div class="flex flex-wrap justify-center md:justify-start md:text-left text-center">
                        <p>This website uses cookies to ensure you get the best experience on our
                            website.</p>
                        <a href="https://ec.europa.eu/info/cookies_en" target="_blank"
                            class="learn-more text-indigo-600 whitespace-nowrap hover:underline">Learn more</a>
                    </div>

                </div>
                <div class="flex gap-4 items-center flex-shrink-0">
                    <!-- setTimeout is for demo purposes only. Remove it & add to cookies
                 so that the popup won't appear next time they load. -->
                    <button @click="open = false, setTimeout(() => open = true, 1500)"
                        class="text-red-100 text-xs text-lightgray focus:outline-none hover:underline">Decline</button>
                    <button @click="localStorage.setItem('hide-cookie-banner', true); open = false;"
                        @click="open = false, setTimeout(() => open = true, 1500)"
                        class="text-xs text-white hover:underline">Allow
                        Cookies</button>
                </div>
            </div> --}}
        </div>
    </div>


    <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
</body>

</html>
