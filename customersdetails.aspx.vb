Imports System.Data.OleDb

Public Class customersdetails
    Inherits System.Web.UI.Page

    Dim cmd As OleDbCommand
    Dim da As OleDbDataAdapter
    Dim ds As DataSet
    Dim cn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\FinalProject\WebApplication1\App_Data\db1.mdb")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Session("adminid") = "") Then
            Response.Redirect("../loginpage.aspx")
        End If
        cn.Open()
        Try
            da = New OleDbDataAdapter("select customerid as CustomerID, firstname as FirstName, lastname as LastName, address as Address, dateofbirth as DateOfBirth, contactno as ContactNumber,emailid as EmailID, gender as Gender from customersdetails order by customerid", cn)
            ds = New DataSet()
            da.Fill(ds)
            GridView1.DataSource = ds
            GridView1.DataBind()
        Catch ex As Exception
            MsgBox("Error!", MsgBoxStyle.Exclamation)
        End Try
        cn.Close()
    End Sub


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        cn.Open()
        Try
            If (Customerid.Text = "") Then
                MsgBox("Please enter Customer ID.", MsgBoxStyle.Exclamation)
            Else
                da = New OleDbDataAdapter("select customerid as CustomerID, firstname as FirstName, lastname as LastName, address as Address, dateofbirth as DateOfBirth, contactno as ContactNumber,emailid as EmailID, gender as Gender from customersdetails where customerid='" & Customerid.Text & "' ", cn)
                ds = New DataSet()
                da.Fill(ds)
                GridView1.DataSource = ds
                GridView1.DataBind()
            End If
        Catch ex As Exception
            MsgBox("Error", MsgBoxStyle.Exclamation)
        End Try
        cn.Close()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        cn.Open()
        Try
            da = New OleDbDataAdapter("select customerid as CustomerID, firstname as FirstName, lastname as LastName, address as Address, dateofbirth as DateOfBirth, contactno as ContactNumber,emailid as EmailID, gender as Gender from customersdetails order by customerid", cn)
            ds = New DataSet()
            da.Fill(ds)
            GridView1.DataSource = ds
            GridView1.DataBind()
            Customerid.Text = ""
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