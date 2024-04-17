<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="WebApplication1._Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
   <link rel="shortcut icon" href="../favicon.png" />
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--font-family-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />

    <link href="https://fonts.googleapis.com/css?family=Rufina:400,700" rel="stylesheet" />


    <!-- For favicon png -->
    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png" />

    <!--font-awesome.min.css-->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" />

    <!--linear icon css-->
    <link rel="stylesheet" href="assets/css/linearicons.css" />

    <!--flaticon.css-->
    <link rel="stylesheet" href="assets/css/flaticon.css" />

    <!--animate.css-->
    <link rel="stylesheet" href="assets/css/animate.css" />

    <!--owl.carousel.css-->
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="assets/css/owl.theme.default.min.css" />

    <!--bootstrap.min.css-->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />

    <!-- bootsnav -->
    <link rel="stylesheet" href="assets/css/bootsnav.css" />

    <!--style.css-->
    <link rel="stylesheet" href="assets/css/style.css" />

    <!--responsive.css-->
    <link rel="stylesheet" href="assets/css/responsive.css" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->




    <style type="text/css">
        /* Reset some default styles */
        .support-sec {
            height: 390px;
            padding: 30px;
            /* justify-content: center; */
            flex-direction: column;
            display: flex;
            background-color: whitesmoke;
        }

            .support-sec .txt {
                display: flex;
                flex-direction: column;
                align-items: center;
                row-gap: 10px;
            }

                .support-sec .txt .txt1 {
                    font-size: 3rem;
                    font-weight: 700;
                }

                    .support-sec .txt .txt1 span {
                        color: #0043ff8c;
                    }

            .support-sec .main-sec {
                display: flex;
                justify-content: center;
                align-items: center;
                margin-top: 30px;
                column-gap: 10px;
                flex-wrap: wrap;
                row-gap: 10px;
            }

                .support-sec .main-sec .box {
                    /* background: red; */
                    padding: 20px;
                    width: 575px;
                    display: flex;
                    column-gap: 36px;
                    /* flex-direction: column; */
                    row-gap: 20px;
                }

                    .support-sec .main-sec .box i {
                        font-size: 30px;
                        background: #0043ff8c;
                        width: fit-content;
                        padding: 34px;
                        border-radius: 15px;
                    }

                    .support-sec .main-sec .box .txt-sec {
                        display: flex;
                        flex-direction: column;
                        row-gap: 10px;
                    }

                        .support-sec .main-sec .box .txt-sec .txt1 {
                            font-size: 30px;
                            font-weight: 700;
                        }

        html {
            box-sizing: border-box;
        }

        *, *:before, *:after {
            box-sizing: border-box;
        }

        body {
            font-family: sans-serif;
            font-size: 16px;
            line-height: 1.5;
            background: #f5f5f5;
        }

        body, h1, h2, ul, li {
            margin: 0;
            padding: 0;
        }

        nav ul {
            list-style: none;
            padding-left: 0;
            margin-top: 0;
            margin-bottom: 0;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
            color: white;
            width: 500px;
            margin: 100px auto 20px;
        }

        /* Navigation Styles */



        .nav a {
            display: block;
            line-height: inherit;
            cursor: default;
        }

        .nav__menu {
            list-style: none;
            margin: 0;
            display: flex;
        }

        .nav__menu {
            font-weight: 500;
            text-transform: uppercase;
        }

        .nav {
            padding-left: 25px;
            padding-right: 50px;
        }

        .nav__menu-item {
            margin: 0;
            padding: 15px;
            position: relative;
        }

            .nav__menu-item a {
                color: #fff;
                text-decoration: none;
                display: block;
            }

        .nav__submenu {
            display: none;
            position: absolute;
            top: 100%;
            left: 0;
            background: #333;
            border-top: 2px solid #fff; /* White border between menu items and submenus */
            border-radius: 10px;
        }

        .nav__submenu-item {
            padding: 10px;
        }

        /* Hover effect on anchor tags */
        .nav__menu-item:hover > a {
            border: 2px solid #fff; /* White border on hover */
            padding: 5px;
            border-radius: 5px;
        }

        /* Show submenu on hover */
        .nav__menu-item:hover .nav__submenu {
            display: block;
        }

        /* Style the links inside the submenu */
        .nav__submenu-item a {
            color: #fff;
        }

        /* Hover effect on submenu anchor tags */
        .nav__submenu-item:hover > a {
            border: 2px solid transparent; /* Transparent border on hover */
            padding: 2.5px;
            border-radius: 5px;
        }

        /* Add a subtle transition effect */
        .nav__menu-item a, .nav__submenu-item a {
            transition: border-color 1s ease-in;
        }

        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');

        body {
            line-height: 1.5;
            font-family: 'Poppins', sans-serif;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .container {
            max-width: 1170px;
            margin: auto;
        }

        .row {
            display: flex;
            flex-wrap: wrap;
        }

        ul {
            list-style: none;
        }

        .footer {
            background-color: #24262b;
            padding: 70px 0;
        }

        .footer-col {
            width: 25%;
            padding: 0 15px;
        }

            .footer-col h4 {
                font-size: 18px;
                color: #ffffff;
                text-transform: capitalize;
                margin-bottom: 35px;
                font-weight: 500;
                position: relative;
            }

                .footer-col h4::before {
                    content: '';
                    position: absolute;
                    left: 0;
                    bottom: -10px;
                    background-color: #e91e63;
                    height: 2px;
                    box-sizing: border-box;
                    width: 50px;
                }

            .footer-col ul li:not(:last-child) {
                margin-bottom: 10px;
            }

            .footer-col ul li a {
                font-size: 16px;
                text-transform: capitalize;
                color: #ffffff;
                text-decoration: none;
                font-weight: 300;
                color: #bbbbbb;
                display: block;
                transition: all 0.3s ease;
            }

                .footer-col ul li a:hover {
                    color: #ffffff;
                    padding-left: 8px;
                }

            .footer-col .social-links a {
                display: inline-block;
                height: 40px;
                width: 40px;
                background-color: rgba(255,255,255,0.2);
                margin: 0 10px 10px 0;
                text-align: center;
                line-height: 40px;
                border-radius: 50%;
                color: #ffffff;
                transition: all 0.5s ease;
            }

                .footer-col .social-links a:hover {
                    color: #24262b;
                    background-color: #ffffff;
                }

        /*responsive*/
        @media(max-width: 767px) {
            .footer-col {
                width: 50%;
                margin-bottom: 30px;
            }
        }

        @media(max-width: 574px) {
            .footer-col {
                width: 100%;
            }
        }





        .footer {
            background-color: #24262b;
            padding: 70px 0;
        }

        .footer-col {
            width: 25%;
            padding: 0 15px;
        }

            .footer-col h4 {
                font-size: 18px;
                color: #ffffff;
                text-transform: capitalize;
                margin-bottom: 35px;
                font-weight: 500;
                position: relative;
            }

                .footer-col h4::before {
                    content: '';
                    position: absolute;
                    left: 0;
                    bottom: -10px;
                    background-color: #e91e63;
                    height: 2px;
                    box-sizing: border-box;
                    width: 50px;
                }

            .footer-col ul li:not(:last-child) {
                margin-bottom: 10px;
            }

            .footer-col ul li a {
                font-size: 16px;
                text-transform: capitalize;
                color: #ffffff;
                text-decoration: none;
                font-weight: 300;
                color: #bbbbbb;
                display: block;
                transition: all 0.3s ease;
            }

                .footer-col ul li a:hover {
                    color: #ffffff;
                    padding-left: 8px;
                }

            .footer-col .social-links a {
                display: inline-block;
                height: 40px;
                width: 40px;
                background-color: rgba(255,255,255,0.2);
                margin: 0 10px 10px 0;
                text-align: center;
                line-height: 40px;
                border-radius: 50%;
                color: #ffffff;
                transition: all 0.5s ease;
            }

                .footer-col .social-links a:hover {
                    color: #24262b;
                    background-color: #ffffff;
                }

        /*responsive*/
        @media(max-width: 767px) {
            .footer-col {
                width: 50%;
                margin-bottom: 30px;
            }
        }

        @media(max-width: 574px) {
            .footer-col {
                width: 100%;
            }
        }








        /*===============================
    Scroll Top
===============================*/
        #scroll-Top .return-to-top {
            position: fixed;
            right: 30px;
            bottom: 30px;
            display: none;
            width: 40px;
            line-height: 40px;
            height: 40px;
            text-align: center;
            font-size: 20px;
            cursor: pointer;
            color: #fff;
            background: #4e4ffa;
            border: 1px solid #4e4ffa;
            border-radius: 50%;
            -webkit-transition: .5s;
            -moz-transition: .5s;
            -o-transition: .5s;
            transition: .5s;
            z-index: 2;
        }

            #scroll-Top .return-to-top:hover {
                background: #fff;
                color: #4e4ffa;
                border: 1px solid #4e4ffa;
            }

            #scroll-Top .return-to-top i {
                position: relative;
                bottom: 0;
            }

            #scroll-Top .return-to-top i {
                position: relative;
                animation-name: example;
                animation-direction: alternate;
                animation-iteration-count: infinite;
                animation-duration: 1s;
            }

        @keyframes example {
            0% {
                bottom: 0px;
            }

            100% {
                bottom: 7px;
            }
        }

        @keyframes example {
            0% {
                bottom: 0px;
            }

            100% {
                bottom: 7px;
            }
        }

        .auto-style7 {
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
            width: 1600px;
        }

        .auto-style11 {
            width: 240px;
            height: 193px;
            margin-left: 22px;
        }

        .auto-style12 {
            width: 280px;
            height: 197px;
            margin-left: 22px;
        }

        .auto-style13 {
            position: relative;
            width: 242px;
            -ms-flex: 0 0 100%;
            flex: 0 0 100%;
            max-width: 100%;
            left: 0px;
            top: 0px;
            height: 197px;
            padding-left: 15px;
            padding-right: 15px;
        }

        .auto-style14 {
            position: relative;
            width: 227px;
            -ms-flex: 0 0 100%;
            flex: 0 0 100%;
            max-width: 100%;
            left: 0px;
            top: 0px;
            height: 195px;
            padding-left: 15px;
            padding-right: 15px;
        }

        .auto-style15 {
            width: 91px;
        }

        .auto-style16 {
            width: 100%;
            border: 1px solid #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!--[if lte IE 9]>
            <p class="browserupgrade"><strong></strong><a href="https://browsehappy.com/"></a> </p>
        <![endif]-->

            <!--welcome-hero start -->
            <section id="home" class="welcome-hero">

                <!-- top-area Start -->
                <div class="top-area">
                    <div class="header-area">
                        <!-- Start Navigation -->
                        <nav class="navbar navbar-default bootsnav  navbar-sticky navbar-scrollspy" data-minus-value-desktop="70" data-minus-value-mobile="55" data-speed="1000">

                            <div class="auto-style7">

                                <!-- Start Header Navigation -->
                                <div class="navbar-header" style="color: #0000FF; font-weight: bold">
                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                                        <i class="fa fa-bars"></i>
                                    </button>
                                    <a class="navbar-brand" href="#">CARMART</a><br />

                                </div>
                                <!--/.navbar-header-->
                                <!-- End Header Navigation -->

                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="collapse navbar-collapse menu-ui-design" id="navbar-menu">
                                    <ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp" style="margin-right: 50px;">
                                        <li class=" scroll active"><a href="#home"><b>Home</b></a></li>
                                        <li class="nav-item dropdown text-light">
                                            <a class="nav-link dropdown-toggle" href="#" id="nav_menu-item" aria-haspopup="true" aria-expanded="true">
                                                <b>Explore Cars</b>
                                            </a>
                                            <div class="nav__menu-item" aria-labelledby="nav__menu-item">
                                                <ul class="nav__submenu">
                                                    <li class="nav__submenu-item"><a href="../clientcarcompany.aspx?cartype=New">New Cars</a></li>
                                                    <li class="nav__submenu-item"><a href="../clientcarcompany.aspx?cartype=Old">Old Cars</a></li>
                                                    <li class="nav__submenu-item"><a href="../clientcarcompany.aspx?cartype=Electric">Electric Cars</a></li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="#"><a href="../aboutus.aspx"><b>About Us</b></a></li>
                                        <li class="#"><a href="../Contact.aspx"><b>Contact Us</b></a></li>
                                        <li class="scroll"><a href="#featured-cars"><b>Upcoming Cars</b></a></li>

                                        <li class="#"><a href="../clientdealersdetails.aspx"><b>Car Dealers</b></a></li>

                                        <li class="#"><a href="../faq.aspx"><b>FAQs</b></a></li>
                                        <li class="nav-item dropdown text-light">
                                            <a class="nav-link dropdown-toggle" href="#" id="nav__menu-item" aria-haspopup="true" aria-expanded="true">
                                                <b>Settings</b>
                                            </a>
                                            <div class="nav__menu-item" aria-labelledby="nav__menu-item" style="width: 230px;">
                                                <ul class="nav__submenu">
                                                    <li class="nav__submenu-item"><a href="../managecustomeraccount.aspx">Manage Account</a></li>
                                                    <li class="nav__submenu-item"><a href="../ordershistory.aspx">Order History</a></li>
                                                    <li class="nav__submenu-item"><a href="../testdrivehistory.aspx">Test Drive History</a></li>
                                                    <li class="nav__submenu-item"><a href="../resetcustomerpassword.aspx">Reset Password</a></li>
                                                    <li class="nav__submenu-item"><a href="../deletecustomeraccount.aspx">Delete Account</a></li>
                                                    <li class="nav__submenu-item">
                                                        <asp:Button ID="logout" CssClass="btn" Width="200px" Font-Bold="True" runat="server" Text="Logout" PostBackUrl="../loginpage.aspx" /></li>

                                                </ul>
                                            </div>
                                        </li>

                                    </ul>
                                </div>
                                <div>
                                </div>




                            </div>
                        </nav>
                        <!-- /.navbar-collapse -->
                    </div>
                    <!--/.container-->

                    <!-- End Navigation -->
                </div>

                <!--/.header-area-->
                <div class="clearfix"></div>


                <!-- top-area End -->


                <div class="container">
                    <div class="welcome-hero-txt">
                        <h2>Welcome  
                            <asp:Label ID="username" runat="server" Text="" Font-Bold="True" ForeColor="#0066FF"></asp:Label>
                            get your desired car in resonable price
							Online car seller
                        </h2>
                        <p>


                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" PostBackUrl="../Contact.aspx" Text="Contact Us" Width="150px" Height="60px" />


                        </p>

                    </div>
                </div>









            </section>
            <!--/.welcome-hero-->
            <!--welcome-hero end -->



           <!--new-cars start -->
            <section id="new-cars" class="new-cars">
                <div class="container">
                    <div class="section-header">
                        <p>checkout <span>the</span> latest cars</p>
                        <h2>newest cars</h2>
                    </div>
                    <!--/.section-header-->
                    <div class="new-cars-content" style="font-family: 'times New Roman', 'times serif'; color: #FFFFFF; font-weight: bold;">
                        <div class="owl-carousel owl-theme" id="new-cars-carousel">
                            <div class="new-cars-item">
                                <div class="single-new-cars-item">
                                    <div class="row">
                                        <div class="col-md-7 col-sm-12">
                                            <div class="new-cars-img">
                                                <img src="../images/homepageimages/newlandcruiser.png" alt="img" />
                                            </div>
                                            <!--/.new-cars-img-->
                                        </div>
                                        <div class="col-md-5 col-sm-12">
                                            <div class="new-cars-txt">
                                                <h2><a href="#">Toyota Land Cruiser <span></span></a></h2>
                                                <p>
                                                </p>
                                                <p class="new-cars-para2">
                                                    <table style="background-color: lightblue">
                                                        <tr style="border: solid">
                                                            <td style="font-family: 'Times New Roman'">Price</td>
                                                            <td style="font-family: 'Times New Roman'">Rs.2.10 Crore</td>
                                                        </tr>
                                                        <tr style="border: solid">
                                                            <td style="font-family: 'Times New Roman'">Engine</td>
                                                            <td style="font-family: 'Times New Roman'">3386 cc</td>
                                                        </tr>
                                                        <tr style="border: solid">
                                                            <td style="font-family: 'Times New Roman'">Safety</td>
                                                            <td style="font-family: 'Times New Roman'">5 Star (Global NCAP)</td>
                                                        </tr>
                                                        <tr style="border: solid">
                                                            <td style="font-family: 'Times New Roman'">FuelType</td>
                                                            <td style="font-family: 'Times New Roman'">Petrol&Diesel</td>
                                                        </tr>
                                                        <tr style="border: solid">
                                                            <td style="font-family: 'Times New Roman'">Transmission</td>
                                                            <td style="font-family: 'Times New Roman'">Manual&Automatic</td>
                                                        </tr>
                                                        <tr style="border: solid">
                                                            <td style="font-family: 'Times New Roman'">Seat-Capacity</td>
                                                            <td style="font-family: 'Times New Roman'">7 Seater</td>
                                                        </tr>

                                                    </table>

                                                </p>

                                            </div>
                                            <!--/.new-cars-txt-->
                                        </div>
                                        <!--/.col-->
                                    </div>
                                    <!--/.row-->
                                </div>
                                <!--/.single-new-cars-item-->
                            </div>
                            <!--/.new-cars-item-->
                            <div class="new-cars-item">
                                <div class="single-new-cars-item">
                                    <div class="row">
                                        <div class="col-md-7 col-sm-12">
                                            <div class="new-cars-img">
                                                <img src="../images/homepageimages/newthar.png" alt="img" />
                                            </div>
                                            <!--/.new-cars-img-->
                                        </div>
                                        <div class="col-md-5 col-sm-12">
                                            <div class="new-cars-txt">
                                                <h2><a href="#">Mahindra Thar</a></h2>

                                                <p class="new-cars-para2">
                                                    <table style="background-color: lightblue">
                                                        <tr style="border: solid">
                                                            <td style="font-family: 'Times New Roman'">Price</td>
                                                            <td style="font-family: 'Times New Roman'">Rs. 15 Lakh onwards</td>
                                                        </tr>
                                                        <tr style="border: solid">
                                                            <td style="font-family: 'Times New Roman'">Engine</td>
                                                            <td style="font-family: 'Times New Roman'">1497 to 2184 cc</td>
                                                        </tr>
                                                        <tr style="border: solid">
                                                            <td style="font-family: 'Times New Roman'">Safety</td>
                                                            <td style="font-family: 'Times New Roman'">5 Star (Global NCAP)</td>
                                                        </tr>
                                                        <tr style="border: solid">
                                                            <td style="font-family: 'Times New Roman'">FuelType</td>
                                                            <td style="font-family: 'Times New Roman'">Petrol&Diesel</td>
                                                        </tr>
                                                        <tr style="border: solid">
                                                            <td style="font-family: 'Times New Roman'">Transmission</td>
                                                            <td style="font-family: 'Times New Roman'">Manual&Automatic</td>
                                                        </tr>
                                                        <tr style="border: solid">
                                                            <td style="font-family: 'Times New Roman'">Seat-Capacity</td>
                                                            <td style="font-family: 'Times New Roman'">6&7Seater</td>
                                                        </tr>






                                                    </table>


                                                </p>

                                            </div>
                                            <!--/.new-cars-txt-->
                                        </div>
                                        <!--/.col-->
                                    </div>
                                    <!--/.row-->
                                </div>
                                <!--/.single-new-cars-item-->
                            </div>
                            <!--/.new-cars-item-->
                            <div class="new-cars-item">
                                <div class="single-new-cars-item">
                                    <div class="row">
                                        <div class="col-md-7 col-sm-12">
                                            <div class="new-cars-img">
                                                <img src="../images/homepageimages/newscorpio.png" alt="img" />
                                            </div>
                                            <!--/.new-cars-img-->
                                        </div>
                                        <div class="col-md-5 col-sm-12">
                                            <div class="new-cars-txt">
                                                <h2><a href="#">Mahindra Scorpio</a></h2>

                                                <table style="background-color: lightblue">
                                                    <tr style="border: solid">
                                                        <td>Price</td>
                                                        <td>Rs. 19.00 Lakh onwards</td>
                                                    </tr>
                                                    <tr style="border: solid">
                                                        <td style="font-family: 'Times New Roman'">Engine</td>
                                                        <td style="font-family: 'Times New Roman'">1997 to 2184 cc</td>
                                                    </tr>
                                                    <tr style="border: solid">
                                                        <td style="font-family: 'Times New Roman'">Safety</td>
                                                        <td style="font-family: 'Times New Roman'">5 Star (Global NCAP)</td>
                                                    </tr>
                                                    <tr style="border: solid">
                                                        <td style="font-family: 'Times New Roman'">FuelType</td>
                                                        <td style="font-family: 'Times New Roman'">Petrol&Diesel</td>
                                                    </tr>
                                                    <tr style="border: solid">
                                                        <td style="font-family: 'Times New Roman'">Transmission</td>
                                                        <td style="font-family: 'Times New Roman'">Manual&Automatic</td>
                                                    </tr>
                                                    <tr style="border: solid">
                                                        <td style="font-family: 'Times New Roman'">Seat-Capacity</td>
                                                        <td style="font-family: 'Times New Roman'">6&7Seater</td>
                                                    </tr>






                                                </table>


                                            </div>
                                            <!--/.new-cars-txt-->
                                        </div>
                                        <!--/.col-->
                                    </div>
                                    <!--/.row-->
                                </div>
                                <!--/.single-new-cars-item-->
                            </div>
                            <!--/.new-cars-item-->
                        </div>
                        <!--/#new-cars-carousel-->




                    </div>
                    <!--/.new-cars-content-->
                </div>
                <!--/.container-->

            </section>
            <!--/.new-cars-->
            <!--new-cars end -->
             <section class="support-sec">
                <div class="txt">
                    <p class="txt1" style="color: #3399FF; font-weight: bold; font-size: xx-large">Why <span>Choose</span> Us</p>

                </div>

                <div class="main-sec">
                    <div class="box">
                        <i class="fa fa-clock-o" style="background-color: #FFCC99"></i>
                        <div class="txt-sec">
                            <p class="txt1" style="font-weight: bold; color: #000000;">24 Hour Support</p>
                            <p>24/7 support from chatbot.</p>
                        </div>
                    </div>

                    <div class="box">
                        <i class="fa fa-flag-checkered" style="background-color: #FFCC99"></i>
                        <div class="txt-sec">
                            <p class="txt1" style="font-weight: bold; color: #000000">Best Price</p>
                            <p>Cars at best and discounted price.</p>
                        </div>
                    </div>

                    <div class="box">
                        <i class="fa fa-check-circle-o" style="width: 110px; height: 100px; background-color: #FFCC99;"></i>
                        <div class="txt-sec">
                            <p class="txt1" style="color: #000000; font-weight: bold">Verified License</p>
                            <p>Free of charge car paper.</p>
                        </div>
                    </div>

                    <div class="box">
                        <i class="fa fa-money" style="height: 95px; width: 113px; background-color: #FFCC99;"></i>
                        <div class="txt-sec">
                            <p class="txt1" style="font-weight: bold; color: #000000">Free Cancellation</p>
                            <p>Free Cancellation till 15th day from order date.</p>
                        </div>
                    </div>
                </div>
            </section>

            <!--featured-cars start -->
            <section id="featured-cars" class="featured-cars">
                <div class="container">
                    <div class="section-header">
                        <p>checkout <span>the Upcoming </span>&nbsp;cars</p>
                        <h2 style="font-family: 'times New Roman', Times, serif; text-decoration: blink; font-weight: bold">Upcoming Cars </h2>
                    </div>
                    <!--/.section-header-->
                    <div class="featured-cars-content">
                        <div class="row">
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="single-featured-cars">
                                    <div class="featured-img-box">
                                        <div class="featured-cars-img">
                                            <img src="../images/upcomingcars/upcomingpalisade.png" alt="cars" class="auto-style11" />
                                        </div>
                                        <div class="featured-model-info">
                                            <p>
                                                Model: 2024<span class="featured-mi-span">3800 cc</span>
                                                <span class="featured-hp-span">Petrol/Diesel</span>
                                                Manual/Automatic
                                            </p>
                                        </div>
                                    </div>
                                    <div class="featured-cars-txt">
                                        <h2>Hyundai Palisade</h2>
                                        <br />
                                        <h3>400000</h3>
                                        <p>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="single-featured-cars">
                                    <div class="featured-img-box">
                                        <div class="featured-cars-img">
                                            <img src="../images/upcomingcars/upcomingsantafe.png" alt="cars" class="auto-style11" style="width: 200px; height: 200px;" />
                                        </div>
                                        <div class="featured-model-info">

                                            <p>
                                                Model: 2025<span class="featured-mi-span">1998 cc</span>
                                                <span class="featured-hp-span">Petrol/Diesel</span>
                                                Manual/Automatic
                                            </p>
                                        </div>
                                    </div>
                                    <div class="featured-cars-txt">
                                        <h2>Hyundai Santa Fe</h2>
                                        <br />
                                        <h3>500000</h3>
                                        <p>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="single-featured-cars">
                                    <div class="featured-img-box">
                                        <div class="featured-cars-img">
                                            <img src="../images/upcomingcars/upcomingevx.png" alt="cars" class="auto-style11" style="width: 200px; height: 200px;" />
                                        </div>
                                        <div class="featured-model-info">
                                            <p>
                                                model: 2024
											<span class="featured-mi-span"></span>
                                                <span class="featured-hp-span">Electric</span>
                                                Manual/Automatic
                                            </p>
                                        </div>
                                    </div>
                                    <div class="featured-cars-txt">
                                        <h2>Maruti EVX</h2>
                                        <br />
                                        <h3>2200000</h3>
                                        <p>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="single-featured-cars">
                                    <div class="featured-img-box">
                                        <div class="featured-cars-img">
                                            <img src="../images/upcomingcars/upcomingbelta.png" alt="cars" class="auto-style11" style="width: 200px; height: 200px;" />
                                        </div>
                                        <div class="featured-model-info">
                                            <p>
                                                Model: 2024
											<span class="featured-mi-span">1462 cc</span>
                                                <span class="featured-hp-span">Petrol/Diesel</span>
                                                Manual/Automatic
                                            </p>
                                        </div>
                                    </div>
                                    <div class="featured-cars-txt">
                                        <h2>Toyota Belta</h2>
                                        <br />
                                        <h3>1000000</h3>
                                        <p>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="single-featured-cars">
                                    <div class="featured-img-box">
                                        <div class="featured-cars-img">
                                            <img src="../images/upcomingcars/upcominglandcruiser.png" alt="cars" class="auto-style11" style="width: 200px; height: 200px;" />
                                        </div>
                                        <div class="featured-model-info">
                                            <p>
                                                Model: 2024
											<span class="featured-mi-span">2998 cc</span>
                                                <span class="featured-hp-span">Petrol/Diesel</span>
                                                Manual/Automatic
                                            </p>
                                        </div>
                                    </div>
                                    <div class="featured-cars-txt">
                                        <h2>Toyota Land Cruiser 250</h2>
                                        <br />
                                        <h3>10000000</h3>
                                        <p>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="single-featured-cars">
                                    <div class="featured-img-box">
                                        <div class="featured-cars-img">
                                            <img src="../images/upcomingcars/upcomingcamry.png" alt="cars" class="auto-style11" style="width: 200px; height: 200px;" />
                                        </div>
                                        <div class="featured-model-info">
                                            <p>
                                                Model: 2025
											<span class="featured-mi-span">2487 cc</span>
                                                <span class="featured-hp-span">Petrol/Diesel</span>
                                                Manual/Automatic
                                            </p>
                                        </div>
                                    </div>
                                    <div class="featured-cars-txt">
                                        <h2>Toyota Camry 2024</h2>
                                        <br />
                                        <h3>5000000</h3>
                                        <p>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="single-featured-cars">
                                    <div class="featured-img-box">
                                        <div class="featured-cars-img">
                                            <img src="../images/upcomingcars/upcomingtucson.png" alt="cars" class="auto-style11" style="width: 200px; height: 200px;" />
                                        </div>
                                        <div class="featured-model-info">
                                            <p>
                                                Model: 2024
											<span class="featured-mi-span">1999 cc</span>
                                                <span class="featured-hp-span">Petrol/Diesel</span>
                                                Manual/Automatic
                                            </p>
                                        </div>
                                    </div>
                                    <div class="featured-cars-txt">
                                        <h2>Hyundai Tucson 2024</h2>
                                        <br />
                                        <h3>3000000</h3>
                                        <p>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="single-featured-cars">
                                    <div class="featured-img-box">
                                        <div class="featured-cars-img">
                                            <img src="../images/upcomingcars/upcomingkona.png" alt="cars" class="auto-style11" style="width: 200px; height: 200px;" />
                                        </div>
                                        <div class="featured-model-info">
                                            <p>
                                                Model: 2025
											<span class="featured-mi-span"></span>
                                                <span class="featured-hp-span">Petrol/Diesel</span>
                                                Automatic/Manual
                                            </p>
                                        </div>
                                    </div>
                                    <div class="featured-cars-txt">
                                        <h2>Hyundai Kona Electric 2024</h2>
                                        <br />
                                        <h3>2500000</h3>
                                        <p>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/.container-->

            </section>
            <!--/.featured-cars-->
            <!--featured-cars end -->

            <center><span style="font-size: 30px; color: black;">Our Partners</span></center>
            <!--brand strat -->
            <section id="brand" class="brand" style="margin-bottom: 20px;">

                <div class="container">
                    <div class="brand-area">

                        <div class="owl-carousel owl-theme brand-item">
                            <div class="item">
                                <a href="../companyhyundai.aspx">
                                    <img src="../images/carcompanylogo/hyundai.png" alt="brand-image" class="auto-style15" />
                                </a>
                            </div>
                            <!--/.item-->
                            <div class="item">
                                <a href="../companysuzuki.aspx">
                                    <img src="../images/carcompanylogo/suzuki.png" alt="brand-image" class="auto-style16" />
                                </a>
                            </div>
                            <!--/.item-->
                            <div class="item">
                                <a href="../companytatamotors.aspx">
                                    <img src="../images/carcompanylogo/tatamotors.png" alt="brand-image" class="auto-style11" />
                                </a>
                            </div>
                            <!--/.item-->
                            <div class="item">
                                <a href="../companymahindra.aspx">
                                    <img src="../images/carcompanylogo/mahindra.png" alt="brand-image" class="auto-style13" />
                                </a>
                            </div>
                            <!--/.item-->

                            <div class="item">
                                <a href="../companytoyota.aspx">
                                    <img src="../images/carcompanylogo/toyota.png" alt="brand-image" class="auto-style14" />
                                </a>
                            </div>
                            <!--/.item-->


                            <div class="item">
                                <a href="../companykiamotors.aspx">
                                    <img src="../images/carcompanylogo/kia.png" href="comtmotors.aspx" alt="brand-image" class="auto-style12" />
                                </a>
                            </div>
                            <!--/.item-->
                        </div>
                        <!--/.owl-carousel-->
                    </div>
                    <!--/.clients-area-->

                </div>
                <!--/.container-->

            </section>
            <!--/brand-->
            <!--brand end -->

            <!--blog start -->
            <section id="blog" class="blog"></section>
            <!--/.blog-->
            <!--blog end -->
            <footer class="footer">
                <div class="container">
                    <div class="row">
                        <div class="footer-col">
                            <h4>CARMART</h4>
                            <ul>
                                <li><span style="color: darkgrey;">Head Office: 100-A, ABC Business Centre, Vesu, Surat</span></li>

                                <li><span style="color: darkgrey;">carmart@gmail.com</span></li>

                                <li><span style="color: darkgrey;">+91 3829384920</span></li>

                            </ul>
                        </div>
                        <div class="footer-col">
                            <h4>More Information</h4>
                            <ul>
                                <li><a href="../aboutus.aspx">About Us</a></li>
                                <br />
                                <li><a href="../Contact.aspx">Contact Us</a></li>
                                <br />
                                <li><a href="../faq.aspx">FAQ</a></li>
                            </ul>
                        </div>
                        <div class="footer-col">
                            <h4>Our Partners</h4>
                            <ul>
                                <li><a href="../companytatamotors.aspx">Tata Motors</a></li>
                                <br />
                                <li><a href="../companysuzuki.aspx">Maruti Suzuki</a></li>
                                <br />
                                <li><a href="../companykiamotors.aspx">Kia Motors</a></li>
                                <br />
                                <li><a href="../companyhyundai.aspx">Hyundai</a></li>
                                <br />
                                <li><a href="../companymahindra.aspx">Mahindra</a></li>
                                <br />
                                <li><a href="../companytoyota.aspx">Toyota</a></li>


                            </ul>
                        </div>
                        <div class="footer-col">
                            <h4>Follow us on Social Media</h4>
                            <ul>
                                <li><a href="#">Instagram</a></li>
                                <br />
                                <li><a href="#">Facebook</a></li>
                                <br />
                                <li><a href="#">Twitter</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </footer>
            <div id="scroll-Top">
                <div class="return-to-top">
                    <i class="fa fa-angle-up " id="scroll-top" data-toggle="tooltip" data-placement="top" title="" data-original-title="Back to Top" aria-hidden="true"></i>
                </div>

            </div>
            <!--/.scroll-Top-->

            <!-- Include all js compiled plugins (below), or include individual files as needed -->

            <script src="assets/js/jquery.js"></script>

            <!--modernizr.min.js-->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>

            <!--bootstrap.min.js-->
            <script src="assets/js/bootstrap.min.js"></script>

            <!-- bootsnav js -->
            <script src="assets/js/bootsnav.js"></script>

            <!--owl.carousel.js-->
            <script src="assets/js/owl.carousel.min.js"></script>

            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>

            <!--Custom JS-->
            <script src="assets/js/custom.js"></script>
        </div>
    </form>
</body>
</html>
