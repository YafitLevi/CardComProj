<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewClients.aspx.cs" Inherits="CardComApplication.AddNewClients" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<%--    <script type="text/javascript">
        function ContactIDRequired(sender, args) {
            if (document.getElementById("<%IDClient.Text%>").nodeValue == '') {
                sender.
            }
        }

    </script>--%>
<%--    function jsDecimals(e) {
 
    var evt = (e) ? e : window.event;
    var key = (evt.keyCode) ? evt.keyCode : evt.which;
    if (key != null) {
        key = parseInt(key, 10);
        if ((key < 48 || key > 57) && (key < 96 || key > 105)) {
            if (!jsIsUserFriendlyChar(key, "Decimals")) {
                return false;
            }
        }
        else {
            if (evt.shiftKey) {
                return false;
            }
        }
    }
    return true;
}--%>

</head>

<body>
    <form id="form1" runat="server" dir="rtl">
        <div>
            <h1>addNewClients</h1>
        </div>
        <div>  
            <table class="auto-style1">  
                <tr>  
                    <td>תעודת זהות :</td>  
                    <td>  
                        <asp:TextBox ID="IDClient" runat="server" TextMode="Number" ></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="IDValidate" ControlToValidate="IDClient" ErrorMessage="נדרש תעודת זהות" ForeColor="Red"  runat="server" ValidationGroup="ClientGroupValid" />
<%--                        <asp:CustomValidator runat="server" ID="customIDValid" ControlToValidate="IDClient" ForeColor="Red" ValidateEmptyText="true" ErrorMessage="נדרש תעודת זהות" OnServerValidate="customIDNumber"></asp:CustomValidator>--%>
                    </td> 
  
               </tr>  
                <tr>  
                    <td>שם</td>  
                    <td>
                        <asp:TextBox ID="ClientName" runat="server" ValidateRequestMode="Enabled" ValidationGroup="ClientGroupValid"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="NameValidate" ControlToValidate="ClientName" ErrorMessage="נדרש שם" ForeColor="Red" runat="server" ValidationGroup="ClientGroupValid" />
                    </td>
                </tr>  
                <tr>  
                    <td>Mail</td>  
                    <td>  
                        <asp:TextBox ID="ClientEmail" runat="server" TextMode="Email" ValidateRequestMode="Enabled" ValidationGroup="ClientGroupValid"></asp:TextBox>  
                        <asp:RequiredFieldValidator ID="EmailValidate" ControlToValidate="ClientEmail" ErrorMessage="נדרש Email" ForeColor="Red"  runat="server" ValidationGroup="ClientGroupValid" />
                    </td>  
                </tr>  
                <tr>  
                    <td>תאריך לידה</td>  
                    <td>  
                        <asp:TextBox ID="BirthDate" runat="server" TextMode="Date" ValidateRequestMode="Enabled" ValidationGroup="ClientGroupValid"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="BirthValidate" ControlToValidate="BirthDate" ErrorMessage="נדרש תאריך לידה" ForeColor="Red"  runat="server" ValidationGroup="ClientGroupValid" />                    </td>  
                </tr>  
                <tr>  
                    <td>מגדר</td>  
                    <td>  
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">  
                            <asp:ListItem Value="M">זכר</asp:ListItem>  
                            <asp:ListItem Value="F">נקבה</asp:ListItem>  
                        </asp:RadioButtonList>  
                    </td>  
               </tr>  
                <tr>  
                    <td>טלפון </td>  
                    <td>  
                        <asp:TextBox ID="PhoneClient" runat="server" TextMode="Number" ></asp:TextBox>
                </tr>  

                <tr>  
                    <td>  
                        <asp:Button ID="AddClient" OnClick="AddClientClicked" runat="server" Text="הוסף" ValidationGroup="ClientGroupValid" />  
                    </td>  
                </tr>  
            </table>  
        </div>  
    </form>
</body>
</html>
