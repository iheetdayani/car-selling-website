Imports System.Data.OleDb

Public Class employeesdetails
    Inherits System.Web.UI.Page
    Dim cn As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\FinalProject\WebApplication1\App_Data\db1.mdb")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Session("adminid") = "") Then
            Response.Redirect("../loginpage.aspx")
        End If
    End Sub

    Protected Sub addbutton_Click(sender As Object, e As EventArgs)
        cn.Open()

        Try
            If (firstname.Text = "" Or lastname.Text = "" Or designation.Text = "" Or gender.Text = "--select gender--" Or annualsalary.Text = "" Or contactno.Text = "") Then
                label1.Text = "* All details are required."
                MsgBox("All details are required.", MsgBoxStyle.Exclamation)
            Else

                Dim cmd1 As New OleDbCommand("select * from employeesdetails", cn)
                Dim dr1 As OleDbDataReader = cmd1.ExecuteReader
                If dr1.HasRows Then
                    Dim cmd2 As New OleDbCommand("select max(employeeid) from employeesdetails", cn)
                    Dim maxemployeeid As Integer = CInt(cmd2.ExecuteScalar)
                    Dim employeeid As Integer = maxemployeeid + 1
                    Dim cmd3 As New OleDbCommand("insert into employeesdetails values(" & employeeid & ",'" & firstname.Text & "','" & lastname.Text & "','" & designation.Text & "','" & gender.Text & "','" & contactno.Text & "', '" & annualsalary.Text & "') ", cn)
                    cmd3.ExecuteNonQuery()
                    MsgBox("Record Inserted.", MsgBoxStyle.Information)
                    label1.Text = ""
                    firstname.Text = ""
                    lastname.Text = ""
                    designation.Text = ""
                    gender.Text = "--select gender--"
                    contactno.Text = ""
                    annualsalary.Text = ""
                    GridView1.DataBind()

                Else
                    Dim employeeid As Integer = 1
                    Dim cmd4 As New OleDbCommand("insert into employeesdetails values(" & employeeid & ",'" & firstname.Text & "','" & lastname.Text & "','" & designation.Text & "','" & gender.Text & "','" & contactno.Text & "', '" & annualsalary.Text & "') ", cn)
                    cmd4.ExecuteNonQuery()
                    MsgBox("Record Inserted.", MsgBoxStyle.Information)
                    label1.Text = ""
                    firstname.Text = ""
                    lastname.Text = ""
                    designation.Text = ""
                    gender.Text = "--select gender--"
                    contactno.Text = ""
                    annualsalary.Text = ""
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
            If (employeeid1.Text = "") Then
                MsgBox("Error! Please enter Employee ID.", MsgBoxStyle.Exclamation)
            Else
                Dim str As String
                Dim dr As OleDbDataReader
                str = "select * from employeesdetails where employeeid=" & employeeid1.Text & ""

                Dim cmd As New OleDbCommand(str, cn)
                dr = cmd.ExecuteReader
                employeeid1.Text = ""
                firstname1.Text = ""
                lastname1.Text = ""
                designation1.Text = ""
                gender1.Text = "--select gender--"
                contactno1.Text = ""
                annualsalary1.Text = ""
                If dr.HasRows Then
                    dr.Read()
                    employeeid1.Text = dr("employeeid")
                    firstname1.Text = dr("firstname")
                    lastname1.Text = dr("lastname")
                    contactno1.Text = dr("contactno")
                    gender1.Text = dr("gender")
                    annualsalary1.Text = dr("annualsalary")
                    designation1.Text = dr("designation")
                    MsgBox("Record Found.", MsgBoxStyle.Information)
                Else
                    MsgBox("Error! Record not found", MsgBoxStyle.Exclamation)
                End If

            End If
        Catch ex As Exception
            MsgBox("Error! Please try again.")
        End Try
        cn.Close()

    End Sub

    Protected Sub Update_Click(sender As Object, e As EventArgs) Handles Update.Click
        cn.Open()
        Try
            If (employeeid1.Text = "" Or firstname1.Text = "" Or lastname1.Text = "" Or gender1.Text = "--select gender--" Or contactno1.Text = "" Or annualsalary1.Text = "" Or designation1.Text = "") Then
                MsgBox("Error! Please enter all details.", MsgBoxStyle.Exclamation)
            Else

                Dim cmd As New OleDbCommand("update employeesdetails set firstname='" & firstname1.Text & "',lastname='" & lastname1.Text & "',gender='" & gender1.Text & "',annualsalary='" & annualsalary1.Text & "',contactno='" & contactno1.Text & "',designation='" & designation1.Text & "'  where employeeid=" & employeeid1.Text & " ", cn)
                cmd.ExecuteNonQuery()
                MsgBox("Record Updated.", MsgBoxStyle.Information)
                employeeid1.Text = ""
                firstname1.Text = ""
                lastname1.Text = ""
                designation1.Text = ""
                gender1.Text = "--select gender--"
                contactno1.Text = ""
                annualsalary1.Text = ""
                GridView1.DataBind()

            End If
        Catch ex As Exception
            MsgBox("Error! Please try again.", MsgBoxStyle.Exclamation)
        End Try
        cn.Close()

    End Sub

    Protected Sub Delete_Click(sender As Object, e As EventArgs) Handles Delete.Click
        cn.Open()
        Try
            If (employeeid1.Text = "" Or firstname1.Text = "" Or lastname1.Text = "" Or gender1.Text = "--select gender--" Or contactno1.Text = "" Or annualsalary1.Text = "" Or designation1.Text = "") Then
                MsgBox("Error! Please enter all details.", MsgBoxStyle.Exclamation)
            Else
                Dim str As String
                str = "delete from employeesdetails where employeeid=" & employeeid1.Text & " "
                Dim cmd As New OleDbCommand(str, cn)
                cmd.ExecuteNonQuery()
                MsgBox("Record Deleted.", MsgBoxStyle.Information)
                employeeid1.Text = ""
                firstname1.Text = ""
                lastname1.Text = ""
                designation1.Text = ""
                gender1.Text = "--select gender--"
                contactno1.Text = ""
                annualsalary1.Text = ""
                GridView1.DataBind()
            End If
        Catch ex As Exception
            MsgBox("Error! Please try again.", MsgBoxStyle.Exclamation)
        End Try
        cn.Close()

    End Sub

    Protected Sub Clear_Click(sender As Object, e As EventArgs) Handles Clear.Click
        employeeid1.Text = ""
        firstname1.Text = ""
        lastname1.Text = ""
        designation1.Text = ""
        gender1.Text = "--select gender--"
        contactno1.Text = ""
        annualsalary1.Text = ""
    End Sub
    Private Sub Logout_Click(sender As Object, e As EventArgs) Handles Logout.Click
        Session.Abandon()
        MsgBox("Logout", MsgBoxStyle.Information)
        Response.Redirect("../loginpage.aspx")
    End Sub
End Class