<!doctype html>
<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)

    End Sub
</script>

<html class="no-js" lang="en">

    <head>
       <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!--font-family-->
		<link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

		<link href="https://fonts.googleapis.com/css?family=Rufina:400,700" rel="stylesheet">
        
        <!-- title of site -->
        <title>CarVilla</title>

        <!-- For favicon png -->
		<link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>
       
        <!--font-awesome.min.css-->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">

        <!--linear icon css-->
		<link rel="stylesheet" href="assets/css/linearicons.css">

        <!--flaticon.css-->
		<link rel="stylesheet" href="assets/css/flaticon.css">

		<!--animate.css-->
        <link rel="stylesheet" href="assets/css/animate.css">

        <!--owl.carousel.css-->
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
		<link rel="stylesheet" href="assets/css/owl.theme.default.min.css">
		
        <!--bootstrap.min.css-->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
		
		<!-- bootsnav -->
		<link rel="stylesheet" href="assets/css/bootsnav.css" >	
        
        <!--style.css-->
        <link rel="stylesheet" href="assets/css/style.css">
        
        <!--responsive.css-->
        <link rel="stylesheet" href="assets/css/responsive.css">
        
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		
        <!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

		 
        <style type="text/css">
          
			/* Reset some default styles */

 html {
    box-sizing: border-box;
  }
  
  *, *:before, *:after {
    box-sizing: border-box;
  }

  body
  {
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
    color:white;

    width: 500px;
    margin: 100px auto 20px;
  }
  
  /* Navigation Styles */
  
  

  .nav a {
    display: block;
    line-height: inherit;
    cursor:default;
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
  .contact {
    background: #000000;
}
.footer-top {padding: 112px 0 72px;}

/*.footer-logo*/
.footer-logo a,.footer-logo a:hover,.footer-logo a:focus{
    display: inline-block;
    color: #fff;
    font-size: 24px;
    letter-spacing: 3px;
    font-family: 'Rufina', serif;
    font-weight: 700;
    text-transform:uppercase;
}
.single-footer-widget p {
    font-size: 14px;
    color: #eeeff6;
    max-width: 300px;
    margin:40px 0 20px;
}
.footer-contact p {
    margin: 0;
    color: #d1d7e9;
}
/*.footer-logo*/

.single-footer-widget {margin-bottom: 40px;}
.single-footer-widget h2 {
    font-size: 14px;
    color: #fff;
    text-transform: uppercase;
    margin-bottom: 43px;
}
.single-footer-widget ul li {
    display:  inherit;
    -webkit-transition: .5s; 
    -moz-transition:.5s; 
    -ms-transition:.5s; 
    -o-transition:.5s;
    transition: .5s;
}
.single-footer-widget ul li:hover{
    -webkit-transform:translateX(10px);
    -moz-transform:translateX(10px);
    -ms-transform:translateX(10px);
    -o-transform:translateX(10px);
    transform:translateX(10px);
}
.single-footer-widget ul li a {
    font-size:  14px;
    color:  #cfd0e3;
    font-weight:  300;
    padding-bottom: 13px;
}
.single-footer-widget ul li a span {text-transform: lowercase;}
.footer-newsletter p{
    color: #aeafc2;
    font-size: 14px;
    font-weight: 300;
    margin: 0 0 15px;
}
/*hm-foot-email*/
.hm-foot-email{position: relative;}
.foot-email-box .form-control {
    background:#26294d;
    display: block;
    padding: 15px 20px;
    outline:0!important;
    box-shadow:0 5px 15px rgba(0,0,0,.2);
    border:0;
}
.foot-email-box input[type="text"]{
    font-size: 12px;
    color: #666c81;
    font-weight: 300;
}
.foot-email-subscribe {
    position: absolute;
    top: 0;
    right: 0;
    width: 50px;
    height:100%;
    background: transparent;
    color: #666c81;
    font-size: 12px;
    display: flex;
    align-items: center;
    justify-content: center;
}
.foot-email-box .form-control:hover{
    box-shadow:0 5px 15px rgba(0,0,0,.4);
}
/*hm-foot-email*/
/*.footer-copyright */
.footer-copyright {
    padding: 20px 0 17px;
    border-top: 1px solid #434859;
}
.footer-copyright p,.footer-copyright p a {
    color: #a8a9bf;
    font-size: 14px;
    font-weight: 400;
    text-transform: capitalize;
}
.footer-social{text-align: right;}
.footer-social a i {
    color: #fff;
    opacity: .40;
    font-size: 14px;
    margin-left: 16px;
    -webkit-transition: .3s; 
    -moz-transition:.3s; 
   
    -o-transition:.3s;
    transition: .3s;
}
.footer-social i:hover{opacity: .70;}
/*.footer-copyright */

/*===============================
    Scroll Top
===============================*/
#scroll-Top  .return-to-top {
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
    background:#4e4ffa;
	border:1px solid #4e4ffa;
	border-radius:50%;
	-webkit-transition: .5s; 
	-moz-transition:.5s; 
	-ms-transition:.5s; 
	-o-transition:.5s;
    transition: .5s;
	z-index: 2;
}
#scroll-Top  .return-to-top:hover {
    background:#fff;
    color: #4e4ffa;
	border:1px solid #4e4ffa;
}

