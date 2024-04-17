<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="carcompany.aspx.vb" Inherits="WebApplication1.carcompany" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cars Companies</title>
    <link rel="shortcut icon" href="../LogoImg/favicon.png" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width-device, initial-scale=1" />

    <%--1-Bootstrap CSS--%>
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <%--2-Datatabel CSS--%>
    <link href="../datatable/css/jquery.dataTables.min.css" rel="stylesheet" />

    <%--3-Fontawesome CSS--%>
    <link href="../fontawesome/css/all.css" rel="stylesheet" />

    <%--4-Jquery jS--%>
    <script src="../bootstrap/js/jquery-3.3.1.slim.min.js"></script>

    <%--5-Popper JS--%>
    <script src="../bootstrap/js/popper.min.js"></script>

    <%--6-Bootstrap Js--%>
    <script src="../bootstrap/js/bootstrap.min.js"></script>

    <%--7-sweetalert--%>
    <link href="../SweetAlert/Styles/sweetalert.css" rel="stylesheet" />
    <script src="../SweetAlert/Scripts/sweetalert.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />


    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,700,900" rel="stylesheet" />
    <link rel="stylesheet" href="fonts/icomoon/style.css" />

    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/jquery-ui.css" />
    <link rel="stylesheet" href="css/owl.carousel.min.css" />
    <link rel="stylesheet" href="css/owl.theme.default.min.css" />
    <link rel="stylesheet" href="css/owl.theme.default.min.css" />

    <link rel="stylesheet" href="css/jquery.fancybox.min.css" />

    <link rel="stylesheet" href="css/bootstrap-datepicker.css" />

    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css" />

    <link rel="stylesheet" href="css/aos.css" />
    <link href="css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" href="css/style.css" />
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="keywords" />
    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" />
    <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet" />
    <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet" />
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet" />
    <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet" />

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <style>
        .card {
            position: flex;
            left: 0px;
            width: 200px;
            height: 186px;
            background-color: white;
            border-radius: 8px;
            transition: 1000ms all;
            transform-origin: center;
            box-shadow: 0 5px 12px rgba(0, 0, 0, 0.5);
            outline: 1px solid var(--background);
            overflow: visible;
        }

            .card img {
                height: 160px;
                object-fit: cover;
                border-radius: 4px;
            }

            .card:hover {
                cursor: pointer;
                transform: scale(1.15);
                box-shadow: 0 0 20px rgb(232, 214, 110);
                margin: 5px;
            }

                .card:hover figcaption {
                    font-size: 0.6rem;
                    position: absolute;
                    height: 80px;
                    width: 100px;
                    display: center;
                    align-items: end;
                    background: linear-gradient( to top, rgba(0, 0, 0, 0.9) 0%, rgba(0, 0, 0, 0) 100% );
                    color: white;
                    left: 0px;
                    bottom: 0px;
                    padding-left: 12px;
                    padding-bottom: 10px;
                }

                .card:hover ~ .card {
                    font-weight: bold;
                    cursor: pointer;
                    transform: translateX(22px);
                }
                .sun,.moon{
    color:#fff;
     font-size:25px;
  margin-left:35px;
}
.fa-sun{
  transition: all linear;
  animation: rot 2s linear infinite;
  color:azure;  
  font-size:25px;
  margin-left:35px;

}
@keyframes rot{
  0%{
      transform: rotate(0deg);
  }
  100%{
      transform: rotate(360deg);
  }
}
    </style>
