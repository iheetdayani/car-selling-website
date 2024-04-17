Imports System.Data.OleDb
Imports System.IO
Public Class insertcar
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\FinalProject\WebApplication1\App_Data\db1.mdb")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Session("adminid") = "") Then
            Response.Redirect("../loginpage.aspx")
        End If
        Dim companyqs As String = Request.QueryString("company")
        Dim cartypeqs As String = Request.QueryString("cartype")
        company.Text = companyqs
        cartype.Text = cartypeqs
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        cn.Open()
        Try


            If (carid.Text = "" Or name.Text = "" Or seatingcapacity.Text = "--select seating capacity--" Or imagefile.HasFile = False Or price.Text = "") Then
                MsgBox("Error! Please enter all details.", MsgBoxStyle.Exclamation)
            Else
                Dim cmd As New OleDbCommand("select * from carsdetails where carid='" & carid.Text & "' ", cn)
                Dim dr As OleDbDataReader = cmd.ExecuteReader
                If dr.HasRows Then
                    MsgBox("Error! CarID already exists. Please enter different CarID.", MsgBoxStyle.Exclamation)
                Else
                    Dim extension As String = Path.GetExtension(imagefile.FileName)
                    If (extension = ".png") Then
                        Dim fname As String = Path.GetFileName(imagefile.FileName)
                        Dim cmd1 As New OleDbCommand("select * from carsdetails where image='" & fname & "' ", cn)
                        Dim dr1 As OleDbDataReader = cmd1.ExecuteReader()
                        If dr1.HasRows Then
                            MsgBox("Error ! Please change name of the Image File.", MsgBoxStyle.Exclamation)
                        Else
                            imagefile.SaveAs(Server.MapPath("../images/carsphoto/" + fname))
                            cn.Close()
                            Dim str As String
                            str = "insert into carsdetails values('" & carid.Text & "', '" & name.Text & "','" & company.Text & "'," & price.Text & ",'" & seatingcapacity.Text & "','" & fname & "','" & cartype.Text & "')"
                            cn.Open()
                            Dim cmd2 As New OleDbCommand(str, cn)
                            cmd2.ExecuteNonQuery()
                            MsgBox("Record Inserted.", MsgBoxStyle.Information)
                            carid.Text = ""
                            name.Text = ""
                            seatingcapacity.Text = "--select seating capacity--"
                            price.Text = ""

                        End If
                    Else
                        MsgBox("Only .png files are allowed.", MsgBoxStyle.Exclamation)
                    End If

                End If
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