<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MultiSelect.aspx.cs" Inherits="MultiSelect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.0.2.js"></script>
    <script src="Scripts/jquery.multiple.select.js"></script>
    <link href="Styles/multiple-select.css" rel="stylesheet" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#ddl').multipleSelect({
                selectAll: false, filter: true
            });
            $('#btn').click(function () {
                debugger;
                $('#div1').html($('#ddl').multipleSelect('getSelects', 'text'));
                return false;
                // See here
                // I'm binding the selected items to div. it's bcoz of "return false" statement , button click event on server side is not firing.
                // find how to get the selected items on server side.

            });
        });



    </script>


</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList runat="server" ID="ddl" Width="200px">
                <asp:ListItem Value="1">Jan</asp:ListItem>
                <asp:ListItem Value="2">Feb</asp:ListItem>
                <asp:ListItem Value="3">Mar</asp:ListItem>
                <asp:ListItem Value="4">Apr</asp:ListItem>
                <asp:ListItem Value="5">May</asp:ListItem>
                <asp:ListItem Value="6">Jun</asp:ListItem>
            </asp:DropDownList>
            <asp:Button runat="server" ID="btn" Text="Submit" OnClick="btn_Click" />
        </div>
        <div id="div1" runat="server"></div>
    </form>
</body>
</html>
