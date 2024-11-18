Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class Student
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Label1.Text = CType(Session("TextBoxValue"), String)
        Dim sid As String = Request.QueryString("TextBoxValue")
        Label1.Text = sid



        Dim sqlcon As New SqlConnection("Server=sql.bsite.net\MSSQL2016;Database=sohamproject_new;User Id=sohamproject_new;password=Database@college2023;Pooling=False")
        Dim query As String = "select * from StudentDetails where StudentID='" + sid + "';"
        Dim da As New SqlDataAdapter(query, sqlcon)
        Dim dt As New DataTable
        Try
            sqlcon.Open()

            da.Fill(dt)
            pfimg.ImageUrl = dt.Rows(0).Item(6)

        Catch ex As Exception
            Response.Write("<script>alert('" + ex.ToString + "');</script>")


        End Try
    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        Response.Redirect("Notice.aspx")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim sid As String = Request.QueryString("TextBoxValue")
        Dim sqlcon As New SqlConnection("Server=sql.bsite.net\MSSQL2016;Database=sohamproject_new;User Id=sohamproject_new;password=Database@college2023;Pooling=False")
        Dim query As String = "select * from StudentDetails where StudentID='" + sid + "';"
        Dim da As New SqlDataAdapter(query, sqlcon)
        Dim dt As New DataTable
        Try
            sqlcon.Open()

            da.Fill(dt)
            txtId.Text = dt.Rows(0).Item(0)
            txtId.ReadOnly = True
            txtName.Text = dt.Rows(0).Item(1)
            txtName.ReadOnly = True
            txtDob.Text = dt.Rows(0).Item(2)
            txtDob.ReadOnly = True
            txtEmail.Text = dt.Rows(0).Item(4)
            txtAdd.Text = dt.Rows(0).Item(5)
            txtCno.Text = dt.Rows(0).Item(3)
            txtRegno.Text = dt.Rows(0).Item(7)
            txtRegno.ReadOnly = True
            txtRollno.Text = dt.Rows(0).Item(8)
            txtNo.Text = dt.Rows(0).Item(9)
            txtSem.Text = dt.Rows(0).Item(10)





            Panel1.Visible = True
            Panel2.Visible = False
            Panel3.Visible = False
            Panel4.Visible = False

        Catch ex As Exception
            Response.Write("<script>alert('" + ex.ToString + "');</script>")


        End Try
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim sid As String = Request.QueryString("TextBoxValue")
        Dim sqlcon As New SqlConnection("Server=sql.bsite.net\MSSQL2016;Database=sohamproject_new;User Id=sohamproject_new;password=Database@college2023;Pooling=False")
        sqlcon.Open()
        
        Dim query As String = "UPDATE StudentDetails SET Name='" + txtName.Text + "',DateOfBirth='" + txtDob.Text + "',ContactNo='" + txtCno.Text + "',Email='" + txtEmail.Text + "',Address='" + txtAdd.Text + "',RegistrationNo='" + txtRegno.Text + "',Roll='" + txtRollno.Text + "',No='" + txtNo.Text + "',Semester='" + txtSem.Text + "' WHERE StudentID='" + sid + "';"

            Dim cmd As New SqlCommand(query, sqlcon)



            Try

                cmd.ExecuteNonQuery()
                Response.Write("<script>alert('" + "Success! ✔" + "');</script>")
                txtId.Text = ""
                txtId.ReadOnly = False
                txtName.Text = ""
                txtDob.Text = ""
                txtCno.Text = ""
                txtEmail.Text = ""
                txtAdd.Text = ""
                txtRegno.Text = ""
                txtRollno.Text = ""
                txtNo.Text = ""
                txtSem.Text = ""
                Panel1.Visible = False


            Catch ex As Exception

                Response.Write("<script>alert('" + ex.ToString + "');</script>")
            End Try

        
            


        sqlcon.Close()
    End Sub

    Protected Sub Button12_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button12.Click
        Panel2.Visible = True

        Panel1.Visible = False

        Panel3.Visible = False
        Panel4.Visible = False
        
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim imgpath As String
        Dim pfName As String = txtName.Text
        Dim sid As String = Request.QueryString("TextBoxValue")
        Dim extension As String = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower
        If extension = ".jpg" Or extension = ".png" Or extension = ".jpeg" Then
            FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "\\ProfilePicture\\" + sid + extension)
            imgpath = "ProfilePicture\" + sid + extension

            Dim sqlcon As New SqlConnection("Server=sql.bsite.net\MSSQL2016;Database=sohamproject_new;User Id=sohamproject_new;password=Database@college2023;Pooling=False")
            sqlcon.Open()

            Dim query As String = "UPDATE StudentDetails SET ProfilePicturepath='" + imgpath + "' WHERE StudentId='" + sid + "';"

            Dim cmd As New SqlCommand(query, sqlcon)

            Try
                cmd.ExecuteNonQuery()
                Response.Write("<script>alert('" + "Success! ✔" + "');</script>")
                Panel2.Visible = False

            Catch ex As Exception
                Response.Write("<script>alert('" + ex.ToString + "');</script>")
            End Try
            sqlcon.Close()
        Else
            Response.Write("<script>alert('" + "Upload only .jpg, .png, .jpeg files" + "');</script>")
        End If
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Panel1.Visible = False
    End Sub

    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click
        Panel3.Visible = True

        Panel1.Visible = False
        Panel2.Visible = False
        Panel5.Visible = False
        Panel4.Visible = False
    End Sub


    Public Function checkQuery() As String
        Dim sid As String = Request.QueryString("TextBoxValue")
        Dim sqlcon As New SqlConnection("Server=sql.bsite.net\MSSQL2016;Database=sohamproject_new;User Id=sohamproject_new;password=Database@college2023;Pooling=False")
        Dim query As String

        If DropDownList1.SelectedValue = "1" Then
            query = "SELECT * FROM Semester1 WHERE sid='" + sid + "';"
            Return query
        ElseIf DropDownList1.SelectedValue = "2" Then
            query = "SELECT * FROM Semester2 WHERE sid='" + sid + "';"
            Return query
        ElseIf DropDownList1.SelectedValue = "3" Then
            query = "SELECT * FROM Semester3 WHERE sid='" + sid + "';"
            Return query
        ElseIf DropDownList1.SelectedValue = "4" Then
            query = "SELECT * FROM Semester4 WHERE sid='" + sid + "';"
            Return query
        ElseIf DropDownList1.SelectedValue = "5" Then
            query = "SELECT * FROM Semester5 WHERE sid='" + sid + "';"
            Return query
        ElseIf DropDownList1.SelectedValue = "6" Then
            query = "SELECT * FROM Semester6 WHERE sid='" + sid + "';"
            Return query
        End If


    End Function

    Public Function printPapers() As Nullable
        If DropDownList1.SelectedValue = "1" Then
            lblSub1.Text = "PAPER 1101"
            lblSub2.Text = "PAPER 1102"
            lblSub3.Text = "PAPER 1103"
            lblSub4.Text = "PAPER 1104"
        ElseIf DropDownList1.SelectedValue = "2" Then
            lblSub1.Text = "PAPER 1201"
            lblSub2.Text = "PAPER 1202"
            lblSub3.Text = "PAPER 1203"
            lblSub4.Text = "PAPER 1204"
        ElseIf DropDownList1.SelectedValue = "3" Then
            lblSub1.Text = "PAPER 2101"
            lblSub2.Text = "PAPER 2102"
            lblSub3.Text = "PAPER 2103"
            lblSub4.Text = "PAPER 2104"
        ElseIf DropDownList1.SelectedValue = "4" Then
            lblSub1.Text = "PAPER 2201"
            lblSub2.Text = "PAPER 2202"
            lblSub3.Text = "PAPER 2203"
            lblSub4.Text = "PAPER 2204"
        ElseIf DropDownList1.SelectedValue = "5" Then
            lblSub1.Text = "PAPER 3101"
            lblSub2.Text = "PAPER 3102"
            lblSub3.Text = "PAPER 3103"
            lblSub4.Text = "PAPER 3104"
        ElseIf DropDownList1.SelectedValue = "6" Then
            lblSub1.Text = "PAPER 3201"
            lblSub2.Text = "PAPER 3202"
            lblSub3.Text = "PAPER 3203"
            lblSub4.Text = "PAPER 3204"
        End If
    End Function
    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        printPapers()

        Dim sid As String = Request.QueryString("TextBoxValue")
        Dim sqlcon As New SqlConnection("Server=sql.bsite.net\MSSQL2016;Database=sohamproject_new;User Id=sohamproject_new;password=Database@college2023;Pooling=False")

        Dim finalQuery As String = checkQuery().ToString


        Dim da As New SqlDataAdapter(finalQuery, sqlcon)
        Dim dt As New DataTable

        Try
            sqlcon.Open()

            da.Fill(dt)

            txtSub1.Text = dt.Rows(0).Item(1)
            txtSub1.ReadOnly = True

            txtSub2.Text = dt.Rows(0).Item(2)
            txtSub2.ReadOnly = True

            txtSub3.Text = dt.Rows(0).Item(3)
            txtSub3.ReadOnly = True

            txtSub4.Text = dt.Rows(0).Item(4)
            txtSub4.ReadOnly = True

            sqlcon.Close()

            Dim sub1Marks As Integer = CInt(txtSub1.Text)
            Dim sub2Marks As Integer = CInt(txtSub2.Text)
            Dim sub3Marks As Integer = CInt(txtSub3.Text)
            Dim sub4Marks As Integer = CInt(txtSub4.Text)

            Dim total As Integer = (sub1Marks + sub2Marks + sub3Marks + sub4Marks)

            If sub1Marks < 35 Or sub2Marks < 35 Or sub3Marks < 35 Or sub4Marks < 35 Then
                resultlbl.Text = "FAIL"
                resultlbl2.Text = ""
            Else
                resultlbl2.Text = "PASS"
                resultlbl.Text = ""
            End If

            Panel4.Visible = True

        Catch ex As Exception
            Response.Write("<script>alert('" + ex.ToString + "');</script>")
        End Try

        sqlcon.Close()


    End Sub

    Protected Sub Button11_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button11.Click
        Panel5.Visible = True
        Panel3.Visible = False
        Panel2.Visible = False
        Panel1.Visible = False

    End Sub

    Protected Sub Button8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button8.Click
        If TextBox1.Text = TextBox2.Text Then
            Dim sid As String = Request.QueryString("TextBoxValue")
            Dim sqlcon As New SqlConnection("Server=sql.bsite.net\MSSQL2016;Database=sohamproject_new;User Id=sohamproject_new;password=Database@college2023;Pooling=False")
            sqlcon.Open()
            Dim query As String = "UPDATE StudentLogin SET Student_Password ='" + TextBox2.Text + "' WHERE id='" + sid + "';"
            Dim cmd As New SqlCommand(query, sqlcon)
            Try
                cmd.ExecuteNonQuery()
                Response.Write("<script>alert('" + "Successful✅" + "');</script>")
                lblMs.Visible = False
                TextBox1.Text = ""
                TextBox2.Text = ""

            Catch ex As Exception
                Response.Write("<script>alert('" + ex.ToString + "');</script>")
            End Try
            sqlcon.Close()
        Else
            lblMs.Text = "Does't Matched."
            lblMs.Visible = True
            TextBox1.Text = ""
            TextBox2.Text = ""
        End If
    End Sub

    Protected Sub Button9_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button9.Click
        Panel5.Visible = False
    End Sub
End Class