</head>
<body style="background-color: white; color: black;">
    <form id="form1" runat="server">
        <div>
            <!-- ======= Header ======= -->
            <div>
                <nav class="navbar navbar-expand-sm bg-dark" style="position: fixed;width:100%;top: 0;z-index:1;padding-right: 15px; padding-left: 15px; height: 90px;">
                    <a class="navbar-brand" href="" style="color: white; font-family: 'Times New Roman', Times, serif; font-size: 25px; margin-left: 30px;"><b>CARMART</b></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="collapsibleNavbar">
                        <ul class="navbar-nav">
                            <i class="bi bi-list toggle-sidebar-btn text-light" style="margin-left: 80px; font-size: 30px;"></i>
                        </ul>
                    </div>

                    <!-- Navbar Right icon -->
                    <div>
                        <asp:Button ID="Logout" runat="server" Text="Logout" CssClass="btn btn-light" Width="109px" />
                    </div>
                     <div class="sun">
                   <a id="light"> <i class="fa-solid fa-sun" ></i></a>

                </div>
                <div class="moon">
                    <a id="dark"><i class="fa-solid fa-moon" style="color:black"></i></a>
                </div>
                </nav>
            </div>
            <!-- End Header -->

            <div class="container-fluid" style="height: 650px;margin-top:100px;">
                <div class="row" style="margin-right: 10px; padding-top: 20px; height: 100%">
                    <div class="col-sm-3" style="height: 100%">
                        <!-- ======= Sidebar ======= -->
                        <aside id="sidebar" class="sidebar" style="margin-top: 30px;">

                            <ul class="sidebar-nav" id="sidebar-nav" style="margin-top: 10px;">

                                <li class="nav-item">
                                    <a class="nav-link collapsed" href="AdminHome.aspx" style="border: thin groove #FFFFFF">
                                        <i class="bi bi-grid-3x2-gap"></i>
                                        <span>Dashboard</span>
                                    </a>
                                </li>
                                <!-- End Dashboard Nav -->

                                <li class="nav-item">

                                    <a class="nav-link collapsed" href="customersdetails.aspx">
                                        <i class="bi bi-person-circle"></i>Customers Details
                                    </a>

                                </li>
                                <!--End Class nav-->

                                <li class="nav-item">
                                    <a class="nav-link collapsed" href="employeesdetails.aspx">
                                        <i class="bi bi-person-circle"></i>
                                        <span>Employees Details</span>
                                    </a>
                                </li>


                                <li class="nav-item">

                                    <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
                                        <i class="bi bi-car-front"></i><span>Car Details</span><i class="bi bi-chevron-down ms-auto"></i>
                                    </a>

                                    <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                                        <li>
                                            <a href="carcompany.aspx?cartype=New">
                                                <i class="bi bi-car-front" style="font-size: 20px;"></i><span>New Cars</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="carcompany.aspx?cartype=Old">
                                                <i class="bi bi-car-front" style="font-size: 20px;"></i><span>Old Cars</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="carcompany.aspx?cartype=Electric">
                                                <i class="bi bi-car-front" style="font-size: 20px;"></i><span>Electric Cars</span>
                                            </a>
                                        </li>


                                    </ul>
                                </li>


                                <li class="nav-item">
                                    <a class="nav-link collapsed" href="orderdetails.aspx">
                                        <i class="bi bi-cart-check-fill"></i><span>Orders Details</span>
                                    </a>

                                </li>


                                <li class="nav-item">
                                    <a class="nav-link collapsed" href="testdrivedetails.aspx">
                                        <i class="bi bi-cart-check-fill"></i><span>Test Drive Details</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link collapsed" href="cancelordersdetails.aspx">
                                        <i class="fa-solid fa-trash"></i><span>Cancelled Orders Details</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link collapsed" href="canceledtestdrivedetails.aspx">
                                        <i class="fa-solid fa-trash"></i><span>Cancelled Test Drive Details</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link collapsed" href="dealersdetails.aspx">
                                        <i class="fa-solid fa-building"></i><span>Dealers Details</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link collapsed" href="contactdetails.aspx">
                                        <i class="fa-sharp fa-solid fa-comment"></i><span>Contact Details</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link collapsed" href="manageadminaccount.aspx">
                                        <i class="fa fa-key"></i><span>Manage Account Details</span>
                                    </a>
                                </li>
                        </aside>
                        <!-- End Sidebar-->
                        <!-- Vendor JS Files -->
                        <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
                        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
                        <script src="assets/vendor/chart.js/chart.umd.js"></script>
                        <script src="assets/vendor/echarts/echarts.min.js"></script>
                        <script src="assets/vendor/quill/quill.min.js"></script>
                        <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
                        <script src="assets/vendor/tinymce/tinymce.min.js"></script>
                        <script src="assets/vendor/php-email-form/validate.js"></script>

                        <!-- Template Main JS File -->
                        <script src="assets/js/main.js"></script>
                        <script>
                          $(document).ready(function () {
                              $("#light").click(function () {
                                  $(".navbar").addClass("bg-light");
                                  $(".navbar").removeClass("bg-dark");
                                  $("#Logout").css({ "background-color": "black", "color": "#fff" });
                                  $(".navbar-brand").css({ "color": "black" });
                                  $(".navbar-toggler-icon").css({ "color": "white" });
                                  $(".toggle-sidebar-btn").addClass("text-dark");
                                  $(".toggle-sidebar-btn").removeClass("text-light");
                              });
                              $("#dark").click(function () {
                                  $(".navbar").addClass("bg-dark");
                                  $(".navbar").removeClass("bg-light");
                                  $("#Logout").css({ "background-color": "white", "color": "black" });
                                  $(".navbar-brand").css({ "color": "white" });
                                  $(".navbar-toggler-icon").css({ "color": "white" });
                                  $(".toggle-sidebar-btn").addClass("text-light");
                                  $(".toggle-sidebar-btn").removeClass("text-dark");
                              });

                          });
                        </script>
                    </div>
                    <div class="col-sm-9" style="height: 100%;">
                        <center>
                            <h2><b>Select Car Company
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></b></h2>
                        </center>
                        <br />
                        <br />
                        <br />
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-sm-4">
                                    <center>
                                        <figure class="card" style="height: 220px; width: 250px;">
                                            <div style="margin-top: 20px;">
                                                <center>
                                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="150px" Width="200px" ImageUrl="~/images/carcompanylogo/suzuki.png" />
                                                    <div class="row">
                                                        <h4>
                                                            <asp:Label ID="Label2" runat="server" Text="Maruti suzuki"></asp:Label></h4>
                                                    </div>
                                                </center>
                                            </div>
                                        </figure>
                                    </center>
                                </div>


                                <div class="col-sm-4">
                                    <center>
                                        <figure class="card" style="height: 220px; width: 250px;">
                                            <div style="margin-top: 20px;">
                                                <center>
                                                    <asp:ImageButton ID="ImageButton2" runat="server" Height="150px" Width="200px" ImageUrl="~/images/carcompanylogo/hyundai.png" />
                                                    <div class="row">
                                                        <h4>
                                                            <asp:Label ID="Label3" runat="server" Text="Hyundai"></asp:Label></h4>
                                                    </div>
                                                </center>
                                            </div>
                                        </figure>
                                    </center>
                                </div>
                                <div class="col-sm-4">
                                    <center>
                                        <figure class="card" style="height: 220px; width: 250px;">
                                            <div style="margin-top: 20px;">
                                                <center>
                                                    <asp:ImageButton ID="ImageButton3" runat="server" Height="150px" Width="200px" ImageUrl="~/images/carcompanylogo/tatamotors.png" />
                                                    <div class="row">
                                                        <h4>
                                                            <asp:Label ID="Label4" runat="server" Text="Tata Motors"></asp:Label></h4>
                                                    </div>
                                                </center>
                                            </div>
                                        </figure>
                                    </center>
                                </div>
                            </div>

                            <br />
                            <br />

                            <div class="row">
                                <div class="col-sm-4">
                                    <center>
                                        <figure class="card" style="height: 220px; width: 250px;">
                                            <div style="margin-top: 20px;">
                                                <center>
                                                    <asp:ImageButton ID="ImageButton4" runat="server" Height="150px" Width="200px" ImageUrl="~/images/carcompanylogo/kia.png" />
                                                    <div class="row">
                                                        <h4>
                                                            <asp:Label ID="Label5" runat="server" Text="Kia"></asp:Label></h4>
                                                    </div>
                                                </center>
                                            </div>
                                        </figure>
                                    </center>
                                </div>
                                <div class="col-sm-4">
                                    <center>
                                        <figure class="card" style="height: 220px; width: 250px;">
                                            <div style="margin-top: 20px;">
                                                <center>
                                                    <asp:ImageButton ID="ImageButton5" runat="server" Height="150px" Width="200px" ImageUrl="~/images/carcompanylogo/toyota.png" />
                                                    <div class="row">
                                                        <h4>
                                                            <asp:Label ID="Label6" runat="server" Text="Toyota"></asp:Label></h4>
                                                    </div>
                                                </center>
                                            </div>
                                        </figure>
                                </div>
                                <div class="col-sm-4">
                                    <center>
                                        <figure class="card" style="height: 220px; width: 250px;">
                                            <div style="margin-top: 20px;">
                                                <center>
                                                    <asp:ImageButton ID="ImageButton6" runat="server" Height="150px" Width="200px" ImageUrl="~/images/carcompanylogo/mahindra.png" />
                                                    <div class="row">
                                                        <h4>
                                                            <asp:Label ID="Label7" runat="server" Text="Mahindra"></asp:Label></h4>
                                                    </div>
                                                </center>
                                            </div>
                                        </figure>
                                    </center>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </form>
</body>
</html>
