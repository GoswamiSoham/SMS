<%@ Page Language="VB" AutoEventWireup="false" CodeFile="UpStudent.aspx.vb" Inherits="UpStudent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title>Update Details</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="nav">
     <!--------------------------Navbar Code---------------------------------------->
        <nav>
			<div class="logo">Student Managment Portal</div>
			<div>
				<a class="nava" href="#">Home</a>
				<a class="nava" href="Default.aspx#Contact">Contact</a>
			</div>
		</nav>
    </div>
    <div>

       <h2 style="text-align: center"> Student Registration</h2>
          <div class="CollegeLogo">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Garhbeta_College_logo.png" 
        
        
        style="z-index: 1; left: 31px; top: 73px; position: absolute; height: 122px; width: 130px; margin-top:50px; margin-left:50px;"  />
    </div>
        <div class="container">
        <fieldset style="font-size: large">
    
        <asp:Label ID="Label12" runat="server" Text="Student ID:"></asp:Label>
        <br />
        <asp:TextBox ID="StudentID" runat="server"></asp:TextBox>
    
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="StudentID" ErrorMessage="| enter correct ID" ForeColor="Red" 
            ValidationExpression="^((\d{3})|(\w{3}))\d{6}$"></asp:RegularExpressionValidator>
        
        <br />
    
        <asp:Label ID="Label1" runat="server" Text="Full Name:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="Label11" runat="server" Text="Chose a profile picture"></asp:Label>
        <br />
        <asp:TextBox ID="txtNm" runat="server"></asp:TextBox>
    
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtNm" ErrorMessage="Enter Name" ForeColor="Red" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
    
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Date of Birth:"></asp:Label>
        <br />
        <asp:TextBox ID="txtDB" runat="server"></asp:TextBox>
    
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtDB" ErrorMessage="Enter Date of Birth" ForeColor="Red" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label3" runat="server" Text="Contact No:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Address Line"></asp:Label>
        <br />
        <asp:TextBox ID="txtMob" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtAdd" runat="server" Width="258px"></asp:TextBox>
    
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtAdd" ErrorMessage="Enter Adderss" ForeColor="Red" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
    
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtMob" ErrorMessage="enter a valid mobile no" 
                ForeColor="Red" ValidationExpression="^[7-9][0-9]{9}$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <br />
        <asp:Label ID="Label13" runat="server" Text="Select gender:"></asp:Label>
            <asp:RadioButton ID="rdb" runat="server" GroupName="rdb" Text="male" />
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="rdb" 
                Text="female" />
         <br />
        <asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
             
        &nbsp;<br />
        <asp:TextBox ID="txtEm" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtEm" ErrorMessage="⚠Enter a valid email" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            &nbsp;
    
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="txtRoll" ErrorMessage="Enter Roll No and Semester" ForeColor="Red" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
    
        <br />

    
        <asp:Label ID="Label7" runat="server" Text="Reg No"></asp:Label>
            <br />
        <asp:TextBox ID="txtReg" runat="server" Width="173px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="txtReg" ErrorMessage="Enter Registration No" ForeColor="Red" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
    
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
        <br />
        <br />
    
        <asp:Label ID="Label8" runat="server" Text="Roll:"></asp:Label>
            <asp:TextBox ID="txtRoll" runat="server" Width="90px"></asp:TextBox>
            <asp:Label ID="Label9" runat="server" Text="No:"></asp:Label>
        <asp:TextBox ID="txtNo" runat="server" Width="38px" Height="22px"></asp:TextBox>
     
            <asp:Label ID="Label10" runat="server" Text="Semester"></asp:Label>
      
        <asp:TextBox ID="txtSem" runat="server" Width="42px" Height="22px"></asp:TextBox>
    
        <br />
        <br />
            <div style="text-align:center;">
                    <asp:Button ID="Button1" runat="server" style="text-align: center" 
        Text="Submit" CssClass="SubmitBtn" Width="183px" />
            </div>

    </fieldset>

        </div>
    
    </div>
    <br />
    <br />
<footer class="footer" >
    <p >Copyright &copy; 2023 Garhbeta College | Designed & Developed by <a href="Default.aspx#dev">Dept of BCA</a></p>
  </footer>
    </form>
</body>
</html>
