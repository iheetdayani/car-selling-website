

Public Class carcompany
    Inherits System.Web.UI.Page




    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Session("adminid") = "") Then
            Response.Redirect("../loginpage.aspx")
        End If
        Dim cartype As String = Request.QueryString("cartype")
        Label1.Text = "(" + cartype + " cars)"
    End Sub

    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Dim cartype As String = Request.QueryString("cartype")
        Response.Redirect("carsdetails.aspx?company=Suzuki&cartype=" + cartype)

    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton2.Click
        Dim cartype As String = Request.QueryString("cartype")
        Response.Redirect("carsdetails.aspx?company=Hyundai&cartype=" + cartype)

    End Sub

    Protected Sub ImageButton3_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton3.Click
        Dim cartype As String = Request.QueryString("cartype")
        Response.Redirect("carsdetails.aspx?company=TataMotors&cartype=" + cartype)

    End Sub

    Protected Sub ImageButton4_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton4.Click
        Dim cartype As String = Request.QueryString("cartype")
        Response.Redirect("carsdetails.aspx?company=Kia&cartype=" + cartype)

    End Sub

    Protected Sub ImageButton5_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton5.Click
        Dim cartype As String = Request.QueryString("cartype")
        Response.Redirect("carsdetails.aspx?company=Toyota&cartype=" + cartype)

    End Sub

    Protected Sub ImageButton6_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton6.Click
        Dim cartype As String = Request.QueryString("cartype")
        Response.Redirect("carsdetails.aspx?company=Mahindra&cartype=" + cartype)

    End Sub
    Private Sub Logout_Click(sender As Object, e As EventArgs) Handles Logout.Click
        Session.Abandon()
        MsgBox("Logout", MsgBoxStyle.Information)
        Response.Redirect("../loginpage.aspx")
    End Sub
End Class