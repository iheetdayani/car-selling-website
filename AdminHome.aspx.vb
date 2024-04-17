Imports System.Data.OleDb

Public Class AdminHome
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\FinalProject\WebApplication1\App_Data\db1.mdb")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Session("adminid") = "") Then
            Response.Redirect("../loginpage.aspx")
        End If

        cn.Open()
        Try
            ' New Car Count
            Dim cmd As New OleDbCommand("select count(*) from carsdetails where cartype='new'", cn)
            Dim count As String = cmd.ExecuteScalar
            newcars.Text = count

            ' Old Car Count
            cmd = New OleDbCommand("select count(*) from carsdetails where cartype='old'", cn)
            count = cmd.ExecuteScalar
            oldcars.Text = count

            ' Electric Car Count
            cmd = New OleDbCommand("select count(*) from carsdetails where cartype='electric'", cn)
            count = cmd.ExecuteScalar
            electriccars.Text = count

            ' Registered Customers Count
            cmd = New OleDbCommand("select count(*) from customersdetails", cn)
            count = cmd.ExecuteScalar
            customers.Text = count

            ' Total Employees Count
            cmd = New OleDbCommand("select count(*) from employeesdetails", cn)
            count = cmd.ExecuteScalar
            employees.Text = count

            ' Total Dealers Count
            cmd = New OleDbCommand("select count(*) from dealersdetails", cn)
            count = cmd.ExecuteScalar
            dealers.Text = count

            ' Total Orders Count
            cmd = New OleDbCommand("select count(*) from ordersdetails", cn)
            count = cmd.ExecuteScalar
            orders.Text = count

            ' Total Test Drive Count
            cmd = New OleDbCommand("select count(*) from testdrivedetails", cn)
            count = cmd.ExecuteScalar
            testdrive.Text = count

            ' Total Canceled Orders Count
            cmd = New OleDbCommand("select count(*) from cancelordersdetails", cn)
            count = cmd.ExecuteScalar
            canceledorders.Text = count

            ' Total Canceled Test Drive Count
            cmd = New OleDbCommand("select count(*) from canceltestdrivedetails", cn)
            count = cmd.ExecuteScalar
            canceledtestdrive.Text = count
        Catch ex As Exception
            MsgBox("Error", MsgBoxStyle.Exclamation)
        End Try
        cn.Close()
    End Sub

    Private Sub Logout_Click(sender As Object, e As EventArgs) Handles Logout.Click
        Session.Abandon()
        MsgBox("Logout", MsgBoxStyle.Information)
        Response.Redirect("../loginpage.aspx")
    End Sub
End Class