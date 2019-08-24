<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="CollegeManagementSystem.Admin.Main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="font-weight:bold">Add Student's information</h2>
    <p>Please enter every information</p>
<asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="381px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="StudentId" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" OnItemInserted="DetailsView1_ItemInserted">
    <AlternatingRowStyle BackColor="White" />
    <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
    <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
    <Fields>
        <asp:BoundField DataField="StudentId" HeaderText="StudentId" InsertVisible="False" ReadOnly="True" SortExpression="StudentId" />
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
        <asp:BoundField DataField="EmailAddr" HeaderText="EmailAddr" SortExpression="EmailAddr" />
        <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
</asp:DetailsView>
    <br />
<asp:Label ID="lblResult" runat="server" BorderColor="#66CCFF" BackColor="#FF99CC"></asp:Label>
    <br />
    <br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentId" DataSourceID="SqlDataSource1" CellPadding="2" ForeColor="Black" GridLines="None" OnRowDeleted="GridView1_RowDeleted" OnRowUpdated="GridView1_RowUpdated" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
    <AlternatingRowStyle BackColor="PaleGoldenrod" />
    <Columns>
        <asp:BoundField DataField="StudentId" HeaderText="StudentId" InsertVisible="False" ReadOnly="True" SortExpression="StudentId" />
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
        <asp:BoundField DataField="EmailAddr" HeaderText="EmailAddr" SortExpression="EmailAddr" />
        <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Option" />
    </Columns>
    <FooterStyle BackColor="Tan" />
    <HeaderStyle BackColor="Tan" Font-Bold="True" />
    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    <SortedAscendingCellStyle BackColor="#FAFAE7" />
    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
    <SortedDescendingCellStyle BackColor="#E1DB9C" />
    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CollegeMariConnectionString %>" DeleteCommand="DELETE FROM [Students] WHERE [StudentId] = @StudentId" InsertCommand="INSERT INTO [Students] ([FirstName], [LastName], [BirthDate], [EmailAddr], [Country]) VALUES (@FirstName, @LastName, @BirthDate, @EmailAddr, @Country)" SelectCommand="SELECT * FROM [Students]" UpdateCommand="UPDATE [Students] SET [FirstName] = @FirstName, [LastName] = @LastName, [BirthDate] = @BirthDate, [EmailAddr] = @EmailAddr, [Country] = @Country WHERE [StudentId] = @StudentId">
    <DeleteParameters>
        <asp:Parameter Name="StudentId" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter DbType="Date" Name="BirthDate" />
        <asp:Parameter Name="EmailAddr" Type="String" />
        <asp:Parameter Name="Country" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter DbType="Date" Name="BirthDate" />
        <asp:Parameter Name="EmailAddr" Type="String" />
        <asp:Parameter Name="Country" Type="String" />
        <asp:Parameter Name="StudentId" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
