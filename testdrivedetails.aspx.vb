﻿Imports System.Data.OleDb
Public Class testdrivedetails
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
            da = New OleDbDataAdapter("select booktiming as BookTiming,testdriveid as TestDriveID,testdrivedate as TestDriveDate,testdrivetime as TestDriveTime,customerid as CustomerID, customername as CustomerName,customergender as Gender,customeraddress as Address,carid as CarID,carname as CarName,carcompany as Company,carprice as Price,carfuel as Fuel,carcolor as Color, cargear as Gear,seatingcapacity as SeatingCapacity from testdrivedetails order by booktiming desc", cn)
            ds = New DataSet()
            da.Fill(ds)
            GridView1.DataSource = ds
            GridView1.DataBind()
        Catch ex As Exception
            MsgBox("Error", MsgBoxStyle.Exclamation)
        End Try
        cn.Close()
    End Sub

    Protected Sub search_Click(sender As Object, e As EventArgs) Handles search.Click
        cn.Open()
        Try
            If (testdriveid.Text = "") Then
                MsgBox("Please enter Test Drive ID.", MsgBoxStyle.Exclamation)
            Else
                da = New OleDbDataAdapter("select booktiming as BookTiming,testdriveid as TestDriveID,testdrivedate as TestDriveDate,testdrivetime as TestDriveTime,customerid as CustomerID, customername as CustomerName,customergender as Gender,customeraddress as Address,carid as CarID,carname as CarName,carcompany as Company,carprice as Price,carfuel as Fuel,carcolor as Color, cargear as Gear,seatingcapacity as SeatingCapacity from testdrivedetails where testdriveid=" & testdriveid.Text & " ", cn)
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

    Protected Sub reset_Click(sender As Object, e As EventArgs) Handles reset.Click
        cn.Open()
        Try
            da = New OleDbDataAdapter("select booktiming as BookTiming,testdriveid as TestDriveID,testdrivedate as TestDriveDate,testdrivetime as TestDriveTime,customerid as CustomerID, customername as CustomerName,customergender as Gender,customeraddress as Address,carid as CarID,carname as CarName,carcompany as Company,carprice as Price,carfuel as Fuel,carcolor as Color, cargear as Gear,seatingcapacity as SeatingCapacity from testdrivedetails order by booktiming desc", cn)
            ds = New DataSet()
            da.Fill(ds)
            GridView1.DataSource = ds
            GridView1.DataBind()
            testdriveid.Text = ""
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