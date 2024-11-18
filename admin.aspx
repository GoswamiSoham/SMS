<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admin.aspx.vb" Inherits="admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title>Admin</title>
    <style>



	   
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 114px;
        }
        .style5
        {
            width: 150px;
            height: 26px;
        }
        .style6
        {
            width: 189px;
            height: 26px;
        }
        .style7
        {
            height: 26px;
        }
        .style9
        {
            width: 189px;
        }
	   
        .style10
        {
            width: 114px;
            height: 23px;
        }
        .style11
        {
            width: 189px;
            height: 23px;
        }
        .style12
        {
            height: 23px;
        }

        .style13
        {
            font-size: large;
        }

        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <!--------------------------Navbar Code---------------------------------------->
        <nav>
			<div class="logo">Student Managment Portal</div>
			<div>
				<a class="navA" href="Default.aspx">Logout</a>
			</div>
		</nav>
    </div>
    <div>
    <h1 style="text-align:center;">Welcome Admin</h1>
        <br />
        <br />
      <div class="CollegeLogo">
    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Garhbeta_College_logo.png" 
        
        
        
              style="z-index: 1; left: 30px; top: 103px; position: absolute; height: 122px; width: 130px; margin-top:50px; margin-left:50px;"  />
    </div>
    
     <!--------------------------Main LogIn Design---------------------------------------->
    </div>
    <div id="adminControls">
    <asp:Button ID="Button1" runat="server" 
        style="font-size: large; margin-top:15px; width:200px; height:50px;" Text="Add a new Student" CssClass="AdminBtns" />
       
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button5" runat="server" style="font-size: large; margin-top:15px; width:200px; height:50px;" 
        Text="Upload a Notice" CssClass="AdminBtns" />
       
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
        ID="Button7" runat="server" style="font-size: large; margin-top:15px; width:200px; height:50px;" 
            Text="Edit/View a Student" CssClass="AdminBtns" />
            
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button11" runat="server" style="font-size: large; margin-top:15px; width:200px; height:50px;" 
        Text="Upload Marks" CssClass="AdminBtns" />
       
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />

                        <br />
                    <br />
    <div>
    <asp:Panel ID="Panel4" runat="server" Height="325px" Visible="False">
    <h2>Edit Student Details</h2>
        <div>
        

            <asp:Label ID="Label7" runat="server" style="font-size: large" 
                Text="Enter Student ID:"></asp:Label>
            <asp:TextBox ID="txtID" runat="server"  ></asp:TextBox>
            &nbsp;
            <asp:Button ID="Button8" runat="server" Text="Search" CssClass=AdminBtns/>
        

            &nbsp;&nbsp;
            <asp:Button ID="Button10" runat="server" Text="Exit" CssClass=AdminBtns 
                CausesValidation="False"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtID" ErrorMessage="enter student ID" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        

        </div>
        <div id="viewPannel" >
            <asp:Panel ID="Panel5" runat="server" Height="295px" Visible="False">
                <table class="style1">
                    <tr>
                        <td class="style5">
                            <asp:Label ID="Label8" runat="server" Text="Student Name: "></asp:Label>
                        </td>
                        <td class="style6">
                            <asp:TextBox ID="txtNm" runat="server" Width="189px" CssClass="style13"></asp:TextBox>
                        </td>
                        <td class="style7">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtNm" ErrorMessage="enter student name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                            </td>
                        <td class="style7">
                            </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <asp:Label ID="Label9" runat="server" Text="Email:"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="txtEm" runat="server" Width="238px" CssClass="style13"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtEm" ErrorMessage="enter vaild mail" ForeColor="#CC0000" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <asp:Label ID="Label10" runat="server" Text="Date Of Birth"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="txtDB" runat="server" Width="189px" CssClass="style13"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtDB" ErrorMessage="enter DOB" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <asp:Label ID="Label11" runat="server" Text="Adderss:"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="txtADD" runat="server" Width="243px" CssClass="style13"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txtADD" ErrorMessage="enter Address" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <asp:Label ID="Label12" runat="server" Text="Contact No:"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="txtCT" runat="server" Width="187px" CssClass="style13"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="txtCT" ErrorMessage="enter a valid mobile no" 
                                ForeColor="Red" ValidationExpression="^[7-9][0-9]{9}$"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <asp:Label ID="Label13" runat="server" Text="Registration No:"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="txtRegN" runat="server" Width="187px" CssClass="style13"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="txtRegN" ErrorMessage="enter RegNo" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <asp:Label ID="Label14" runat="server" Text="Roll:"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="txtRoll" runat="server" Width="187px" CssClass="style13"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="txtRoll" ErrorMessage="enter Roll" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <asp:Label ID="Label15" runat="server" Text="No:"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="txtNo" runat="server" Width="186px" CssClass="style13"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                ControlToValidate="txtNo" ErrorMessage="enter No" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <asp:Label ID="Label16" runat="server" Text="Semester:"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="txtSem" runat="server" Width="184px" CssClass="style13"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ControlToValidate="txtSem" ErrorMessage="enter Semester" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style9">
                            <asp:Button ID="Button9" runat="server" Text="Save" Width="175px" CssClass=AdminBtns/>
                        </td>
                        <td>
                            <asp:Label ID="lblMsg" runat="server"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            </td>
                        <td class="style11">
                            </td>
                        <td class="style12">
                            </td>
                        <td class="style12">
                            </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style9">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Image ID="Image1" runat="server" 
                style="z-index: 1; left: 976px; top: 488px; position: absolute; height: 202px; width: 212px" 
                Visible="False" />
        </div>
    </asp:Panel>
    </div>
<footer class="footer" >
    <p >Copyright &copy; 2023 Garhbeta College | Designed & Developed by <a href="Default.aspx#dev">Dept of BCA</a></p>
  </footer>
    </form>
</body>
</html>
