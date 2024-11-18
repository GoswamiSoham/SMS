<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Notice.aspx.vb" Inherits="Notice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Notice</title>
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
    <h2 style="text-align:center;">
    Notice
    </h2>
      <div class="CollegeLogo">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Garhbeta_College_logo.png" 
        
        
        style="z-index: 1; left: 31px; top: 73px; position: absolute; height: 122px; width: 130px; margin-top:50px; margin-left:50px;"  />
    </div>
    <div style="text-align:center; margin-top:30px;">
    
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                CellPadding="3" DataSourceID="SqlDataSource1" 
                GridLines="None" Width="50%" CellSpacing="1" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="Subject_For_Notification" 
                        HeaderText="Subject_For_Notification" 
                        SortExpression="Subject_For_Notification" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:TemplateField HeaderText="Download">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("path") %>' 
                                Target="_blank">View/download</asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                
                SelectCommand="SELECT [Subject_For_Notification], [path], [date] FROM [NoticeTable]">
            </asp:SqlDataSource>
    
    </div>
<footer class="footer" >
    <p >Copyright &copy; 2023 Garhbeta College | Designed & Developed by <a href="Default.aspx#dev">Dept of BCA</a></p>
  </footer>
    </form>
</body>
</html>
