<%@ Page Language="VB" AutoEventWireup="false" CodeFile="UpNotice.aspx.vb" Inherits="UpNotice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload a Notice</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
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
      <div class="CollegeLogo">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Garhbeta_College_logo.png" 
        
        
        style="z-index: 1; left: 31px; top: 73px; position: absolute; height: 122px; width: 130px; margin-top:50px; margin-left:50px;"  />
    </div>
    <div style="text-align:right; margin:20px;">
        <asp:Button ID="Button3" runat="server" Text="Delete a Notice" 
            
            style="font-weight: 700; font-size: large; border:none; border-radius:5px; cursor:pointer;" 
            CausesValidation="False" CssClass="AdminBtns" />
    </div>
    <asp:Panel ID="Panel1" runat="server">
                            <h3 style="text-align:center; font-size:2rem;">
        Uplaod a Notice Here...
        </h3>

    <div class="NoticeDiv">
    <div style="font-size:large;" class="UpNoBox" >

        <asp:Label ID="Label1" runat="server" Text="Browse a PDF file" style="margin:5px auto;"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
      
        <asp:Label ID="Label2" runat="server" Text="Subject for notice: " style="margin:10px auto;"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
      
        <asp:Label ID="Label3" runat="server" Text="Today's Date: " style="margin:5px auto;"></asp:Label>
        <asp:TextBox ID="txtDate" runat="server" class="text-boxes" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Upload" Width="212px" CssClass="AdminBtns" />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    </div>
    </div>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:GridView ID="gridView" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
        GridLines="Vertical" 
            style="text-align: center; position: relative; top: -2px; left: 419px;">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="NoticeID" HeaderText="NoticeID" 
                InsertVisible="False" ReadOnly="True" SortExpression="NoticeID" />
            <asp:BoundField DataField="FileName" HeaderText="FileName" 
                SortExpression="FileName" />
            <asp:BoundField DataField="Subject_For_Notification" 
                HeaderText="Subject_For_Notification" 
                SortExpression="Subject_For_Notification" />
            <asp:BoundField DataField="path" HeaderText="path" SortExpression="path" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
        <br />
        <div class=NoticeDiv>
            <asp:Label ID="Label4" runat="server" Text="Enter Notice ID: "></asp:Label>
         <asp:TextBox ID="txtNID" runat="server" 
                style="margin:10px; width: 60px; border-radius: 5px; font-size:15px; text-align: center;" ></asp:TextBox>
        <asp:Button ID="Button2" class="DeletBtn" runat="server" Text="Delete" 
                style="cursor:pointer; height:28px; width:55px; font-size:15px;" 
                CausesValidation="False" UseSubmitBehavior="False" />
        </div>
       
    </asp:Panel>
    
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [NoticeID], [FileName], [Subject_For_Notification], [path], [date] FROM [NoticeTable]">
    </asp:SqlDataSource>
<footer class="footer" >
    <p >Copyright &copy; 2023 Garhbeta College | Designed & Developed by <a href="Default.aspx#dev">Dept of BCA</a></p>
  </footer>
    </form>
</body>
</html>
