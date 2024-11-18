<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Student.aspx.vb" Inherits="Student" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title>Student Portal</title>
    <style>
		

	    .style1
        {
            width: 100%;
        }
        .style8
        {
            text-align: left;
            width: 177px;
            height: 150px;
        }
        .style10
        {
            text-align: right;
            width: 214px;
            height: 150px;
        }
        .style11
        {
            text-align: right;
            width: 438px;
            height: 150px;
        }
        .style14
        {
            text-align: left;
            width: 119px;
            height: 150px;
        }
        .style16
        {
            text-align: left;
            width: 704px;
            height: 150px;
        }
        .style19
        {
            text-align: left;
            width: 355px;
            height: 150px;
        }
        .style20
        {
            width: 100px;
        }
        .style21
        {
            max-width: 500px;
            margin: 20px auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 4px;
            box-shadow: 0 0 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .style22
        {
            font-size: large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="navbar">
    <nav>
			<div class="logo">Student Managment Portal</div>
			<div>
				<a  class="navA" href="Default.aspx">Logout</a>
			</div>
		</nav>
    </div>
   
    <table class="style1">
        <tr>
            <td class="style8">
    <h2>Welcome&nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
        </h2>
            </td>
            <td class="style19">
                &nbsp;</td>
            <td class="style14">
                </td>
            <td class="style16">
              <div class="CollegeLogo">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Garhbeta_College_logo.png" 
        
        
        
                      
                      style="left: -40px; top: 196px; position: absolute; height: 180px; width: 200px; margin-top:50px; margin-left:50px; z-index:-1;" />
    </div>
                &nbsp;</td>
            <td class="style10">
            </td>
            <td class="style11">
                <asp:Image ID="pfimg" runat="server" Height="200px" style="margin-left: 21px" 
                    Width="200px" BorderColor="#000099" BorderStyle="Solid" 
                    BorderWidth="2px" />
            </td>
        </tr>
        </table>

          
    <p style="text-align: right">
        <asp:Button ID="Button12" runat="server" Text="Change profile picture:" CssClass="AdminBtns" />
            </p>
    <div style="margin-left:250px;">
        <asp:Button ID="Button1" runat="server" 
        style="font-size: large"  CssClass="AdminBtns" Text="Edit/View details" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button5" runat="server" style="font-size: large" 
        Text="View Notice" CssClass="AdminBtns" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
        ID="Button7" runat="server" style="font-size: large" 
            Text="View Marks" CssClass="AdminBtns" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button11" runat="server" style="font-size: large" 
        Text="Change Password" CssClass="AdminBtns" />
    </div>
    <asp:Panel ID="Panel1" runat="server" Visible="False">
        <div class="MarksUp" id="Hyper">
            
<asp:Label ID="Label3" runat="server" Text="Student ID:" CssClass="label"></asp:Label>
            <asp:TextBox ID="txtId" runat="server" CssClass="textBox" BackColor="#D8D8D8" 
                ForeColor="#333333"></asp:TextBox>
            
            
            <asp:Label ID="Label4" runat="server" Text="Name:" CssClass="label"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" CssClass="textBox" BackColor="#D8D8D8" 
                ForeColor="#333333"></asp:TextBox>
           
            <asp:Label ID="Label5" runat="server" Text="Date of Birth:" CssClass="label"></asp:Label>
            <asp:TextBox ID="txtDob" runat="server" CssClass="textBox" BackColor="#D8D8D8" 
                ForeColor="#333333"></asp:TextBox>
           
            <asp:Label ID="Label6" runat="server" Text="Contact No:" CssClass="label"></asp:Label>
            <asp:TextBox ID="txtCno" runat="server" CssClass="textBox"></asp:TextBox>
          
            <asp:Label ID="Label7" runat="server" Text="Address:" CssClass="label"></asp:Label>
            <asp:TextBox ID="txtAdd" runat="server" CssClass="textBox"></asp:TextBox>
            
            <asp:Label ID="Label8" runat="server" Text="Email:" CssClass="label"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="textBox"></asp:TextBox>
            
            <asp:Label ID="Label9" runat="server" Text="Reg. No:" CssClass="label"></asp:Label>
            <asp:TextBox ID="txtRegno" runat="server" CssClass="textBox" 
                BackColor="#D8D8D8" ForeColor="#333333"></asp:TextBox>
            
            <asp:Label ID="Label10" runat="server" Text="Roll:" CssClass="label"></asp:Label>
            <asp:TextBox ID="txtRollno" runat="server" CssClass="textBox"></asp:TextBox>
            
            <asp:Label ID="Label11" runat="server" Text="No:" CssClass="label"></asp:Label>
            <asp:TextBox ID="txtNo" runat="server" CssClass="textBox"></asp:TextBox>
            
            <asp:Label ID="Label12" runat="server" Text="Semester:" CssClass="label"></asp:Label>
            <asp:TextBox ID="txtSem" runat="server" CssClass="textBox"></asp:TextBox>
            
            
            <asp:Button ID="Button2" runat="server" Text="Save changes" CssClass="AdminBtns" style="margin-left:125px; margin-top:10px;"/>
            <asp:Button ID="Button4" runat="server" Text="Exit " CssClass="AdminBtns" 
                style="margin-left:50px; margin-top:10px; width:100px;" />
        </div>
    </asp:Panel>
    
    <asp:Panel ID="Panel2" runat="server" Visible="False">
    <div class="MarksUp">
            <asp:Label ID="Label14" runat="server" Text="Change profile picture:" CssClass="label"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="textBox" />
        
        <asp:Button ID="Button3" runat="server" Text="Save Changes" CssClass="AdminBtns" style="margin-left:200px; margin-top:20px;" />
        
     </div>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Visible="False">
        <div class="style21">
            <asp:Label ID="Label2" runat="server" Text="Select semester:" 
                CssClass="style22"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style22">
                <asp:ListItem>select</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
            </asp:DropDownList>
            
            <asp:Button ID="Button6" runat="server" Text="View" CssClass=AdminBtns style="margin-left:30px;"/>
            <br />
            <br />
            <asp:Panel ID="Panel4" runat="server" Visible="False">
                <div>
                    <table border="1" style="margin-left:85px; margin-right:30px;" align="center" >
            <tr>
              <th class="style3">Subject</th>
              <th>Full Marks</th>
              <th class="style20">Marks Obtained</th>
            </tr>
            <tr>
              <td class="style3">
                  <asp:Label ID="lblSub1" runat="server"></asp:Label>
                </td>
              <td>100</td>
              <td class="style20">
                  <asp:TextBox ID="txtSub1" runat="server" Width="100px" 
                      style="text-align: center"></asp:TextBox>
                </td>
            </tr>
            <tr>
              <td class="style3">
                  <asp:Label ID="lblSub2" runat="server"></asp:Label>
                </td>
              <td>100</td>
              <td class="style20">
                  <asp:TextBox ID="txtSub2" runat="server" style="text-align: center" 
                      Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr>
              <td class="style3">
                  <asp:Label ID="lblSub3" runat="server"></asp:Label>
                </td>
              <td>100</td>
              <td class="style20">
                  <asp:TextBox ID="txtSub3" runat="server" style="text-align: center" 
                      Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr>
              <td class="style3">
                  <asp:Label ID="lblSub4" runat="server"></asp:Label>
                </td>
              <td>100</td>
              <td class="style20">
                  <asp:TextBox ID="txtSub4" runat="server" style="text-align: center" 
                      Width="100px"></asp:TextBox>
                </td>
            </tr>
          </table>
                    <br />
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="resultlbl" runat="server" ForeColor="#CC0000" 
                        style="font-weight: 700"></asp:Label>
                    <asp:Label ID="resultlbl2" runat="server" ForeColor="#009900" 
                        style="font-weight: 700"></asp:Label>
                </div>
            </asp:Panel>
            
        </div>
    </asp:Panel>
    <br />
    <br />
    <br />
    <br />
    <asp:Panel ID="Panel5" runat="server" Visible="False">
        <div class=MarksUp>
            <asp:Label ID="Label13" runat="server" Text="Create a New Password: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label15" runat="server" Text="Retype Password: "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="Button8" runat="server" Text="Save Changes" style="text-align:center; margin-left:200px;" CssClass=AdminBtns/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMs" runat="server" ForeColor="Red" style="font-weight: 700" 
                Visible="False"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button9" runat="server" Text="Exit" CssClass=AdminBtns 
                style="text-align:center; margin-left:200px;" CausesValidation="False" 
                Width="124px" />
        </div>
        <br />
        <br />
    </asp:Panel>
    </form>

<footer class="footer" >
    <p >Copyright &copy; 2023 Garhbeta College | Designed & Developed by <a href="Default.aspx#dev">Dept of BCA</a></p>
  </footer>
          
    </body>
</html>
