<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changePassword.aspx.cs" Inherits="changePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
        background-color:#f9f9f9;
    }

        table{
            margin-top:15%;
            border:0.2px solid;
            padding:15px;
        }
        td{
            padding:10px;
        }
        input{
            padding:5px;
            width:200px;
        }
        #message{
            color:red;
            font-size:20px;
        }
    </style>
    <script>
        function validation() {
            var oldpass = document.getElementById("olpassword").value;
            var newpass = document.getElementById("newpassword").value;
            var repatpass = document.getElementById("repearPassword").value;
            var message = document.getElementById("message");
            if(oldpass!=""||newpass!=""||repatpass!=""){
                if(newpass==repatpass){
                    return true;
                }
                else {
                    message.innerHTML = "Password Does not match.";
                    return false;
                }
                

            }
            else {
                message.innerHTML = "Please fill all fields.";
                return false;
            }

        }
    </script>
</head>
<body>
    <center>
      
      
    <form id="form1" runat="server" onsubmit="return validation()">
    <div>
    <table>
        <tr>
            <td>

            </td>
            <td>
<asp:Label ID="message" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                OLD PASSWORD:
            </td>
            <td>
                <asp:TextBox runat="server" ID="olpassword" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                NEW PASSWORD:
            </td>
            <td>
                <asp:TextBox runat="server" ID="newpassword" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
<tr>
            <td>
                REPEAT PASSWORD:
            </td>
            <td>
                <asp:TextBox runat="server" ID="repearPassword" TextMode="Password"></asp:TextBox>
            </td>
        </tr>

<tr>
            <td>
                
                </td>
            <td>
               <asp:Button runat="server" ID="savepassword"  Text="Change password"  OnClick="savepassword_Click"/>
            </td>
        </tr>


    </table>
    </div>
    </form>
</body>
</html>
