<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="manageadminaccount.aspx.vb" Inherits="WebApplication1.manageadminaccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Account</title>
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
<body style="color: black; background-image: url('../images/backgroundimages/manageadminaccountbg.png'); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
    <form id="form1" runat="server">
        <div>
            <!-- ======= Header ======= -->
            <div>
            <nav class="navbar navbar-expand-sm bg-dark" style="position: fixed;width:100%;top: 0;z-index:1;padding-right: 15px; padding-left: 15px;  height: 90px;">
                <a class="navbar-brand" href="#" style="color: white; font-family: 'Times New Roman', Times, serif; font-size: 25px; margin-left: 30px;"><b>CARMART</b></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="collapsibleNavbar">
                    <ul class="navbar-nav">
                        <i class="bi bi-list toggle-sidebar-btn text-light" style="margin-left: 80px; font-size:30px;"></i>
                    </ul>
                </div>

                <!-- Navbar Right icon -->
                <div>
                   <asp:Button ID="Logout" runat="server" Text="Logout" CssClass="btn btn-light" Width="109px"  />
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

            <div class="container-fluid" style="height: 650px; margin-top:100px;">
                <div class="row" style="margin-right: 10px; padding-top: 20px; height: 100%">
                    <div class="col-sm-3" style="height: 100%">
                        <!-- ======= Sidebar ======= -->
                                            <aside id="sidebar" class="sidebar" style="margin-top: 30px;" >

                        <ul class="sidebar-nav" id="sidebar-nav" style="margin-top:10px;">

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

                        <!---Admin design login form--->

                        <div class="container" style="margin-top: 50px;">
                            <div class="row">
                                <div class="col-md-6 mx-auto">
                                    <div class="card">
                                        <div class="card-body">

                                            <div class="row">
                                                <div class="col">
                                                    <center>
                                                        <br />
                                                        <br />
                                                        <h2><b>Change Login Details</b></h2>
                                                    </center>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col">
                                                    <hr />
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col">
                                                    <label>New Admin ID</label>
                                                    <div class="form-group">
                                                        <asp:TextBox ID="adminid" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="adminid" Text="* Only alphanumeric characters allowed" ControlToValidate="adminid" ValidationExpression="[a-zA-Z0-9]+" SetFocusOnError="True" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>

                                                    </div>

                                                    <label>New Password</label>
                                                    <div class="form-group">
                                                        <asp:TextBox ID="adminpassword" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
                                                    </div>
                                                    <br />
                                                    <center>
                                                        <asp:Button ID="button1" runat="server" Height="54px" Text="Change" Width="473px" CssClass="btn btn-info btn-lg btn-block auto-style3" Font-Bold="True" />
                                                    </center>

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>

                        <!----Admin design end--->

                    </div>
                </div>
            </div>


        </div>
    </form>
</body>
</html>
