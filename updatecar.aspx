<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="updatecar.aspx.vb" Inherits="WebApplication1.updatecar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Car Details</title>
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

        <!-- Table CSS start -->
    <style type="text/css">
        table, tbody, tr, th, td {
            background-color: rgba(0, 0, 0, 0.0) !important;
        }
    </style>
    <!-- Table CSS end -->
</head>
<body style="color: black; background-image: url('../images/backgroundimages/carwallpaper2.png'); background-repeat:no-repeat; background-attachment:fixed; background-size:cover;">
    <form id="form1" runat="server">

        <!-- ======= Header ======= -->
        <div>
            <nav class="navbar navbar-expand-sm bg-dark" style="padding-right: 15px; padding-left: 15px; height: 90px;">
                <a class="navbar-brand" href="" style="color: white; font-family: 'Times New Roman', Times, serif; font-size: 25px; margin-left: 30px;"><b>CARMART</b></a>
              
            </nav>
        </div>
        <!-- End Header -->

        <div style="margin-top: 40px; margin-left: 30px;">
            <asp:Button ID="Button2" runat="server" Text="Back" CssClass="btn btn-dark" Width="100px"  CausesValidation="False" />
        </div>
        <br/>
        <center><h2><b>Update Car Details</b></h2></center>
        <br/>
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <br />
       
        <center>
            <asp:Image ID="Image1" runat="server" CssClass="img-thumbnail" Height="200" Width="350" /></center>
        <br/><br/>
        <table class="table" style="font-size:20px;">
            <tr class="row">
                <td class="col-sm-2"><center><b>Name:</b></center>
                </td>
                <td class="col-sm-2">
                   <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="col-sm-2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="TextBox1" Text="* Required" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red" SetFocusOnError="True">* Required</asp:RequiredFieldValidator>
                </td>

                <td class="col-sm-2"><center><b>Company:</b></center>  
                </td>
                <td class="col-sm-2">
                    
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="250px" CssClass="form-control" >
                        <asp:ListItem>--select company--</asp:ListItem>
                        <asp:ListItem>Suzuki</asp:ListItem>
                        <asp:ListItem>Toyota</asp:ListItem>
                        <asp:ListItem>TataMotors</asp:ListItem>
                        <asp:ListItem>Hyundai</asp:ListItem>
                        <asp:ListItem>Kia</asp:ListItem>
                        <asp:ListItem>Mahindra</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="col-sm-2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="DropDownList1" Text="* Required" ControlToValidate="DropDownList1" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" InitialValue="--select company--">* Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="row">
                <td class="col-sm-2"><center><b>Price :</b></center>  
                </td>
                <td class="col-sm-2">
                   <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" ></asp:TextBox>
                </td>
                <td class="col-sm-2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="TextBox2" Text="* Required" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red" SetFocusOnError="True">* Required</asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="TextBox2" Text="* Invalid" ControlToValidate="TextBox2" ValidationExpression="[0-9]+" SetFocusOnError="True" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>

                <td class="col-sm-2"><center><b>Seating Capacity:</b></center>  
                </td>
                <td class="col-sm-2">
                    
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="250px" CssClass="form-control" >
                        <asp:ListItem>--select seating capacity--</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="col-sm-2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="DropDownList2" Text="* Required" ControlToValidate="DropDownList2" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" InitialValue="--select seating capacity--">* Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="row">
                <td class="col-sm-2"><center><b>Car Type :</b></center>  
                </td>
                <td class="col-sm-2">
                    
                    <asp:DropDownList ID="DropDownList3" runat="server" Width="250px" CssClass="form-control" >
                        <asp:ListItem>--cartype--</asp:ListItem>
                        <asp:ListItem>New</asp:ListItem>
                        <asp:ListItem>Old</asp:ListItem>
                        <asp:ListItem>Electric</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="col-sm-2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="DropDownList3" Text="* Required" ControlToValidate="DropDownList3" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" InitialValue="--cartype--">* Required</asp:RequiredFieldValidator>
                </td>
                <td class="col-sm-2"></td>
                <td class="col-sm-2"></td>
                <td class="col-sm-2"></td>
            </tr>
        </table>
        <br />
        <center>
            <asp:Button ID="Button1" runat="server" Text="Update" CssClass="btn btn-dark" Width="100px"  /></center>
    <br /><br />
    </form>
</body>
</html>
