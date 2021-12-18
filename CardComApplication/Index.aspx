<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CardComApplication.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script type='text/javascript'>
        function OpenWindows() {
            var answer = window.open('AddNewClients.aspx', "popup_window", "dialogWidth:500px;dialogHeight:300px;Center:yes");
            //window.open('yourOtherPage.aspx','_blank');
        }
    </script>

</head>
<body>
    <form id="form1" runat="server" dir="rtl">
        <div>
            <h1>לקוחות</h1>
        </div>
        <div>
            <asp:GridView ID="ClientGr" runat="server" EditRowStyle-HorizontalAlign="Right" AutoGenerateColumns="false" AutoGenerateSelectButton="True">
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="תעודת זהות" />
                    <asp:BoundField DataField="CName" HeaderText="שם" />
                    <asp:BoundField DataField="CMail" HeaderText="Mail"/>
                    <asp:BoundField DataField="Birth" HeaderText="תאריך לידה" />
                    <asp:BoundField DataField="Gender" HeaderText="מגדר" />
                    
                </Columns>
            </asp:GridView>
            <button onclick="OpenWindows()" >הוסף לקוח חדש</button>
            <asp:Button ID="DeleteClientButton" OnClick="DeleteClient" Text="מחיקת לקוח" runat="server" />
           <%-- <asp:Button ID="AddNewClient" OnClick="AddNewClientClicked" runat="server" Text="הוסף לקוח חדש" />--%>
             
        </div>
    </form>   
</body>
</html>
