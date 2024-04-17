Imports System.Data.OleDb
Public Class _Default
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\FinalProject\WebApplication1\App_Data\db1.mdb")


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Session("customerid") = "") Then
            Response.Redirect("../loginpage.aspx")
        End If
        cn.Open()
        Try
            Dim customerid As String = Session("customerid")
            Dim cmd As New OleDbCommand("select * from customersdetails where customerid='" & customerid & "' ", cn)
            Dim dr As OleDbDataReader = cmd.ExecuteReader
            dr.Read()
            username.Text = dr("firstname") + " " + dr("lastname")
        Catch ex As Exception

        End Try
        cn.Close()
    End Sub

    Private Sub logout_Click(sender As Object, e As EventArgs) Handles logout.Click
        Session.Abandon()

        Response.Redirect("../loginpage.aspx")
    End Sub
End Class