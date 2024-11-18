<%@ Page Language="VB" AutoEventWireup="false" CodeFile="StudentLogin.aspx.vb" Inherits="Student" EnableSessionState="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
<style>
  @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
    .style1
    {
        font-size: large;
    }

</style>
<link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <title>Log In</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!--------------------------Navbar Code---------------------------------------->
    <nav>
			<div class="logo">Student Managment Portal</div>
			<div>

				<a href="Default.aspx">Home</a>
                <a href="Default.aspx#Contact">Contact</a>
                <a href="UpStudent.aspx">Register</a>
                <a href="Default.aspx#About">About Us</a>
                
			</div>
		</nav>
    </div>
    <div>
    <h1 id="Head">
       Welcome Student
        </h1>
    <hr />
      <div class="CollegeLogo">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Garhbeta_College_logo.png" 
        
        
        
              style="z-index: 1; left: 32px; top: 111px; position: absolute; height: 122px; width: 130px; margin-top:50px; margin-left:50px;"  />
    </div>
   </div>
   <div id="asp">
   <!--------------------------Main LogIn Design---------------------------------------->
            <label for="username">Student ID</label>
            <asp:TextBox ID="txtID" runat="server" CssClass="style1"></asp:TextBox><br/><br />
            
            <label for="password">Password</label>
            <asp:TextBox  ID="txtPswd" runat="server" TextMode="Password" CssClass="style1"></asp:TextBox><br/><br />
            <asp:Button  ID="btnLogIn" runat="server" Text="Login" CssClass="SubmitBtn"
                style="font-size: large"  />
                <br />
                
            
            
            <br/><br />
            
 </div>
            
<footer class="footer" >
    <p >Copyright &copy; 2023 Garhbeta College | Designed & Developed by <a href="Default.aspx#dev">Dept of BCA</a></p>
  </footer>
    </form>
</body>
</html>
