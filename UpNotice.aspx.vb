Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class UpNotice

    Inherits System.Web.UI.Page



    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim sqlcon As New SqlConnection("Server=sql.bsite.net\MSSQL2016;Database=sohamproject_new;User Id=sohamproject_new;password=Database@college2023;Pooling=False")
        sqlcon.Open()
        Dim filepath As String
        Dim extension As String = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower
        If extension = ".pdf" Then
            FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "\\NoticeFiles\\" + TextBox1.Text + extension)
            filepath = "NoticeFiles\" + TextBox1.Text + extension
            Dim query As String = "insert into NoticeTable values('" + FileUpload1.FileName + "','" + TextBox1.Text + "','" + filepath + "','" + txtDate.Text + "');"
            Dim cmd As New SqlCommand(query, sqlcon)
            Try
                cmd.ExecuteNonQuery()
                Response.Write("<script>alert('" + "Successful!" + "');</script>")
                TextBox1.Text = ""

            Catch ex As Exception
                MsgBox(ex.ToString)
                Response.Write("<script>alert('" + ex.ToString + "');</script>")
            End Try
        Else
            lblMsg.Text = " Please upload only pdf files"
        End If

        sqlcon.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Panel1.Visible = True
        Panel2.Visible = False
        Dim the_date As Date
        the_date = Format(Now(), "short date")
        txtDate.Text = the_date
        loadData()


    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Panel1.Visible = False
        Panel2.Visible = True
    End Sub
    ' Public Sub findPathAndDelete()
    ' Dim sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True")
    'Dim query As String = "select * from NoticeTable where NoticeID='" + txtNID.Text + "';"

    'Dim da As New SqlDataAdapter(Query, sqlcon)
    'Dim dt As New DataTable
    'Try
    'sqlcon.Open()

    ' da.Fill(dt)





    'Catch ex As Exception
    ' MsgBox(ex.ToString)
    ' End Try
    'sqlcon.Close()
    'End Sub 
    Public Sub loadData()
        Dim sqlcon As New SqlConnection("Server=sql.bsite.net\MSSQL2016;Database=sohamproject_new;User Id=sohamproject_new;password=Database@college2023;Pooling=False")
        sqlcon.Open()
        Dim sd As New SqlDataAdapter("SELECT * FROM NoticeTable;", sqlcon)
        Dim dt As New DataTable
        Try
            sd.Fill(dt)

            gridView.DataBind()
        Catch ex As Exception
            Response.Write("<script>alert('" + ex.ToString + "');</script>")
        End Try
        sqlcon.Close()
    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click

        Dim sqlcon As New SqlConnection("Server=sql.bsite.net\MSSQL2016;Database=sohamproject_new;User Id=sohamproject_new;password=Database@college2023;Pooling=False")
        sqlcon.Open()
        Dim id As Integer = Integer.Parse(txtNID.Text)

        Dim query As String = "DELETE NoticeTable WHERE NoticeID = '" & id & "'; "
        Dim cmd As New SqlCommand(query, sqlcon)
        Try

            cmd.ExecuteNonQuery()



            Response.Write("<script>alert('" + "Deleted." + "');</script>")
            txtNID.Text = ""

        Catch ex As Exception
            Response.Write("<script>alert('" + ex.ToString + "');</script>")
        End Try
        sqlcon.Close()

    End Sub
End Class
