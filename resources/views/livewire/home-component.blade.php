<main id="main">
    <div class="container pt-20">
        <div class="wrap">
            <div class="banner-area banner-style-one">
                <div class="background-image" style="background-image: url({{ asset('assets/images/landing.jpg') }})">
                </div>
                <div class="border1"></div>
                <div class="border2"></div>
                <div class="border3"></div>
                <div class="border4"></div>
                <div class="heading-wrap">
                    <div class="heading">

                        <p class="two animated fadeInLeft">Hello.
                            <span class="animated fadeInRight">Welcome</span>
                        </p>


                        <div class="btn-wrap ">
                            <a href="/shop" class="button-prime-2 animated fade-in-up">Shop</a>
                        </div>

                    </div>
                </div>
            </div>


        </div>



        <div class="footer">

        </div>
    </div>

    {{-- LETTER SCROLL ANIMATION --}}
    <section class="content-section--fullpage">
        <div class="flex-wrapper">
            @foreach ($bannerproducts as $bannerproduct)
                <a href="{{ route('product.details', ['slug' => $bannerproduct->slug]) }}">
                    <div class="topbag">
                        <div class="demo-1">
                            <h3>{{ $bannerproduct->name }}</h3>
                        </div>
                    </div>
                </a>
            @endforeach
        </div>

    </section>
    <section class="content-section--fullpage"></section>


    <div class="container">


        <!--On Sale-->
        @if ($sproducts->count() > 0 && $sale->status == 1) {{-- && $sale->status == 1 && $sale->sale_date > Carbon\Carbon::now() --}}
            <div id="sale-items" class="wrap-show-advance-info-box style-1 has-countdown">
                <h3 class="title-box headline">On Sale</h3>
                <div class="wrap-countdown mercado-countdown" data-expire="2022/12/12 12:34:56"></div>
                {{-- {{ Carbon\Carbon::parse($sale->sale_date)->format('Y/M/D h:m:s') }} --}}
                <div class="wrap-products slide-carousel owl-carousel style-nav-1 equal-container " data-items="5"
                    data-loop="false" data-nav="true" data-dots="false"
                    data-responsive='{"0":{"items":"1"},"480":{"items":"2"},"768":{"items":"3"},"992":{"items":"4"},"1200":{"items":"5"}}'>

                    @foreach ($sproducts as $sproduct)
                        <div class="product product-style-2 equal-elem ">
                            <div class="product-thumnail">
                                <a href="{{ route('product.details', ['slug' => $sproduct->slug]) }}"
                                    title="{{ $sproduct->name }}">
                                    <figure><img src="{{ asset('assets/images/products/') }}/{{ $sproduct->image }}"
                                            width="800" height="800" alt="{{ $sproduct->name }}">
                                    </figure>
                                </a>
                                <div class="group-flash">
                                    <span class="flash-item sale-label">sale</span>
                                </div>
                                <div class="wrap-btn">
                                    <a href="{{ route('product.details', ['slug' => $sproduct->slug]) }}"
                                        class="function-link">quick view</a>
                                </div>
                            </div>
                            <div class="product-info">
                                <a href="{{ route('product.details', ['slug' => $sproduct->slug]) }}"
                                    class="product-name"><span>{{ $sproduct->name }}</span></a>
                                <div class="wrap-price"><ins>
                                        <p class="product-price">${{ $sproduct->sale_price }}</p>
                                    </ins><del>
                                        <p class="product-price">${{ $sproduct->regular_price }}</p>
                                    </del></div>
                            </div>
                        </div>
                    @endforeach

                </div>
            </div>
        @endif

        {{-- OUTDOOR SLIDER --}}

        <div class="pt-20">
            <a href="/shop">
                <div id="hero-slider">
                    <div id="logo" class="mask">
                        <span class="logo-text masked">Outdoor</span>
                    </div>
                    <div id="slideshow">
                        <div id="slides-main" class="slides">

                            <div class="slide" data-index="0">

                                <div class="abs-mask">
                                    <div class="slide-image"
                                        style="background-image: url({{ asset('assets/images/5_2020_09_16_tribu_portugal6794.jpg') }})">
                                    </div>
                                </div>

                            </div>

                            <div class="slide" data-index="1">
                                <div class="abs-mask">
                                    <div class="slide-image"
                                        style="background-image: url({{ asset('assets/images/nodi-divano-3sliderlandscape6.jpg') }})">
                                    </div>
                                </div>
                            </div>

                            <div class="slide" data-index="2">
                                <div class="abs-mask">
                                    <div class="slide-image"
                                        style="background-image: url({{ asset('assets/images/3_slider_landscape_7.jpg') }})">
                                    </div>
                                </div>
                            </div>

                            <div class="slide" data-index="3">
                                <div class="abs-mask">
                                    <div class="slide-image"
                                        style="background-image: url({{ asset('assets/images/1_spanje_2021_amanu261972_0.jpg') }})">
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div id="slides-aux" class="slides mask">
                            <h2 class="slide-title slide" data-index="0"><a href="#">#64 Tribú</a></h2>
                            <h2 class="slide-title slide" data-index="1"><a href="#">Industrial Works</a></h2>
                            <h2 class="slide-title slide" data-index="2"><a href="#">Futuristic</a></h2>
                            <h2 class="slide-title slide" data-index="3"><a href="#">High end furniture</a></h2>
                        </div>
                    </div>
                    {{-- <div id="info">
                <div class="slider-title-wrapper">
                    <span class="line"></span>
                    <h1 class="slider-title">
                        <span>SHOP</span>
                    </h1>
                </div>

            </div> --}}
                    <nav id="slider-nav">
                        <span class="current">01</span>
                        <span class="sep"></span>
                        <span class="total">04</span>
                    </nav>
                </div>
            </a>
        </div>

        <!--Latest Products-->
        <div id="new-items" class="wrap-show-advance-info-box style-1">
            <h3 class="title-box headline">Latest Products</h3>
            {{-- <div class="wrap-top-banner pt-20 pb-20">
            <a href="#" class="link-banner banner-effect-2">
                <figure><img src="{{ asset('assets/images/3-316-16-9-aspect-ratio-s-sfw-wallpaper-thumb.jpg') }}"
                        width="1170" height="240" alt="">
                </figure>
            </a>
        </div> --}}
            <div class="wrap-products">
                <div class="wrap-product-tab tab-style-1">
                    <div class="tab-contents">
                        <div class="tab-content-item active" id="digital_1a">
                            <div class="wrap-products slide-carousel owl-carousel style-nav-1 equal-container"
                                data-items="5" data-loop="false" data-nav="true" data-dots="false"
                                data-responsive='{"0":{"items":"1"},"480":{"items":"2"},"768":{"items":"3"},"992":{"items":"4"},"1200":{"items":"5"}}'>
                                @foreach ($latest_products as $latest_product)
                                    <div class="product product-style-2 equal-elem ">
                                        <div class="product-thumnail">
                                            <a href="{{ route('product.details', ['slug' => $latest_product->slug]) }}"
                                                title="{{ $latest_product->title }}">
                                                <figure><img
                                                        src="{{ asset('assets/images/products') }}/{{ $latest_product->image }}"
                                                        width="800" height="800" alt="{{ $latest_product->name }}">
                                                </figure>
                                            </a>
                                            <div class="group-flash">
                                                <span class="flash-item new-label">new</span>
                                            </div>
                                            <div class="wrap-btn">
                                                <a href="{{ route('product.details', ['slug' => $latest_product->slug]) }}"
                                                    class="function-link">quick view</a>
                                            </div>
                                        </div>
                                        <div class="product-info">
                                            <a href="{{ route('product.details', ['slug' => $latest_product->slug]) }}"
                                                class="product-name"><span>{{ $latest_product->name }}</span></a>
                                            <div class="wrap-price"><span
                                                    class="product-price">${{ $latest_product->regular_price }}</span>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        {{-- BANNER --}}
        <!--MAIN SLIDE-->
        <div class="wrap-main-slide pt-40">
            <div class="slide-carousel owl-carousel style-nav-1" data-items="1" data-loop="1" data-nav="true"
                data-dots="false">
                @foreach ($sliders as $slide)
                    <div class="item-slide">
                        <img src="{{ asset('assets/images/slides') }}/{{ $slide->image }}" alt=""
                            class="img-slide">
                        <div class="slide-info slide-1">
                            <h2 class="f-title"> <b>{{ $slide->title }}</b></h2>
                            <span class="subtitle">{{ $slide->subtitle }}</span>
                            <p class="sale-info">Only price: <span
                                    class="price">${{ $slide->price }}</span>
                            </p>
                            <a href="{{ $slide->link }}" class="btn-link">Shop Now</a>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>

        {{-- BANNER END --}}

        <!--BANNER-->
        <div class="wrap-banner style-twin-default">
            <div class="banner-item">
                <a href="/shop" class="link-banner banner-effect-1">
                    <figure><img src="{{ asset('assets/images/designer-sofa.jpeg') }}" alt="" width="580"
                            height="190">
                    </figure>
                </a>
                <p class="text">Dimgray Tribú <span>$2788</span></p>
            </div>
            <div class="banner-item">
                <a href="/shop" class="link-banner banner-effect-1">
                    <figure><img src="{{ asset('assets/images/BeatriceSlider.jpg') }}" alt="" width="580"
                            height="190">
                    </figure>
                </a>
                <p class="text">Gray Tribú <span>$3999</span></p>
            </div>
        </div>


        <!--Product Categories-->
        <div id="top-category-items" class="wrap-show-advance-info-box style-1">
            <h3 class="title-box headline">Product Categories</h3>
            {{-- <div class="wrap-top-banner">
                <a href="/shop" class="link-banner banner-effect-2">
                    <figure><img src="{{ asset('assets/images/sofacorner.jpg') }}" width="1170" height="240" alt="">
                    </figure>
                </a>
            </div> --}}
            <div class="wrap-products">
                <div class="wrap-product-tab tab-style-1">
                    <div class="tab-control">
                        @foreach ($categories as $key => $category)
                            <a href="#category_{{ $category->id }}"
                                class="tab-control-item {{ $key == 0 ? 'active' : '' }}">{{ $category->name }}</a>
                        @endforeach
                    </div>
                    <div class="tab-contents">
                        @foreach ($categories as $key => $category)
                            <div class="tab-content-item {{ $key == 0 ? 'active' : '' }}"
                                id="category_{{ $category->id }}">
                                <div class="wrap-products slide-carousel owl-carousel style-nav-1 equal-container"
                                    data-items="5" data-loop="false" data-nav="true" data-dots="false"
                                    data-responsive='{"0":{"items":"1"},"480":{"items":"2"},"768":{"items":"3"},"992":{"items":"4"},"1200":{"items":"5"}}'>
                                    @php
                                        $c_products = DB::table('products')
                                            ->where('category_id', $category->id)
                                            ->get()
                                            ->take($no_of_products);
                                    @endphp
                                    @foreach ($c_products as $c_product)
                                        <div class="product product-style-2 equal-elem">
                                            <div class="product-thumnail">
                                                <a href="{{ route('product.details', ['slug' => $c_product->slug]) }}"
                                                    title="{{ $c_product->name }}">
                                                    <figure><img
                                                            src="{{ asset('assets/images/products') }}/{{ $c_product->image }}"
                                                            width="800" height="800" alt="{{ $c_product->name }}">
                                                    </figure>
                                                </a>
                                                {{-- <div class="group-flash">
                                                    <span class="flash-item new-label">new</span>
                                                </div> --}}
                                                <div class="wrap-btn">
                                                    <a href="{{ route('product.details', ['slug' => $c_product->slug]) }}"
                                                        class="function-link">quick view</a>
                                                </div>
                                            </div>
                                            <div class="product-info">
                                                <a href="{{ route('product.details', ['slug' => $c_product->slug]) }}"
                                                    class="product-name"><span>{{ $c_product->name }}</span></a>
                                                <div class="wrap-price"><span
                                                        class="product-price">${{ $c_product->regular_price }}</span>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach

                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>



        <div class="container pb-20 pt-20">
            <!--/.cd-slider-->
            <div id="top-selling-items" class="cd-slider">
                <ul>
                    @foreach ($products as $product)
                        <li>
                            <div class="image"
                                style="background-image:url({{ asset('assets/images/products') }}/{{ $product->image }});">
                            </div>
                            <div class="content">
                                <div class="title-wrapper">
                                    <h2>{{ $product->name }}</h2>
                                </div>

                                <a class="button"
                                    href="{{ route('product.details', ['slug' => $product->slug]) }}">Shop now
                                    <img src="{{ asset('assets/images/icons/right-arrow-icon.svg') }}"
                                        alt="right-arrow-svg"></a>
                            </div>
                        </li>
                    @endforeach

                </ul>
            </div>
            <!--/.cd-slider-->
        </div>
    </div>
    {{-- TEXT SECTION --}}
    <section class="text-section pt-20">
        <div class="container">
            <h1 class="center">Product listing view</h1>
            {{-- PROLOGUE --}}
            <article class="episode animated">
                <div class="episode__number animated">00</div>
                <div class="episode__content">
                    <div class="title">Prologue</div>
                    <div class="story">
                        <p>Say hello to the perfection of Extrodinary- affordable, gorgeous, products. The products will
                            change automatically by day
                            and
                            will randomly choose products from the database. When the product is located it will be
                            displayed in the product listing view one at a time,
                            the
                            whole list view has been limited to three product items.</p>
                        <p>Products can be changed to only withhold the information desired, and all other information
                            regarding the product will be obsolete.

                        <p>The
                            products are wrapped in an a-href tag, and will be clickable. Once clicked user will be
                            redirected to the correct product item detail page. Only
                            here
                            will the product be available for purchase.</p>

                    </div>
                </div>
            </article>
            {{-- PROLOGUE END --}}

            @foreach ($articleproducts as $aproduct)
                <a href="{{ route('product.details', ['slug' => $aproduct->slug]) }}">
                    <article class="episode animated">
                        <div class="episode__number animated"> 0{{ $aproduct->id }}</div>
                        <div class="episode__content">
                            <div class="title">{{ $aproduct->name }}</div>
                            <div class="story">
                                <div class="title">Short Description</div>
                                <p>"{{ $aproduct->short_description }}"</p>
                                <div class="title">Description</div>
                                <p>"{{ $aproduct->description }}"</p>
                                <div class="title">Category</div>
                                <p>"{{ $aproduct->category->name }}"</p>
                                <div class="title">Created at</div>
                                <p>"{{ $aproduct->category->created_at }}"</p>
                                <div class="title">Price</div>
                                <p>"<strong>${{ $aproduct->regular_price }}</strong>"</p>
                            </div>
                        </div>
                    </article>
                </a>
            @endforeach
        </div>
    </section>
    {{-- TEXT SECTION END --}}


    <div class="container-fluid animation-wrapper pb-60">
        <div class="row">
            <div class="col-12">
                <!-- Container -->
                <div class="thumb">
                    <!-- Image -->
                    <a href="/shop">
                        <!-- Label -->
                        <span><strong>Shop right now at</strong>[myshop]</span>
                    </a>
                </div>
            </div>
            <div class="col-12">
                <div class="d-flex container">
                    @foreach ($ahrefproducts as $ahref)
                        <div class="a-links animated"><a
                                href="{{ route('product.details', ['slug' => $ahref->slug]) }}" id="foo"
                                class="br--img-text animated">{{ $ahref->name }} <img class="br--img-hover"
                                    src="{{ asset('assets/images/products') }}/{{ $ahref->image }}"></a>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>

    </div>
</main>
