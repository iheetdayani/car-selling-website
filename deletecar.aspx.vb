Imports System.Data.OleDb

Public Class deletecar
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\FinalProject\WebApplication1\App_Data\db1.mdb")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Session("adminid") = "") Then
            Response.Redirect("../loginpage.aspx")
        End If
        cn.Open()
        Try
            Dim carid As String = Request.QueryString("carid")
            Dim company As String = Request.QueryString("company")
            Dim cartype As String = Request.QueryString("cartype")
            Dim cmd As New OleDbCommand("delete from carsdetails where carid='" & carid & "' ", cn)
            cmd.ExecuteNonQuery()
            MsgBox("Car Deleted.", MsgBoxStyle.Information)
            Response.Redirect("carsdetails.aspx?company=" + company + "&cartype=" + cartype + "")
        Catch ex As Exception

        End Try



        cn.Close()
    End Sub

End Class