Imports System.Data.OleDb
Public Class manageadminaccount
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\FinalProject\WebApplication1\App_Data\db1.mdb")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Session("adminid") = "") Then
            Response.Redirect("../loginpage.aspx")
        End If
    End Sub

    Protected Sub button1_Click(sender As Object, e As EventArgs) Handles button1.Click
        cn.Open()
        Try
            If (adminid.Text = "" Or adminpassword.Text = "") Then
                MsgBox("Please enter all details.", MsgBoxStyle.Exclamation)
            Else
                Dim cmd As New OleDbCommand("update adminlogindetails set adminid='" & adminid.Text & "', adminpassword='" & adminpassword.Text & "' ", cn)
                cmd.ExecuteNonQuery()
                MsgBox("Login details changed successfully.", MsgBoxStyle.Information)
                adminid.Text = ""
                adminpassword.Text = ""

            End If
        Catch ex As Exception
            MsgBox("Error! Please try again.", MsgBoxStyle.Exclamation)
        End Try
        cn.Close()
    End Sub

    Private Sub Logout_Click(sender As Object, e As EventArgs) Handles Logout.Click
        Session.Abandon()
        MsgBox("Logout", MsgBoxStyle.Information)
        Response.Redirect("../loginpage.aspx")
    End Sub
End Class