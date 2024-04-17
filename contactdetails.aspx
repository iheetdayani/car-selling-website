<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="contactdetails.aspx.vb" Inherits="WebApplication1.contactdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Details</title>
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
        /* Add this CSS to your stylesheet */
        .stats-option {
            display: none; /* Initially hidden */
            text-align: center;
            margin-top: 10px;
        }

        .card:hover .stats-option {
            display: block; /* Show on hover */
        }

        .sun, .moon {
            color: #fff;
            font-size: 25px;
            margin-left: 35px;
        }

        .fa-sun {
            transition: all linear;
            animation: rot 2s linear infinite;
            color: azure;
            font-size: 25px;
            margin-left: 35px;
        }

        @keyframes rot {
            0% {
                transform: rotate(0deg);
            }

            100% {
                transform: rotate(360deg);
            }
        }
    </style>
    <!-- Favicons -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
</head>
<body style="color: black; background-image: url('../images/backgroundimages/customersdetailsbg.png'); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
    <form id="form1" runat="server">
        <!-- ======= Header ======= -->
        <div>
            <nav class="navbar navbar-expand-sm bg-dark" style="position: fixed; width: 100%; top: 0; z-index: 1; padding-right: 15px; padding-left: 15px; height: 90px;">
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
                    <a id="light"><i class="fa-solid fa-sun"></i></a>

                </div>
                <div class="moon">
                    <a id="dark"><i class="fa-solid fa-moon" style="color: black"></i></a>
                </div>
            </nav>
        </div>
        <!-- End Header -->

        <div class="container-fluid" style="height: 650px; margin-top: 100px;">
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
                        <h2><b style="color: white;">Contact Details</b></h2>
                    </center>
                    <br />
                    <br />
                    <br />
                    <center>
                        <div class="container-fluid">
                            <div style="text-align: left;" class="form-inline">
                                <asp:TextBox ID="contactid" runat="server" Width="300px" placeholder="ID" CssClass="form-control"></asp:TextBox>
                                &nbsp; &nbsp; &nbsp;
                            <asp:Button ID="search" runat="server" CssClass="btn btn-sm btn-primary" Text="Search" />
                                &nbsp; &nbsp; &nbsp;
                            <asp:Button ID="reset" runat="server" CssClass="btn btn-sm btn-danger" Text="Reset" />
                            </div>
                            <br />
                            <br />

                            <div style="text-align: left; width: 100%; overflow-x: scroll; height: 400px; overflow-y: scroll">
                                <asp:GridView ID="GridView1" GridLines="Vertical" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="160px" CssClass="table table-striped table-bordered  table-hover">
                                    <AlternatingRowStyle BackColor="Black" ForeColor="White" />
                                    <EditRowStyle BorderStyle="Solid" VerticalAlign="Top" />
                                    <FooterStyle BackColor="#CCCCCC" HorizontalAlign="Justify" VerticalAlign="Bottom" BorderStyle="Solid" ForeColor="White" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                    <RowStyle BackColor="White" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="Gray" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>

                            </div>
                        </div>
                    </center>




                </div>
            </div>
        </div>
    </form>
</body>
</html>
