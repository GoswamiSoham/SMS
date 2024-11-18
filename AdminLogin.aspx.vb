Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class Admin
    Inherits System.Web.UI.Page

    Protected Sub btn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn.Click
        Dim sqlcon As New SqlConnection("Server=sql.bsite.net\MSSQL2016;Database=sohamproject_new;User Id=sohamproject_new;password=Database@college2023;Pooling=False")
        Dim query As String = "select * from AdminTable where username = '" + txtName.Text + "' and passwd = '" + txtPswd.Text + "';"
        Dim cmd As New SqlCommand(query, sqlcon)

        Try
            sqlcon.Open()
            '--------VERIFY THE USER---------------
            Dim reader As SqlDataReader = cmd.ExecuteReader()
            If reader.HasRows Then
                Response.Write("<script>alert('" + "LogIn Successful" + "');</script>")
                Response.Redirect("admin.aspx")

            Else
                Response.Write("<script>alert('" + "Invalid username or password" + "');</script>")
            End If
        Catch ex As Exception
            Response.Write("<script>alert('" + ex.ToString + "');</script>")
        Finally
            sqlcon.Close()
            txtName.Text = ""
            txtPswd.Text = ""
        End Try
    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
