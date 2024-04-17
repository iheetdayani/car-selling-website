Imports System.Data.OleDb

Public Class newcarsdetails
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\FinalProject\WebApplication1\App_Data\db1.mdb")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Session("adminid") = "") Then
            Response.Redirect("../loginpage.aspx")
        End If
        cn.Open()
        Try
            Dim company As String = Request.QueryString("company")
            Dim cartype As String = Request.QueryString("cartype")
            Dim cmd As New OleDbCommand("select * from carsdetails where company='" & company & "' and cartype='" & cartype & "' ", cn)
            Dim dr As OleDbDataReader = cmd.ExecuteReader
            If dr.HasRows Then
                DataList1.DataSource = dr
                DataList1.DataBind()
            Else
                Label1.Text = "No Car Found."
            End If
        Catch ex As Exception
            MsgBox("Error", MsgBoxStyle.Exclamation)
        End Try

        cn.Close()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim company As String = Request.QueryString("company")
        Dim cartype As String = Request.QueryString("cartype")
        Response.Redirect("carcompany.aspx?company=" + company + "&cartype=" + cartype + "")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim company As String = Request.QueryString("company")
        Dim cartype As String = Request.QueryString("cartype")
        Response.Redirect("insertcar.aspx?company=" + company + "&cartype=" + cartype + "")
    End Sub
End Class