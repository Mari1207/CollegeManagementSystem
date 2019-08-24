<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewLogin.aspx.cs" Inherits="CollegeManagementSystem.Admin.NewLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../StyleSheet1.css" rel="stylesheet" />
    <title>CollegeManegementSystem</title>

</head>
<body>
    <form id="form1" runat="server">
        <header>
        <h1>College Management System</h1>
        <br />
         <h2 style="text-align:center;font-weight:bold; background-color:gold">
             <br />Log In </h2>
   </header>
        <div>
        </div>
        <section class="Login">
        <p>Enter your ID and PASSWORD</p>
            <p>&nbsp;</p>
         <div>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
         <asp:TextBox ID="txtID" runat="server"></asp:TextBox>

             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtID" ErrorMessage="Error:Enter Your ID"></asp:RequiredFieldValidator>

         </div>
        <div>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label2" runat="server" Text="PASSWORD"></asp:Label>
         <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter Your Password"></asp:RequiredFieldValidator>
            <br />
         </div>
        <div>
         <asp:Button ID="BtnEnter" runat="server" Text="Enter" OnClick="BtnEnter_Click" />
        </div>
            <asp:Label ID="lblError" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            </section>
    </form>
    <footer>
        <h3>Contact</h3>
        <p>Mari company</p>
        <p>TEL:123-456-7890      Email:maricompany@gmail.com</p>
        <p>Address:12Greenfield Ave,Toronto K0L2P3</p>
    </footer>
</body>
</html>
