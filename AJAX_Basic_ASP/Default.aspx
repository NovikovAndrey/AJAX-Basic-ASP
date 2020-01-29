<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AJAX_Basic_ASP.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> AJAX with ASP.NET</title>
    <script type="text/javascript">
        window.onload = function () {
            AJAX_Basic_ASP.WebService1.HelloWorld(onComplete, onError);
        }
        function onComplete(result) {
            alert(result);
        }
        function onError(error) {
            alert(error._message);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
                <Services>
                    <asp:ServiceReference Path="~/WebService1.asmx" />
                </Services>
            </asp:ScriptManager>
        </div>
    </form>
</body>
</html>
