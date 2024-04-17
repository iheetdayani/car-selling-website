Imports System.Data.OleDb
Imports System.IO
Public Class updatecar
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\FinalProject\WebApplication1\App_Data\db1.mdb")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Session("adminid") = "") Then
            Response.Redirect("../loginpage.aspx")
        End If
        cn.Open()
        Try
            If Not IsPostBack Then
                Dim carid As String = Request.QueryString("carid")

                Dim cmd As New OleDbCommand("select * from carsdetails where carid='" & carid & "' ", cn)
                Dim dr As OleDbDataReader = cmd.ExecuteReader()
                If dr.HasRows Then
                    dr.Read()
                    HiddenField1.Value = dr("carid")
                    TextBox1.Text = dr("name")
                    DropDownList1.Text = dr("company")
                    TextBox2.Text = dr("price")
                    DropDownList2.Text = dr("seatingcapacity")
                    DropDownList3.Text = dr("cartype")
                    Image1.ImageUrl = "../images/carsphoto/" + dr("image") + "?" + DateTime.Now.Ticks.ToString()
                End If

            End If
        Catch ex As Exception
            MsgBox("Error", MsgBoxStyle.Exclamation)
        End Try
        cn.Close()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        cn.Open()
        Try

            If (TextBox1.Text = "" Or TextBox2.Text = "" Or DropDownList1.Text = "--select company--" Or DropDownList2.Text = "--select seating capacity--" Or DropDownList3.Text = "--cartype--") Then
                MsgBox("Error! Please enter all details.", MsgBoxStyle.Exclamation)
            Else
                Dim str As String
                Dim carid As String = Request.QueryString("carid")

                str = "update carsdetails set name='" & TextBox1.Text & "',
                                    company='" & DropDownList1.Text & "',price=" & TextBox2.Text & ",
                                    seatingcapacity='" & DropDownList2.Text & "',
                                    cartype='" & DropDownList3.Text & "'
                                    where  carid='" & carid & "' "
                Dim cmd As New OleDbCommand(str, cn)
                cmd.ExecuteNonQuery()
                MsgBox("Record Updated.", MsgBoxStyle.Information)


            End If
        Catch ex As Exception

        End Try
        cn.Close()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim companyqs As String = Request.QueryString("company")
        Dim cartypeqs As String = Request.QueryString("cartype")
        Response.Redirect("carsdetails.aspx?company=" + companyqs + "&cartype=" + cartypeqs + " ")
    End Sub
End Class