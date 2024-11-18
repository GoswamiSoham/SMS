Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class admin
    Inherits System.Web.UI.Page

    



    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("UpStudent.aspx")

    End Sub

    





    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click

        Panel4.Visible = True
        Panel5.Visible = False

    End Sub

    Protected Sub Button8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button8.Click
        txtID.ReadOnly = "True"
        Dim sqlcon As New SqlConnection("Server=sql.bsite.net\MSSQL2016;Database=sohamproject_new;User Id=sohamproject_new;password=Database@college2023;Pooling=False")
        Dim query As String = "select * from StudentDetails where StudentID='" + txtID.Text + "';"
        Dim da As New SqlDataAdapter(query, sqlcon)
        Dim dt As New DataTable
        Try
            sqlcon.Open()

            da.Fill(dt)

            txtNm.Text = dt.Rows(0).Item(1)
            txtDB.Text = dt.Rows(0).Item(2)
            txtCT.Text = dt.Rows(0).Item(3)
            txtEm.Text = dt.Rows(0).Item(4)
            txtADD.Text = dt.Rows(0).Item(5)
            Image1.ImageUrl = dt.Rows(0).Item(6)
            txtRegN.Text = dt.Rows(0).Item(7)
            txtRoll.Text = dt.Rows(0).Item(8)
            txtNo.Text = dt.Rows(0).Item(9)

            txtSem.Text = dt.Rows(0).Item(10)


            Panel5.Visible = True
            Image1.Visible = True

        Catch ex As Exception
            Response.Write("<script>alert('" + ex.ToString + "');</script>")


        End Try
        sqlcon.Close()

    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        Response.Redirect("UpNotice.aspx")

    End Sub



    Protected Sub Button9_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button9.Click
        Dim sqlcon As New SqlConnection("Server=sql.bsite.net\MSSQL2016;Database=sohamproject_new;User Id=sohamproject_new;password=Database@college2023;Pooling=False")
        sqlcon.Open()

        Dim query As String = "UPDATE StudentDetails SET Name='" + txtNm.Text + "',DateOfBirth='" + txtDB.Text + "',ContactNo='" + txtCT.Text + "',Email='" + txtEm.Text + "',Address='" + txtADD.Text + "',RegistrationNo='" + txtRegN.Text + "',Roll='" + txtRoll.Text + "',No='" + txtNo.Text + "',Semester='" + txtSem.Text + "' WHERE StudentID='" + txtID.Text + "';"
        Dim cmd As New SqlCommand(query, sqlcon)
        Try
            cmd.ExecuteNonQuery()
            Response.Write("<script>alert('" + "Success! ✔" + "');</script>")
            txtID.Text = ""
            txtID.ReadOnly = False
            txtNm.Text = ""
            txtDB.Text = ""
            txtCT.Text = ""
            txtEm.Text = ""
            txtADD.Text = ""
            txtRegN.Text = ""
            txtRoll.Text = ""
            txtNo.Text = ""
            txtSem.Text = ""
            Panel5.Visible = False


        Catch ex As Exception
            lblMsg.Text = ex.ToString

        End Try

        sqlcon.Close()
    End Sub

    Protected Sub Button10_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button10.Click
        Panel4.Visible = False
        Image1.ImageUrl = ""
        Image1.Visible = False
        txtID.ReadOnly = "False"
        txtID.Text = ""
        txtNm.Text = ""
        txtDB.Text = ""
        txtCT.Text = ""
        txtEm.Text = ""
        txtADD.Text = ""
        txtRegN.Text = ""
        txtRoll.Text = ""
        txtNo.Text = ""
        txtSem.Text = ""
        lblMsg.Text = ""
    End Sub

    Protected Sub Button11_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button11.Click
        Response.Redirect("UploadMarks.aspx")
    End Sub
End Class
