<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AJAX_Basic_ASP2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AJAX with ASP.Net (2)</title>
    <script type="text/javascript">
        function search() {
            var text = $get("textBoxName").value;
            AJAX_Basic_ASP2.WebService1.FindCustomer(text, onComplete, onError);
        }
        function onComplete(result) {
            if (result) {
                $get("firstName").innerHTML = "First Name - " + result.FirstName;
                $get("lastName").innerHTML = "Last Name - " + result.LastName;
                $get("age").innerHTML = "AGE - " + result.Age;
            }
            else {
                alert("FIGU");
            }
        }
        function onError(error) {
            alert(error._message);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager runat="server">
                <Services>
                    <asp:ServiceReference Path="~/WebService1.asmx" />
                </Services>
            </asp:ScriptManager>
            Введите имя
            <input type="text" id ="textBoxName" />
            <br />
            <input type="button" value="Поиск" onclick="search()" />
            <br />
            <p id="firstName"></p>
            <p id="lastName"></p>
            <p id="age"></p>
        </div>
    </form>
</body>
</html>
