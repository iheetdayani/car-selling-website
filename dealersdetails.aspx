<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="dealersdetails.aspx.vb" Inherits="WebApplication1.dealersdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dealers Details</title>
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
<body style="color: black; background-image: url('../images/backgroundimages/dealersdetailsbg.png'); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
    <form id="form1" runat="server">
        <div>
            <!-- ======= Header ======= -->
            <div>
            <nav class="navbar navbar-expand-sm bg-dark" style="position: fixed;width:100%;top: 0;z-index:1;padding-right: 15px; padding-left: 15px;  height: 90px;">
                <a class="navbar-brand" href="" style="color: white; font-family: 'Times New Roman', Times, serif; font-size: 25px; margin-left: 30px;"><b>CARMART</b></a>
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
                        <center>
                            <h2><b style="color:white;">Dealers Details</b></h2>
                        </center>
                        <br />
                        <button class="btn btn-info btn-sm" data-target=".bd-example-modal-lg" data-toggle="modal" style="width: 195px; margin-left: 0px; color:white;" type="button">
                            Add 
                        </button>
                        <br />
                        <br />
                        <div class="row">
                            <div class="col-sm-2">
                                Dealer ID:
                            </div>
                            <div class="col-sm-3">
                                <asp:TextBox ID="dealerid1" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-sm-2">
                                Contact No.:
                            </div>
                            <div class="col-sm-3">
                                <asp:TextBox ID="contactno1" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-sm-2">
                                
                            </div>
                        </div>
                        <div class="row" style="margin-top: 10px;">
                            <div class="col-sm-2">
                                Dealer Name:
                            </div>
                            <div class="col-sm-3">
                                <asp:TextBox ID="dealername1" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-sm-2">
                                Company:
                            </div>
                            <div class="col-sm-3">
                                <asp:DropDownList ID="company1" runat="server" CssClass="form-control">
                                    <asp:ListItem Selected="True">--select company--</asp:ListItem>
                                    <asp:ListItem>Maruti Suzuki</asp:ListItem>
                                    <asp:ListItem>Hyundai</asp:ListItem>
                                    <asp:ListItem>Toyota</asp:ListItem>
                                    <asp:ListItem>Mahindra</asp:ListItem>
                                    <asp:ListItem>Tata Motors</asp:ListItem>
                                    <asp:ListItem>Kia</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-sm-2">
                            </div>
                        </div>
                        <div class="row" style="margin-top: 10px;">
                            <div class="col-sm-2">
                                Address:
                            </div>
                            <div class="col-sm-3">
                                <asp:TextBox ID="address1" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                            </div>
                            <div class="col-sm-2">
                                City:
                            </div>
                            <div class="col-sm-3">
                                <asp:DropDownList ID="city1" runat="server" CssClass="form-control">
                                    <asp:ListItem Selected="True">--select city--</asp:ListItem>
                                    <asp:ListItem>Mumbai</asp:ListItem>
                                    <asp:ListItem>Surat</asp:ListItem>
                                    <asp:ListItem>Delhi</asp:ListItem>
                                    <asp:ListItem>Bangalore</asp:ListItem>
                                    <asp:ListItem>Kolkata</asp:ListItem>
                                    <asp:ListItem>Ahmedabad</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-sm-2">
                            </div>
                        </div>
                        <div class="row" style="margin-top: 40px;">
                            <center>
                                <asp:Button ID="Search" runat="server" Text="Search" CssClass="btn btn-sm btn-danger" Width="100px" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Update" runat="server" Text="Update" CssClass="btn btn-sm btn-danger" Width="100px" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Delete" runat="server" Text="Delete" CssClass="btn btn-sm btn-danger" Width="100px" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Clear" runat="server" Text="Clear" CssClass="btn btn-sm btn-danger" Width="100px" />
                            </center>
                        </div>
                        <br />
                        <center>
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataKeyNames="dealerid" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" PageSize="5" Width="1126px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" CssClass="table table-striped table-bordered  table-hover" >
                                <Columns>
                                    <asp:BoundField DataField="dealerid" HeaderText="Dealer ID" ReadOnly="True" SortExpression="dealerid" />
                                    <asp:BoundField DataField="dealername" HeaderText="Dealer Name" SortExpression="dealername" />
                                    <asp:BoundField DataField="company" HeaderText="Company" SortExpression="company" />
                                    <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                    <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                                    <asp:BoundField DataField="contactno" HeaderText="Contact Number" SortExpression="contactno" />
                                </Columns>
                                <AlternatingRowStyle BackColor="Black" ForeColor="White" />
                                <EditRowStyle BorderStyle="Solid" VerticalAlign="Top" />
                                <FooterStyle BackColor="#CCCCCC" HorizontalAlign="Justify" VerticalAlign="Bottom" BorderStyle="Solid" ForeColor="White" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="Black" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="Gray" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
                        </center>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\db1.mdb;Persist Security Info=True" SelectCommand="SELECT [dealerid], [dealername], [company], [city], [address], [contactno] FROM [dealersdetails]" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.OleDb"></asp:SqlDataSource>
                                                <div class="row w-100">
                            <div class="auto-style5">
                                <div aria-hidden="true" aria-labelledby="myLargeModalLabel" class="modal fade bd-example-modal-lg" role="dialog" tabindex="-1">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content" style="width:900px; height: 500px; padding-left: 20px; padding-right: 20px;">
                                            <div style=" margin-bottom:20px; height:80px; padding-top:20px;" class="modal-header bg-info text-white d-flex justify-content-center">
                                            <center>
                                                <h3>Add Dealer</h3>
                                            </center>
                                            </div>
                                            <br />
                                            <div class="row mt-3">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        Name
                                                            <asp:TextBox ID="name" runat="server" CssClass="form-control"></asp:TextBox>

                                                    </div>

                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        Company
                                                            <asp:DropDownList ID="company" runat="server" CssClass="form-control">
                                                                <asp:ListItem Selected="True">--select company--</asp:ListItem>
                                                                <asp:ListItem>Maruti Suzuki</asp:ListItem>
                                                                <asp:ListItem>Hyundai</asp:ListItem>
                                                                <asp:ListItem>Toyota</asp:ListItem>
                                                                <asp:ListItem>Mahindra</asp:ListItem>
                                                                <asp:ListItem>Tata Motors</asp:ListItem>
                                                                <asp:ListItem>Kia</asp:ListItem>
                                                            </asp:DropDownList>

                                                    </div>

                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        Contact Number
                                                            <asp:TextBox ID="contactno" runat="server" CssClass="form-control"></asp:TextBox>




                                                    </div>
                                                </div>
                                            </div>
                                            <br />
                                            <br />
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        City
                                                            <asp:DropDownList ID="city" runat="server" CssClass="form-control">
                                                                <asp:ListItem Selected="True">--select city--</asp:ListItem>
                                                                <asp:ListItem>Mumbai</asp:ListItem>
                                                                <asp:ListItem>Surat</asp:ListItem>
                                                                <asp:ListItem>Delhi</asp:ListItem>
                                                                <asp:ListItem>Bangalore</asp:ListItem>
                                                                <asp:ListItem>Kolkata</asp:ListItem>
                                                                <asp:ListItem>Ahmedabad</asp:ListItem>
                                                            </asp:DropDownList>

                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        Address
                                                            <asp:TextBox ID="address" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>

                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                    </div>
                                                </div>

                                            </div>

                                            <center>
                                                <asp:Label ID="label1" runat="server" Text="" ForeColor="Red"></asp:Label></center>
                                            <!-- _________________________________________________________________________________
								  											Hidden Values are here
								  		_________________________________________________________________________________ -->

                                            <!-- _________________________________________________________________________________
								  											Hidden Values are end here
								  		_________________________________________________________________________________ -->
                                            <center>
                                                <div style="margin-top: 30px;">
                                                    <asp:Button ID="addbutton" runat="server" Text="Add" CssClass="btn btn-info  text-white" Width="100px" />
                                                    &nbsp&nbsp&nbsp
                                                    
                                                          
                                                </div>
                                            </center>
                                        </div>
                                    </div>
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
