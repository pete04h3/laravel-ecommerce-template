<div>
    <style>
        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {}

        a,
        a:hover,
        a:focus,
        a:active {
            text-decoration: none;
            outline: none;
        }

        a,
        a:active,
        a:focus {
            color: #6f6f6f;
            text-decoration: none;
            transition-timing-function: ease-in-out;
            -ms-transition-timing-function: ease-in-out;
            -moz-transition-timing-function: ease-in-out;
            -webkit-transition-timing-function: ease-in-out;
            -o-transition-timing-function: ease-in-out;
            transition-duration: .2s;
            -ms-transition-duration: .2s;
            -moz-transition-duration: .2s;
            -webkit-transition-duration: .2s;
            -o-transition-duration: .2s;
        }

        ul {
            margin: 0;
            padding: 0;
            list-style: none;
        }

        img {
            max-width: 100%;
            height: auto;
        }

        section {
            padding: 60px 0;
            /* min-height: 100vh;*/
        }

        .sec-title {
            position: relative;
            z-index: 1;
            margin-bottom: 60px;
        }

        .sec-title .title {
            position: relative;
            display: block;
            font-size: 18px;
            line-height: 24px;
            color: #000000;
            font-weight: 500;
            margin-bottom: 15px;
        }

        .sec-title h2 {
            position: relative;
            display: block;
            font-size: 40px;
            line-height: 1.28em;
            color: #222222;
            font-weight: 600;
            padding-bottom: 18px;
        }

        .sec-title h2:before {
            position: absolute;
            content: '';
            left: 0px;
            bottom: 0px;
            width: 50px;
            height: 3px;
            background-color: #d1d2d6;
        }

        .sec-title .text {
            position: relative;
            font-size: 16px;
            line-height: 26px;
            color: #848484;
            font-weight: 400;
            margin-top: 35px;
        }

        .sec-title.light h2 {
            color: #ffffff;
        }

        .sec-title.text-center h2:before {
            left: 50%;
            margin-left: -25px;
        }

        .list-style-one {
            position: relative;
        }

        .list-style-one li {
            position: relative;
            font-size: 16px;
            line-height: 26px;
            color: #222222;
            font-weight: 400;
            margin-bottom: 12px;
        }


        .list-style-one li a:hover {
            color: #44bce2;
        }

        .btn-style-one {
            position: relative;
            display: inline-block;
            font-size: 17px;
            line-height: 30px;
            color: #ffffff !important;
            padding: 10px 30px;
            font-weight: 600;
            overflow: hidden;
            letter-spacing: 0.02em;
            border-radius: 5px;
            background-color: #0501ec;
        }

        .btn-style-one:hover {
            background-color: #000000;
            color: #ffffff !important;
        }

        .about-section {
            position: relative;
            padding: 120px 0 70px;
            /* background: #cbd6fa; */
        }

        .about-section .sec-title {
            margin-bottom: 45px;
        }

        .about-section .content-column {
            position: relative;
            margin-bottom: 50px;
        }

        .about-section .content-column .inner-column {
            position: relative;
            padding-left: 30px;
        }

        .about-section .text {
            margin-bottom: 40px;
            font-size: 16px;
            line-height: 26px;
            color: #848484;
            font-weight: 400;
        }

        .about-section .list-style-one {
            margin-bottom: 45px;
        }

        .about-section .btn-box {
            position: relative;
        }

        .about-section .btn-box a {
            background: transparent;
            border: 1px solid black;
            color: black !important;
            transition: all 0.1s ease-in-out;
            -webkit-transition: all 0.1s ease-in-out;
            -moz-transition: all 0.1s ease-in-out;
            -o-transition: all 0.1s ease-in-out;

        }

        .about-section .btn-box a:hover {
            background: black;
            color: white !important;
            filter: drop-shadow(0px 1px 2px black);

        }

        .about-section .image-column {
            position: relative;
        }

        .about-section .image-column .text-layer {
            position: absolute;
            right: -110px;
            top: 50%;
            font-size: 325px;
            line-height: 1em;
            color: #ffffff;
            margin-top: -175px;
            font-weight: 500;
        }

        .about-section .image-column .inner-column {
            position: relative;
            padding-left: 120px;
            padding-bottom: 125px;
            display: block;
        }

        @media screen and (max-width: 1200px) {
            .about-section .image-column .inner-column {
                display: none;
            }
        }

        .about-section .image-column .inner-column:before {
            position: absolute;
            left: 70px;
            top: 65px;
            height: 520px;
            width: 520px;
            background-image: url(https://i.ibb.co/fxJ1jtC/about-circle-1.png);
            content: "";
        }

        .about-section .image-column .image-1 {
            position: relative;
        }

        .about-section .image-column .image-2 {
            position: absolute;
            left: 0;
            bottom: 0;
        }

        .about-section .image-column .image-2 img,
        .about-section .image-column .image-1 img {
            box-shadow: 0 30px 50px rgba(8, 13, 62, .15);
        }

        .about-section .image-column .video-link {
            position: absolute;
            left: 70px;
            top: 170px;
        }

        .about-section .image-column .video-link .link {
            position: relative;
            display: block;
            font-size: 22px;
            color: #191e34;
            font-weight: 400;
            text-align: center;
            height: 100px;
            width: 100px;
            line-height: 100px;
            background-color: #ffffff;
            border-radius: 50%;
            box-shadow: 0 30px 50px rgba(8, 13, 62, .15);
            -webkit-transition: all 300ms ease;
            -moz-transition: all 300ms ease;
            -ms-transition: all 300ms ease;
            -o-transition: all 300ms ease;
            transition: all 300ms ease;
        }

        .about-section .image-column .video-link .link:hover {
            background-color: #191e34;
            color: #ffffff;
        }

    </style>

    <section class="about-section">
        <div class="container">
            <div class="row">
                <div class="content-section-wrap">
                    <div class="content-column col-lg-6 col-md-12 col-sm-12 order-2">
                        <div class="inner-column">
                            <div class="sec-title">
                                <span class="title">About Us</span>
                                <h2>We are have been in the <br>Industrial market Since 1992</h2>
                            </div>
                            <div class="text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                                eiusmod
                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                cillum dolore eu fugiat nulla pariatur.</div>
                            <ul class="list-style-one">
                                <li>Lorem Ipsum is simply dummy tex</li>
                                <li>Consectetur adipisicing elit</li>
                                <li>Sed do eiusmod tempor incididunt</li>
                            </ul>
                            <div class="btn-box">
                                <a href="/contact-us" class="theme-btn btn-style-one">Contact Us</a>
                            </div>
                            {{-- <figure>
                                <img src="{{asset('assets/images/')}}" alt="">
                            </figure> --}}
                        </div>




                    </div>
                </div>
    </section>
</div>