#scroll-Top  .return-to-top i{
    position:relative;
    bottom:0;

}

#scroll-Top  .return-to-top i{
    position: relative;
    animation-name: example;
    animation-direction: alternate;
    animation-iteration-count: infinite;
    animation-duration:1s;
}
@keyframes example {
    0%   {bottom:0px;}
    100%  {bottom:7px;}
}

            .auto-style1 {
                width: 246px;
                height: 213px;
            }
            .auto-style2 {
                width: 242px;
                height: 197px;
            }
            .auto-style3 {
                width: 223px;
                height: 169px;
            }
            .auto-style4 {
                width: 219px;
                height: 218px;
            }
            .auto-style5 {
                width: 233px;
                height: 171px;
            }
            .auto-style6 {
                width: 269px;
                height: 173px;
            }

        </style>

    </head>
	
	<body>
		<form id="form1" runat="server">
	<!--[if lte IE 9]>
            <p class="browserupgrade"><strong></strong><a href="https://browsehappy.com/"></a> </p>
        <![endif]-->
	
		<!--welcome-hero start -->
		<section id="home" class="welcome-hero">

			<!-- top-area Start -->
			<div class="top-area">
				<div class="header-area">
					<!-- Start Navigation -->
				    <nav class="navbar navbar-default bootsnav  navbar-sticky navbar-scrollspy"  data-minus-value-desktop="70" data-minus-value-mobile="55" data-speed="1000">

				        <div class="container">

				            <!-- Start Header Navigation -->
				            <div class="navbar-header">
				                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
				                    <i class="fa fa-bars"></i>
				                </button>
				                <a class="navbar-brand" href="index.html">Carmart<span></span></a>

				            </div><!--/.navbar-header-->
				            <!-- End Header Navigation -->

				            <!-- Collect the nav links, forms, and other content for toggling -->
				            <div class="collapse navbar-collapse menu-ui-design" id="navbar-menu">
				                <ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
				                    <li class=" scroll active"><a href="#home">Home</a></li>
				                    <li class="#"><a href="../aboutus.aspx">About-us</a></li>
									 <li class="#"><a href="../Contact.aspx">Contact-us</a></li>
				                    <li class="scroll"><a href="#featured-cars">Upcoming Cars</a></li>
				                     <li class="nav-item dropdown text-light">
        <a class="nav-link dropdown-toggle" href="#" id="nav_menu-item"  aria-haspopup="true" aria-expanded="true">
          <b>explore cars</b>
        </a>
        <div class="nav__menu-item" aria-labelledby="nav__menu-item">
          <ul class="nav__submenu">
        <li class="nav__submenu-item"><a href="../clientcarcompany.aspx?cartype=New">New Cars</a></li>
        <li class="nav__submenu-item"> <a href="../clientcarcompany.aspx?cartype=Old">Old Cars</a></li>
        <li class="nav__submenu-item"> <a href="../clientcarcompany.aspx?cartype=Old">Electric Cars</a></li>
      </ul>
        </div>
      </li>
			<li class="nav-item dropdown text-light">
        <a class="nav-link dropdown-toggle" href="#" id="nav__menu-item"  aria-haspopup="true" aria-expanded="true">
          <b>Settings</b>
        </a>
        <div class="nav__menu-item" aria-labelledby="nav__menu-item">
          <ul class="nav__submenu">
	    <li class="nav__submenu-item"><a href="../managecustomeraccount.aspx">managecustomeraccount</a></li>
        <li class="nav__submenu-item"><a href="../ordershistory.aspx">OrderHistory</a></li>
        <li class="nav__submenu-item"> <a href="../testdrivehistory.aspx">Test Drive History</a></li>
        <li class="nav__submenu-item"> <a href="../resetcustomerpassword.aspx">resetcustomerpassword</a></li>
		<li class="nav__submenu-item"> <a href="../deletecustomeraccount.aspx">deletecustomeraccount</a></li>
	    <li class="nav__submenu-item"> <a href="../loginpage.aspx">Logout</a></li>
      </ul>
        </div>
      </li>
									 </ul>
                </div>
               

									
				            </div><!-- /.navbar-collapse -->
				        </div><!--/.container-->
				 
				    <!-- End Navigation -->
				</div><!--/.header-area-->
			    <div class="clearfix"></div>
			
			
			<!-- top-area End -->


			<div class="container">
				<div class="welcome-hero-txt">
					<h2>get your desired car in resonable price
							Online car seller
                    </h2>
					<p>
					
						<asp:Button ID="Button1" runat="server" CssClass="welcome-btn" Text="Contact-us" OnClick="Button1_Click" PostBackUrl="~/Contact.aspx" />
					</p>
					
				</div>
			</div>

	
		

			
								
									
								

		</section><!--/.welcome-hero-->
		<!--welcome-hero end -->

		

		<!--new-cars start -->
		<section id="new-cars" class="new-cars">
			<div class="container">
				<div class="section-header">
					<p>checkout <span>the</span> latest cars</p>
					<h2>newest cars</h2>
				</div><!--/.section-header-->
				<div class="new-cars-content">
					<div class="owl-carousel owl-theme" id="new-cars-carousel">
						<div class="new-cars-item">
							<div class="single-new-cars-item">
								<div class="row">
									<div class="col-md-7 col-sm-12">
										<div class="new-cars-img">
											<img src="../images/cars/newlandcruiser.png" alt="img" class="auto-style9"/>
										</div><!--/.new-cars-img-->
									</div>
									<div class="col-md-5 col-sm-12">
										<div class="new-cars-txt">
											<h2><a href="#">New Lancrusier <span> za100</span></a></h2>
											<p>
												 
											</p>
											<p class="new-cars-para2">
												
											</p>
											<button class="welcome-btn new-cars-btn" onclick="window.location.href='#'">
												view details
											</button>
										</div><!--/.new-cars-txt-->	
									</div><!--/.col-->
								</div><!--/.row-->
							</div><!--/.single-new-cars-item-->
						</div><!--/.new-cars-item-->
						<div class="new-cars-item">
							<div class="single-new-cars-item">
								<div class="row">
									<div class="col-md-7 col-sm-12">
										<div class="new-cars-img">
											<img src="../images/cars/newjimny.png" alt="img" class="auto-style10"/>
										</div><!--/.new-cars-img-->
									</div>
									<div class="col-md-5 col-sm-12">
										<div class="new-cars-txt">
											<h2><a href="#">Mahindra Thar</a></h2>
											<p>
												automatic hardtop guise at the time of the launch. 
												The 2WD model is recommended for those who are not looking for a hardcore 4x4 and instead, want a rugged-looking vehicle with good road presence and a unique proposition. The Thar 2WD is available in three variants and with two engine options. 

