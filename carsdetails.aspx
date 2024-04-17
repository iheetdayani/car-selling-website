<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="carsdetails.aspx.vb" Inherits="WebApplication1.newcarsdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Car Details</title>
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

    <link rel="stylesheet" href="Style.css" />

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


</head>
<body style="color: black;  background-image: url('../images/backgroundimages/cardetailsbg.png'); background-repeat:no-repeat; background-attachment:fixed; background-size:cover;">
    <form id="form1" runat="server">
        <!-- ======= Header ======= -->
        <div>
            <nav class="navbar navbar-expand-sm bg-dark" style="padding-right: 15px; padding-left: 15px; height: 90px; ">
                <a class="navbar-brand" href="" style="color: white; font-family: 'Times New Roman', Times, serif; font-size: 25px; margin-left: 30px;"><b>CARMART</b></a>
              
            </nav>
        </div>
        
        <!-- End Header -->
        <div style="margin-top: 40px; margin-left: 30px;">
            <asp:Button ID="Button2" runat="server" Text="Back" CssClass="btn btn-dark" Width="100px"  />
            &nbsp&nbsp&nbsp
            <asp:Button ID="Button1" runat="server" Text="Add Car" CssClass="btn btn-dark" Width="100px"  />
        </div>
        <br />
        <center>
            <h2>
                <asp:Label ID="Label1" runat="server" Text="" CssClass="text-danger"></asp:Label></h2>
        </center>
        <br />


        <asp:DataList ID="DataList1" runat="server" Height="100%" Width="100%" RepeatColumns="3">
            <ItemTemplate>
                <div class="container-fluid" style="height: 100%; width: 100%; margin-top: 50px; margin-bottom: 50px;">
                    <div class="product-card" style="border-radius: 25px;">
                        <asp:Image runat="server" ImageUrl='<%#Eval("image", "../images/carsphoto/{0}?" + DateTime.Now.Ticks.ToString()) %>' Width="420px" Height="220px"></asp:Image>
                        <div class="row" style="margin-top: 10px;">
                            <div class="col-sm-8">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <b>Name :</b>
                                        <asp:Label runat="server" Text='<%#Eval("name") %>'></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <b>Company :</b>
                                        <asp:Label runat="server" Text='<%#Eval("company") %>'></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <b>Price :</b>
                                        <asp:Label runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <b>Seating Capacity :</b>
                                        <asp:Label runat="server" Text='<%#Eval("seatingcapacity") %>'></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <a class="btn btn-sm btn-primary" href='updatecar.aspx?carid=<%#Eval("carid") %>&company=<%#Eval("company") %>&cartype=<%#Eval("cartype") %>'><i class="fa-pen fa-solid"></i></a>&nbsp;&nbsp;&nbsp;
                   <a class="btn btn-sm btn-danger" href='deletecar.aspx?carid=<%#Eval("carid") %>&company=<%#Eval("company") %>&cartype=<%#Eval("cartype") %>'><i class="bi bi-trash"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

            </ItemTemplate>
        </asp:DataList>


    </form>
</body>
</html>
