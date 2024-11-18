Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class UpStudent
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim sqlcon As New SqlConnection("Server=sql.bsite.net\MSSQL2016;Database=sohamproject_new;User Id=sohamproject_new;password=Database@college2023;Pooling=False")

        sqlcon.Open()

        Dim imgpath As String
        Dim pfName As String = StudentID.Text

        Dim extension As String = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower
        If extension = ".jpg" Or extension = ".png" Then
            FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "\\ProfilePicture\\" + pfName + extension)
            imgpath = "ProfilePicture\" + pfName + extension

            Dim query As String = "insert into StudentDetails values ('" + StudentID.Text + "','" + txtNm.Text + "','" + txtDB.Text + "','" + txtMob.Text + "','" + txtEm.Text + "','" + txtAdd.Text + "','" + imgpath + "','" + txtReg.Text + "','" + txtRoll.Text + "','" + txtNo.Text + "','" + txtSem.Text + "');"
            Dim query2 As String = "insert into StudentLogin values ('" + StudentID.Text + "','" + txtNm.Text + "', 12345  );"




            Dim cmd As New SqlCommand(query, sqlcon)
            Dim cmd2 As New SqlCommand(query2, sqlcon)


            Try
                cmd.ExecuteNonQuery()
                cmd2.ExecuteNonQuery()

                Response.Write("<script>alert('" + "Successful! | You default password is 12345" + "');</script>")
            Catch ex As Exception
                MsgBox(ex.ToString)
                Response.Write("<script>alert('" + ex.ToString + "');</script>")
            End Try
        End If



        sqlcon.Close()

    End Sub
End Class