Appearance-wise, the only visual change is that there is no 4x4 badge on the rear-three-quarters of the Thar 2WD. Mahindra has also added two new paint options – Blazing Bronze and Everest White. 

Mahindra Thar Car Specifications:
Engine	1497 to 2184 cc
Safety	4 Star (Global NCAP)
Transmission	Manual & Automatic
Seating Capacity	4 Seater
											</p>
											<p class="new-cars-para2">
												Sed ut pers unde omnis iste natus error sit voluptatem accusantium doloremque laudantium. 
											</p>
											<button class="welcome-btn new-cars-btn" onclick="window.location.href='#'">
												view details
											</button>
										</div><!--/.new-cars-txt-->	
									</div><!--/.col-->
								</div><!--/.row-->	
							</div><!--/.single-new-cars-item-->
						</div><!--/.new-cars-item-->
						<div class="new-cars-item">
							<div class="single-new-cars-item">
								<div class="row">
									<div class="col-md-7 col-sm-12">
										<div class="new-cars-img">
											<img src="../images/cars/newscorpio.png" alt="img"/>
										</div><!--/.new-cars-img-->
									</div>
									<div class="col-md-5 col-sm-12">
										<div class="new-cars-txt">
											<h2><a href="#">Scorpio</a></h2>
											<p>
												Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. 
											</p>
											<p class="new-cars-para2">
												Sed ut pers unde omnis iste natus error sit voluptatem accusantium doloremque laudantium. 
											</p>
											<button class="welcome-btn new-cars-btn" onclick="window.location.href='#'">
												view details
											</button>
										</div><!--/.new-cars-txt-->	
									</div><!--/.col-->
								</div><!--/.row-->
							</div><!--/.single-new-cars-item-->
						</div><!--/.new-cars-item-->
					</div><!--/#new-cars-carousel-->
				</div><!--/.new-cars-content-->
			</div><!--/.container-->

		</section><!--/.new-cars-->
		<!--new-cars end -->

		<!--featured-cars start -->
		<section id="featured-cars" class="featured-cars">
			<div class="container">
				<div class="section-header">
					<p>checkout <span>the Upcoming </span>&nbsp;cars</p>
					<h2>Upcoming Cars cars</h2>
				</div><!--/.section-header-->
				<div class="featured-cars-content">
					<div class="row">
						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="single-featured-cars">
								<div class="featured-img-box">
									<div class="featured-cars-img">
										<img src="../images/cars/newharrier.png" alt="cars" class="auto-style1">
									</div>
									<div class="featured-model-info">
										<p>
											model: 2017
											<span class="featured-mi-span"> 3100 mi</span> 
											<span class="featured-hp-span"> 240HP</span>
											 automatic
										</p>
									</div>
								</div>
								<div class="featured-cars-txt">
									<h2><a href="#">Tata Harrier</a></h2>
									<h3>170000</h3>
									<p>
										
									</p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="single-featured-cars">
								<div class="featured-img-box">
									<div class="featured-cars-img">
										<img src="../images/cars/newfortuner.png" alt="cars" class="auto-style2">
									</div>
									<div class="featured-model-info">
										<p>
											model: 2017
											<span class="featured-mi-span"> 3100 mi</span> 
											<span class="featured-hp-span"> 240HP</span>
											 automatic
										</p>
									</div>
								</div>
								<div class="featured-cars-txt">
									<h2><a href="#">Fortuner 4*4 <span>Legender</span></a></h2>
									<h3>550000</h3>
									<p>
										
									</p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="single-featured-cars">
								<div class="featured-img-box">
									<div class="featured-cars-img">
										<img src="../images/cars/newsonet.png" alt="cars" class="auto-style3">
									</div>
									<div class="featured-model-info">
										<p>
											model: 2017
											<span class="featured-mi-span"> 3100 mi</span> 
											<span class="featured-hp-span"> 240HP</span>
											 automatic
										</p>
									</div>
								</div>
								<div class="featured-cars-txt">
									<h2><a href="#">Kia <span>v520</span></a></h2>
									<h3>1300000</h3>
									<p>
										
									</p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="single-featured-cars">
								<div class="featured-img-box">
									<div class="featured-cars-img">
										<img src="../images/cars/newvenue.png" alt="cars" class="auto-style3">
									</div>
									<div class="featured-model-info">
										<p>
											model: 2017
											<span class="featured-mi-span"> 3100 mi</span> 
											<span class="featured-hp-span"> 240HP</span>
											 automatic
										</p>
									</div>
								</div>
								<div class="featured-cars-txt">
									<h2><a href="#">hyundai <span>a3</span>venue</a></h2>
									<h3>800000</h3>
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
										<img src="../images/cars/newexter.png" alt="cars" class="auto-style2">
									</div>
									<div class="featured-model-info">
										<p>
											model: 2017
											<span class="featured-mi-span"> 3100 mi</span> 
											<span class="featured-hp-span"> 240HP</span>
											 automatic
										</p>
									</div>
								</div>
								<div class="featured-cars-txt">
									<h2><a href="#">newexteri <span>z5</span></a></h2>
									<h3>700000</h3>
									<p>
										
									</p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="single-featured-cars">
								<div class="featured-img-box">
									<div class="featured-cars-img">
										<img src="../images/cars/newpunch.png" alt="cars" class="auto-style4">
									</div>
									<div class="featured-model-info">
										<p>
											model: 2017
											<span class="featured-mi-span"> 3100 mi</span> 
											<span class="featured-hp-span"> 240HP</span>
											 automatic
										</p>
									</div>
								</div>
								<div class="featured-cars-txt">
									<h2><a href="#">porsche <span>718</span> cayman</a></h2>
									<h3>210000</h3>
									<p>
										
									</p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="single-featured-cars">
								<div class="featured-img-box">
									<div class="featured-cars-img">
										<img src="../images/cars/newinnova.png" alt="cars" class="auto-style5">
									</div>
									<div class="featured-model-info">
										<p>
											model: 2017
											<span class="featured-mi-span"> 3100 mi</span> 
											<span class="featured-hp-span"> 240HP</span>
											 automatic
										</p>
									</div>
								</div>
								<div class="featured-cars-txt">
									<h2><a href="#"><span>New Enova</a></h2>
									<h3>1800000</h3>
									<p>
										
									</p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="single-featured-cars">
								<div class="featured-img-box">
									<div class="featured-cars-img">
										<img src="../images/cars/newinnova.png" alt="cars" class="auto-style6">
									</div>
									<div class="featured-model-info">
										<p>
											model: 2017
											<span class="featured-mi-span"> 3100 mi</span> 
											<span class="featured-hp-span"> 240HP</span>
											 automatic
										</p>
									</div>
								</div>
								<div class="featured-cars-txt">
									<h2><a href="#"><span>bmw 8-</span>series coupe</a></h2>
									<h3>$56,000</h3>
									<p>
										
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div><!--/.container-->

		</section><!--/.featured-cars-->
		<!--featured-cars end -->

		
		<!--brand strat -->
		<section id="brand"  class="brand">
			<div class="container">
				<div class="brand-area">
					<div class="owl-carousel owl-theme brand-item">
						<div class="item">
							<a href="#">
								<img src="../images/carcompanylogo/hyundai.png" alt="brand-image" class="auto-style15" />
							</a>
						</div><!--/.item-->
						<div class="item">
							<a href="#">
								<img src="../images/carcompanylogo/suzuki.png" alt="brand-image" class="auto-style16" />
							</a>
						</div><!--/.item-->
						<div class="item">
							<a href="#">
								<img src="../images/carcompanylogo/tatamotors.png" alt="brand-image" class="auto-style11" />
							</a>
						</div><!--/.item-->
						<div class="item">
							<a href="#">
								<img src="../images/carcompanylogo/mahindra.png" alt="brand-image" class="auto-style13" />
							</a>
						</div><!--/.item-->

						<div class="item">
							<a href="#">
								<img src="../images/carcompanylogo/toyota.png" alt="brand-image" class="auto-style14" />
							</a>
						</div><!--/.item-->

						<div class="item">
							<a href="#">
								<img src="assets/images/brand/br6.png" alt="brand-image" />
							</a>
						</div>
						<div class="item">
							<a href="#">
								<img src="../images/carcompanylogo/kia.png" alt="brand-image" class="auto-style12" />
							</a>
						</div><!--/.item-->
					</div><!--/.owl-carousel-->
				</div><!--/.clients-area-->

			</div><!--/.container-->

		</section><!--/brand-->	
		<!--brand end -->

		<!--blog start -->
		<section id="blog" class="blog"></section><!--/.blog-->
		<!--blog end -->
			   <!--contact start-->
		<footer id="contact"  class="contact">
			<div class="container">
				<div class="footer-top">
					<div class="row">
						<div class="col-md-3 col-sm-6">
							<div class="single-footer-widget">
								<div class="footer-logo">
									<a href="index.html">Carmart</a>
								</div>
								<p>
									
								</p>
								<div class="footer-contact">
									<p>info@carmart.com</p>
									<p>+1 (885) 2563154554</p>
								</div>
							</div>
						</div>
						<div class="col-md-2 col-sm-6">
							<div class="single-footer-widget">
								<h2>about Carmart</h2>
								<ul>
									<li><a href="#">about us</a></li>
									<li><a href="#">career</a></li>
									<li><a href="#">terms <span> of service</span></a></li>
									<li><a href="#">privacy policy</a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-3 col-xs-12">
							<div class="single-footer-widget">
								<h2>top brands</h2>
								<div class="row">
									<div class="col-md-7 col-xs-6">
										<ul>
											<li><a href="#">TATA</a></li>
											<li><a href="#">HYUNDAI</a></li>
											<li><a href="#">KAI</a></li>
											<li><a href="#">MAHINDRA</a></li>
											<li><a href="#">TOYOTA</a></li>
											<li><a href="#">SUZUKI</a></li>
										</ul>
									</div>
									
								</div>
							</div>
						</div>
						<div class="col-md-offset-1 col-md-3 col-sm-6">
							<div class="single-footer-widget">
								<h2>SOCIAL-MEDIA</h2>
								<div class="footer-newsletter">
									<p>
										Subscribe to get latest news  update and informations
									</p>
								</div>
								<div class="social-links">
  	 				<a href="#"><i class="fab fa-facebook-f"></i></a>
  	 				<a href="#"><i class="fab fa-twitter"></i></a>
  	 				<a href="#"><i class="fab fa-instagram"></i></a>
  	 				<a href="#"><i class="fab fa-linkedin-in"></i></a>
  	 			</div>
							</div>
						</div>
					</div>
				</div><center>
				<div class="footer-copyright">
					<div class="row">
						<div class="col-sm-6">
							
							<p>
								
								
	 copyright.designed and developed by Heet dayani.
							</p>><!--/p-->
						</div>
						
					</div>
				</div><!--/.footer-copyright-->
			</div><!--/.container-->
            
		
			</footer>
				<div id="scroll-Top">
				<div class="return-to-top">
					<i class="fa fa-angle-up " id="scroll-top" data-toggle="tooltip" data-placement="top" title="" data-original-title="Back to Top" aria-hidden="true"></i>
				</div>
				
			</div><!--/.scroll-Top-->
		
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
        
        </form>
        
    </body>
	
</html>