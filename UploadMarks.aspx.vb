Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class UploadMarks
    Inherits System.Web.UI.Page
    Dim sqlcon As New SqlConnection("Server=sql.bsite.net\MSSQL2016;Database=sohamproject_new;User Id=sohamproject_new;password=Database@college2023;Pooling=False")

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        sqlcon.Open()



        If DropDownList1.SelectedValue = "1" Then
            lblSub1.Text = "PAPER 1101"
            lblSub2.Text = "PAPER 1102"
            lblSub3.Text = "PAPER 1103"
            lblSub4.Text = "PAPER 1104"

            Dim query As String = "select * from Semester1 where sid='" + txtSID.Text + "' and sem='" + "1" + " ';"

            Dim cmd As New SqlCommand(query, sqlcon)

            Try
                Dim reader As SqlDataReader = cmd.ExecuteReader()
                If reader.HasRows Then
                    msglbl.Text = "Already Uploaded."
                Else
                    Panel1.Visible = True
                    msglbl.Text = ""

                End If
            Catch ex As Exception
                Response.Write("<script>alert('" + ex.ToString + "');</script>")
            End Try
        ElseIf DropDownList1.SelectedValue = "2" Then
            lblSub1.Text = "PAPER 1201"
            lblSub2.Text = "PAPER 1202"
            lblSub3.Text = "PAPER 1203"
            lblSub4.Text = "PAPER 1204"

            Dim query As String = "select * from Semester2 where sid='" + txtSID.Text + "' and sem='" + "2" + " ';"

            Dim cmd As New SqlCommand(Query, sqlcon)

            Try
                Dim reader As SqlDataReader = cmd.ExecuteReader()
                If reader.HasRows Then
                    msglbl.Text = "Already Uploaded."
                Else
                    Panel1.Visible = True
                    msglbl.Text = ""
                End If
            Catch ex As Exception
                Response.Write("<script>alert('" + ex.ToString + "');</script>")
            End Try
        ElseIf DropDownList1.SelectedValue = "3" Then
            lblSub1.Text = "PAPER 2101"
            lblSub2.Text = "PAPER 2102"
            lblSub3.Text = "PAPER 2103"
            lblSub4.Text = "PAPER 2104"

            Dim query As String = "select * from Semester3 where sid='" + txtSID.Text + "' and sem='" + "3" + " ';"

            Dim cmd As New SqlCommand(Query, sqlcon)

            Try
                Dim reader As SqlDataReader = cmd.ExecuteReader()
                If reader.HasRows Then
                    msglbl.Text = "Already Uploaded."
                Else
                    Panel1.Visible = True
                    msglbl.Text = ""
                End If
            Catch ex As Exception
                Response.Write("<script>alert('" + ex.ToString + "');</script>")
            End Try
        ElseIf DropDownList1.SelectedValue = "4" Then
            lblSub1.Text = "PAPER 2201"
            lblSub2.Text = "PAPER 2202"
            lblSub3.Text = "PAPER 2203"
            lblSub4.Text = "PAPER 2204"

            Dim query As String = "select * from Semester4 where sid='" + txtSID.Text + "' and sem='" + "4" + " ';"

            Dim cmd As New SqlCommand(Query, sqlcon)

            Try
                Dim reader As SqlDataReader = cmd.ExecuteReader()
                If reader.HasRows Then
                    msglbl.Text = "Already Uploaded."
                Else
                    Panel1.Visible = True
                    msglbl.Text = ""
                End If
            Catch ex As Exception
                Response.Write("<script>alert('" + ex.ToString + "');</script>")
            End Try
        ElseIf DropDownList1.SelectedValue = "5" Then
            lblSub1.Text = "PAPER 3101"
            lblSub2.Text = "PAPER 3102"
            lblSub3.Text = "PAPER 3103"
            lblSub4.Text = "PAPER 3104"

            Dim query As String = "select * from Semester5 where sid='" + txtSID.Text + "' and sem='" + "5" + " ';"

            Dim cmd As New SqlCommand(Query, sqlcon)

            Try
                Dim reader As SqlDataReader = cmd.ExecuteReader()
                If reader.HasRows Then
                    msglbl.Text = "Already Uploaded."
                Else
                    Panel1.Visible = True
                    msglbl.Text = ""
                End If
            Catch ex As Exception
                Response.Write("<script>alert('" + ex.ToString + "');</script>")
            End Try
        ElseIf DropDownList1.SelectedValue = "6" Then
            lblSub1.Text = "PAPER 3201"
            lblSub2.Text = "PAPER 3202"
            lblSub3.Text = "PAPER 3203"
            lblSub4.Text = "PAPER 3204"

            Dim query As String = "select * from Semester6 where sid='" + txtSID.Text + "' and sem='" + "6" + " ';"

            Dim cmd As New SqlCommand(Query, sqlcon)

            Try
                Dim reader As SqlDataReader = cmd.ExecuteReader()
                If reader.HasRows Then
                    msglbl.Text = "Already Uploaded."
                Else
                    Panel1.Visible = True
                    msglbl.Text = ""
                End If
            Catch ex As Exception
                Response.Write("<script>alert('" + ex.ToString + "');</script>")
            End Try
        Else
        End If

    End Sub

    Public Function clear() As Nullable
        txtSub1.Text = ""
        txtSub2.Text = ""
        txtSub3.Text = ""
        txtSub4.Text = ""
        txtSID.Text = ""
        DropDownList1.SelectedValue = "select"


    End Function
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click

        sqlcon.Open()
        Dim q1 As String = "insert into Semester1 values('" + txtSID.Text + "', '" + txtSub1.Text + "', '" + txtSub2.Text + "', '" + txtSub3.Text + "', '" + txtSub4.Text + "', '" + "1" + "');"
        Dim q2 As String = "insert into Semester2 values('" + txtSID.Text + "', '" + txtSub1.Text + "', '" + txtSub2.Text + "', '" + txtSub3.Text + "', '" + txtSub4.Text + "', '" + "2" + "');"
        Dim q3 As String = "insert into Semester3 values('" + txtSID.Text + "', '" + txtSub1.Text + "', '" + txtSub2.Text + "', '" + txtSub3.Text + "', '" + txtSub4.Text + "', '" + "3" + "');"
        Dim q4 As String = "insert into Semester4 values('" + txtSID.Text + "', '" + txtSub1.Text + "', '" + txtSub2.Text + "', '" + txtSub3.Text + "', '" + txtSub4.Text + "', '" + "4" + "');"
        Dim q5 As String = "insert into Semester5 values('" + txtSID.Text + "', '" + txtSub1.Text + "', '" + txtSub2.Text + "', '" + txtSub3.Text + "', '" + txtSub4.Text + "', '" + "5" + "');"
        Dim q6 As String = "insert into Semester6 values('" + txtSID.Text + "', '" + txtSub1.Text + "', '" + txtSub2.Text + "', '" + txtSub3.Text + "', '" + txtSub4.Text + "', '" + "6" + "');"

        Dim cmd1 As New SqlCommand(q1, sqlcon)
        Dim cmd2 As New SqlCommand(q2, sqlcon)
        Dim cmd3 As New SqlCommand(q3, sqlcon)
        Dim cmd4 As New SqlCommand(q4, sqlcon)
        Dim cmd5 As New SqlCommand(q5, sqlcon)
        Dim cmd6 As New SqlCommand(q6, sqlcon)


        If DropDownList1.SelectedValue = "1" Then
            Try
                cmd1.ExecuteNonQuery()
                Response.Write("<script>alert('" + "Success" + "');</script>")
                Panel1.Visible = False
                clear()


            Catch ex As Exception
                Response.Write("<script>alert('" + ex.ToString + "');</script>")
            End Try
        ElseIf DropDownList1.SelectedValue = "2" Then
            Try
                cmd2.ExecuteNonQuery()
                Response.Write("<script>alert('" + "Success" + "');</script>")
                Panel1.Visible = False
                clear()
            Catch ex As Exception
                Response.Write("<script>alert('" + ex.ToString + "');</script>")
            End Try
        ElseIf DropDownList1.SelectedValue = "3" Then
            Try
                cmd3.ExecuteNonQuery()
                Response.Write("<script>alert('" + "Success" + "');</script>")
                Panel1.Visible = False
                clear()
            Catch ex As Exception
                Response.Write("<script>alert('" + ex.ToString + "');</script>")
            End Try
        ElseIf DropDownList1.SelectedValue = "4" Then
            Try
                cmd4.ExecuteNonQuery()
                Response.Write("<script>alert('" + "Success" + "');</script>")
                Panel1.Visible = False
                clear()
            Catch ex As Exception
                Response.Write("<script>alert('" + ex.ToString + "');</script>")
            End Try
        ElseIf DropDownList1.SelectedValue = "5" Then
            Try
                cmd5.ExecuteNonQuery()
                Response.Write("<script>alert('" + "Success" + "');</script>")
                Panel1.Visible = False
                clear()
            Catch ex As Exception
                Response.Write("<script>alert('" + ex.ToString + "');</script>")
            End Try
        ElseIf DropDownList1.SelectedValue = "6" Then
            Try
                cmd6.ExecuteNonQuery()
                Response.Write("<script>alert('" + "Success" + "');</script>")
                Panel1.Visible = False
                clear()
            Catch ex As Exception
                Response.Write("<script>alert('" + ex.ToString + "');</script>")
            End Try
        End If
        sqlcon.Close()
    End Sub

End Class
