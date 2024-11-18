<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminLogin.aspx.vb" Inherits="Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

<style>
  @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');



</style>
<link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <title>Log In</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="nav">
     <!--------------------------Navbar Code---------------------------------------->
        <nav>
			<div class="logo">Student Managment Portal</div>
			<div>
				<a class="nava" href="Default.aspx">Home</a>
				<a class="nava" href="Default.aspx#Contact">Contact</a>
			</div>
		</nav>
    </div>
    <div>
    
    <h1 id="Head">
       Welcome Admin 
        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/logo.png" 
            style="z-index: 1; left: 1118px; top: 81px; position: absolute; height: 106px; width: 155px; margin-top:50px; margin-right:50px;" />
        </h1>
    <br />
    <br />
   </div>
    <div class="CollegeLogo">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Garhbeta_College_logo.png" 
        
        
        style="z-index: 1; left: 31px; top: 73px; position: absolute; height: 122px; width: 130px; margin-top:50px; margin-left:50px;"  />
    </div>
    
        
    <!--------------------------Main LogIn Design---------------------------------------->
   <div id="asp">
            <label for="username">Username:</label>
            <asp:TextBox ID="txtName" runat="server" CssClass="style1"  ></asp:TextBox><br/><br />
            <label for="password">Password:</label>
            <asp:TextBox  ID="txtPswd" runat="server" TextMode="Password" CssClass="style1"></asp:TextBox><br/><br />
            <asp:Button  ID="btn" runat="server" Text="Login"  CssClass="SubmitBtn"    />
            
            <br/><br />
            
            
 </div>
            
   
    </form>
<footer class="footer" >
    <p >Copyright &copy; 2023 Garhbeta College | Designed & Developed by <a href="Default.aspx#dev">Dept of BCA</a></p>
  </footer>
</body>
</html>
