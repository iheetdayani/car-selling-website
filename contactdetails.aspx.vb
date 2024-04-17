Imports System.Data.OleDb
Public Class contactdetails
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
            da = New OleDbDataAdapter("select DateTime as ContactTime,id as ID,name as CustomerName,contactno as ContactNumber,emailid as EmailID,subject as Subject,message as Message from contactdetails order by DateTime desc", cn)

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
            If (contactid.Text = "") Then
                MsgBox("Please enter ID", MsgBoxStyle.Exclamation)
            Else
                da = New OleDbDataAdapter("select DateTime as ContactTime,id as ID,name as CustomerName,contactno as ContactNumber,emailid as EmailID,subject as Subject,message as Message from contactdetails where id=" & contactid.Text & " ", cn)

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


            da = New OleDbDataAdapter("select DateTime as ContactTime,id as ID,name as CustomerName,contactno as ContactNumber,emailid as EmailID,subject as Subject,message as Message from contactdetails order by DateTime desc", cn)

            ds = New DataSet()

            da.Fill(ds)

            GridView1.DataSource = ds
            GridView1.DataBind()

            contactid.Text = ""
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