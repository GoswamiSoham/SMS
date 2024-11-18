<%@ Page Language="VB" AutoEventWireup="false" CodeFile="UploadMarks.aspx.vb" Inherits="UploadMarks" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Marks Upload</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style3
        {
            width: 140px;
        }
        .style6
        {
            width: 364px;
            text-align: center;
        }
        .style7
        {
            width: 364px;
            text-align: left;
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
				<a class="navA" href="#">Home</a>
				<a class="navA" href="Default.aspx">Logout</a>
				<a class="navA" href="Default.aspx#Contact">Contact</a>
			</div>
		</nav>
    </div>
      <div class="CollegeLogo">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Garhbeta_College_logo.png" 
        
        
        style="z-index: 1; left: 31px; top: 73px; position: absolute; height: 122px; width: 130px; margin-top:50px; margin-left:50px;"  />
    </div>
    <div class="MarksUp">

        <h2 style="margin-left:115px;">Uplaod Student Marks</h2>

        <asp:Label ID="Label1" runat="server" Text="Enter Student ID:"></asp:Label>
        <asp:TextBox ID="txtSID" runat="server" Width="100px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txtSID" ErrorMessage="required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtSID" ErrorMessage="| enter correct ID" ForeColor="Red" 
            ValidationExpression="^((\d{3})|(\w{3}))\d{6}$"></asp:RegularExpressionValidator>
        
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Select semester:" style="padding-left: 1px; "></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>select</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
        </asp:DropDownList>
        <asp:RangeValidator ID="RangeValidator5" runat="server" 
            ControlToValidate="DropDownList1" ErrorMessage="select semester" 
            ForeColor="Red" MaximumValue="6" MinimumValue="0"></asp:RangeValidator>
        </br>
        </br>
        <asp:Button ID="Button1" runat="server" Text="Enter" CssClass="AdminBtns"
            style="text-align: center; font-weight: 700; margin-left:175px;" />


    
        <asp:Label ID="msglbl" runat="server"></asp:Label>


    
    </div>


        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <div class="MarksUp">

                      <table border="1" style="margin-left:30px; margin-right:30px;" >
            <tr>
              <th class="style3">Subject</th>
              <th>Full Marks</th>
              <th class="style6">Marks Obtained</th>
            </tr>
            <tr>
              <td class="style3">
                  <asp:Label ID="lblSub1" runat="server"></asp:Label>
                </td>
              <td>100</td>
              <td class="style7">
                  <asp:TextBox ID="txtSub1" runat="server" Width="100px" 
                      style="text-align: center"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                      ControlToValidate="txtSub1" ErrorMessage="RequiredFieldValidator">required</asp:RequiredFieldValidator>
                  <asp:RangeValidator ID="RangeValidator1" runat="server" 
                      ControlToValidate="txtSub1" ErrorMessage="RangeValidator" ForeColor="Red" 
                      MaximumValue="100" MinimumValue="0" Type="Integer">enter 0-100</asp:RangeValidator>
                </td>
            </tr>
            <tr>
              <td class="style3">
                  <asp:Label ID="lblSub2" runat="server"></asp:Label>
                </td>
              <td>100</td>
              <td class="style7">
                  <asp:TextBox ID="txtSub2" runat="server" style="text-align: center" 
                      Width="100px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                      ControlToValidate="txtSub2" ErrorMessage="RequiredFieldValidator">required</asp:RequiredFieldValidator>
                  <asp:RangeValidator ID="RangeValidator2" runat="server" 
                      ControlToValidate="txtSub2" ErrorMessage="RangeValidator" ForeColor="Red" 
                      MaximumValue="100" MinimumValue="0" Type="Integer">enter 0-100</asp:RangeValidator>
                </td>
            </tr>
            <tr>
              <td class="style3">
                  <asp:Label ID="lblSub3" runat="server"></asp:Label>
                </td>
              <td>100</td>
              <td class="style7">
                  <asp:TextBox ID="txtSub3" runat="server" style="text-align: center" 
                      Width="100px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                      ControlToValidate="txtSub3" ErrorMessage="RequiredFieldValidator">required</asp:RequiredFieldValidator>
                  <asp:RangeValidator ID="RangeValidator3" runat="server" 
                      ControlToValidate="txtSub3" ErrorMessage="RangeValidator" ForeColor="Red" 
                      MaximumValue="100" MinimumValue="0" Type="Integer">enter 0-100</asp:RangeValidator>
                </td>
            </tr>
            <tr>
              <td class="style3">
                  <asp:Label ID="lblSub4" runat="server"></asp:Label>
                </td>
              <td>100</td>
              <td class="style7">
                  <asp:TextBox ID="txtSub4" runat="server" style="text-align: center" 
                      Width="100px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                      ControlToValidate="txtSub4" ErrorMessage="RequiredFieldValidator">required</asp:RequiredFieldValidator>
                  <asp:RangeValidator ID="RangeValidator4" runat="server" 
                      ControlToValidate="txtSub4" ErrorMessage="RangeValidator" ForeColor="Red" 
                      MaximumValue="100" MinimumValue="0" Type="Integer">enter 0-100</asp:RangeValidator>
                </td>
            </tr>
          </table>
                  <asp:Button ID="Button2" runat="server" Text="Upload" CssClass="AdminBtns" 
            style="margin-top:10px; font-weight: 700; margin-left:175px;"/>
                </div>
        </asp:Panel>
   

<footer class="footer" >
    <p >Copyright &copy; 2023 Garhbeta College | Designed & Developed by <a href="Default.aspx#dev">Dept of BCA</a></p>
  </footer>
    </form>
</body>
</html>
