<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="Ass_9CreateWebApp.Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 120px;
        }
        .auto-style3 {
            width: 236px;
        }
        .auto-style4 {
            width: 120px;
            height: 31px;
        }
        .auto-style5 {
            width: 236px;
            height: 31px;
        }
        .auto-style6 {
            height: 31px;
        }
    </style>
</head>
<body>
    <h2>Customer Registration</h2>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">CustomerName</td>
                    <asp:Label ID="LblInfo" runat="server" ForeColor="Green" Visible="false"></asp:Label>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                    </td>
                    <td>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtName" ErrorMessage="Required " ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TxtName" ErrorMessage=" Name must have at least 6 characters"
                         OnServerValidate="CustomValidator1_ServerValidate" ForeColor="Red"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Customer Mobile</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtMobile" runat="server"></asp:TextBox>
                    </td>
                    <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TxtMobile" ErrorMessage="Required " 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TxtMobile" ErrorMessage=" Exact 10 digits" 
                    ForeColor="Red" ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td class="auto-style4">Email</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TxtEmail" ErrorMessage="Required " 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TxtEmail" ErrorMessage=" Invalid Email" 
                    ForeColor="Red" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator> </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtPassword" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TxtPassword" ErrorMessage=" Required " 
                    ForeColor="Red"></asp:RequiredFieldValidator>
               
                    </td>
                </tr>
              
                <tr>
                  
                    <td class="auto-style2">
                        <asp:Button ID="BtnReg" runat="server" Text="Register Customer" 
                    OnClick="BtnReg_Click" />
                    </td>
                 </tr>
              
            </table>
        </div>
    </form>
</body>
</html>
