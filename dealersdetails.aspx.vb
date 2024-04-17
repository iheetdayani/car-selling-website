Imports System.Data.OleDb
Public Class dealersdetails
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\FinalProject\WebApplication1\App_Data\db1.mdb")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Session("adminid") = "") Then
            Response.Redirect("../loginpage.aspx")
        End If
    End Sub

    Protected Sub addbutton_Click(sender As Object, e As EventArgs) Handles addbutton.Click
        cn.Open()
        Try
            If (name.Text = "" Or company.Text = "--select company--" Or city.Text = "--select city--" Or address.Text = "" Or contactno.Text = "") Then
                label1.Text = "* All details are required."
                MsgBox("Error! Please enter all details.", MsgBoxStyle.Exclamation)
            Else
                label1.Text = ""
                Dim image As String
                If (company.Text = "Maruti Suzuki") Then
                    image = "marutisuzukidealer.png"
                End If
                If (company.Text = "Hyundai") Then
                    image = "hyundaidealer.png"
                End If
                If (company.Text = "Mahindra") Then
                    image = "mahindradealer.png"
                End If
                If (company.Text = "Toyota") Then
                    image = "toyotadealer.png"
                End If
                If (company.Text = "Kia") Then
                    image = "kiadealer.png"
                End If
                If (company.Text = "Tata Motors") Then
                    image = "tatamotorsdealer.png"
                End If

                Dim cmd As New OleDbCommand("select * from dealersdetails", cn)
                Dim dr As OleDbDataReader = cmd.ExecuteReader
                If dr.HasRows Then
                    Dim cmd2 As New OleDbCommand("select max(dealerid) from dealersdetails", cn)
                    Dim maxdealerid As Integer = CInt(cmd2.ExecuteScalar)
                    Dim dealerid As Integer = maxdealerid + 1

                    Dim cmd3 As New OleDbCommand("insert into dealersdetails values(" & dealerid & ",'" & name.Text & "','" & company.Text & "','" & city.Text & "','" & address.Text & "','" & contactno.Text & "', '" & image & "') ", cn)
                    cmd3.ExecuteNonQuery()
                    MsgBox("Record Inserted.", MsgBoxStyle.Information)
                    name.Text = ""
                    company.Text = "--select company--"
                    city.Text = "--select city--"
                    contactno.Text = ""
                    address.Text = ""
                    GridView1.DataBind()

                Else
                    Dim dealerid As Integer = 1
                    Dim cmd1 As New OleDbCommand("insert into dealersdetails values(" & dealerid & ",'" & name.Text & "','" & company.Text & "','" & city.Text & "','" & address.Text & "','" & contactno.Text & "', '" & image & "') ", cn)
                    cmd1.ExecuteNonQuery()
                    MsgBox("Record Inserted.", MsgBoxStyle.Information)
                    name.Text = ""
                    company.Text = "--select company--"
                    city.Text = "--select city--"
                    contactno.Text = ""
                    address.Text = ""
                    GridView1.DataBind()
                End If

            End If
        Catch ex As Exception
            MsgBox("Error", MsgBoxStyle.Exclamation)
        End Try
        cn.Close()
    End Sub

    Protected Sub Search_Click(sender As Object, e As EventArgs) Handles Search.Click
        cn.Open()
        Try
            If (dealerid1.Text = "") Then
                MsgBox("Error! Please enter Dealer ID.", MsgBoxStyle.Exclamation)
            Else
                Dim str As String
                Dim dr As OleDbDataReader
                str = "select * from dealersdetails where dealerid=" & dealerid1.Text & ""

                Dim cmd As New OleDbCommand(str, cn)
                dr = cmd.ExecuteReader
                dealerid1.Text = ""
                dealername1.Text = ""
                company1.Text = "--select company--"
                city1.Text = "--select city--"
                contactno1.Text = ""
                address1.Text = ""
                If dr.HasRows Then
                    dr.Read()
                    dealerid1.Text = dr("dealerid")
                    company1.Text = dr("company")
                    dealername1.Text = dr("dealername")
                    contactno1.Text = dr("contactno")
                    address1.Text = dr("address")
                    city1.Text = dr("city")
                    MsgBox("Record Found.", MsgBoxStyle.Information)
                Else
                    MsgBox("Error! Record not found", MsgBoxStyle.Exclamation)
                End If

            End If
        Catch ex As Exception
            MsgBox("Error", MsgBoxStyle.Exclamation)
        End Try
        cn.Close()
    End Sub

    Protected Sub Update_Click(sender As Object, e As EventArgs) Handles Update.Click
        cn.Open()
        Try
            If (dealerid1.Text = "" Or dealername1.Text = "" Or company1.Text = "--select company--" Or city1.Text = "--select city--" Or contactno1.Text = "" Or address1.Text = "") Then
                MsgBox("Error! Please enter all details.", MsgBoxStyle.Exclamation)
            Else
                Dim image1 As String
                If (company1.Text = "Maruti Suzuki") Then
                    image1 = "marutisuzukidealer.png"
                End If
                If (company1.Text = "Hyundai") Then
                    image1 = "hyundaidealer.png"
                End If
                If (company1.Text = "Mahindra") Then
                    image1 = "mahindradealer.png"
                End If
                If (company1.Text = "Toyota") Then
                    image1 = "toyotadealer.png"
                End If
                If (company1.Text = "Kia") Then
                    image1 = "kiadealer.png"
                End If
                If (company1.Text = "Tata Motors") Then
                    image1 = "tatamotorsdealer.png"
                End If
                Dim cmd As New OleDbCommand("update dealersdetails set dealername='" & dealername1.Text & "',company='" & company1.Text & "',city='" & city1.Text & "',address='" & address1.Text & "',contactno='" & contactno1.Text & "',carimage='" & image1 & "'  where dealerid=" & dealerid1.Text & " ", cn)
                cmd.ExecuteNonQuery()
                MsgBox("Record Updated.", MsgBoxStyle.Information)
                dealerid1.Text = ""
                dealername1.Text = ""
                company1.Text = "--select company--"
                city1.Text = "--select city--"
                contactno1.Text = ""
                address1.Text = ""
                GridView1.DataBind()
            End If
        Catch ex As Exception
            MsgBox("Error", MsgBoxStyle.Exclamation)
        End Try
        cn.Close()
    End Sub

    Protected Sub Delete_Click(sender As Object, e As EventArgs) Handles Delete.Click
        cn.Open()
        Try
            If (dealerid1.Text = "" Or dealername1.Text = "" Or company1.Text = "--select company--" Or city1.Text = "--select city--" Or contactno1.Text = "" Or address1.Text = "") Then
                MsgBox("Error! Please enter all details.", MsgBoxStyle.Exclamation)
            Else
                Dim str As String
                str = "delete from dealersdetails where dealerid=" & dealerid1.Text & " "

                Dim cmd As New OleDbCommand(str, cn)
                cmd.ExecuteNonQuery()
                MsgBox("Record Deleted.", MsgBoxStyle.Information)
                dealerid1.Text = ""
                dealername1.Text = ""
                company1.Text = "--select company--"
                city1.Text = "--select city--"
                contactno1.Text = ""
                address1.Text = ""
                GridView1.DataBind()

            End If
        Catch ex As Exception
            MsgBox("Error", MsgBoxStyle.Exclamation)
        End Try
        cn.Close()

    End Sub

    Protected Sub Clear_Click(sender As Object, e As EventArgs) Handles Clear.Click
        dealerid1.Text = ""
        dealername1.Text = ""
        company1.Text = "--select company--"
        city1.Text = "--select city--"
        contactno1.Text = ""
        address1.Text = ""
    End Sub

    Private Sub Logout_Click(sender As Object, e As EventArgs) Handles Logout.Click
        Session.Abandon()
        MsgBox("Logout", MsgBoxStyle.Information)
        Response.Redirect("../loginpage.aspx")
    End Sub
End Class