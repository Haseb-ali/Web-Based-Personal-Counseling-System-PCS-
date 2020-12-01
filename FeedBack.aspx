<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FeedBack.aspx.cs" Inherits="FeedBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        table{
            margin-top: 4%;
        }
        td{
            padding:5px;
        }
        #message{
                margin: 0px;
    height: 236px;
    width: 748px;
        }
        #topic{
            width: 730px;
    padding: 10px;
        }
        #SENDFEEDBACK {
  background-color: #7b99a7;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
       #toprow{
                font-size: 28px;
    padding: 10px;
    background-color: #f9f9f9;
    width: 95%;
        }
       #catogory{
           width: 100%;
           padding: 10px;
}
     
        #hint{
            color: red;
    font-size: 22px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server"  >
    <div>
    <center>
        <div id="toprow">
          Provide   FeedBack 
        </div>
        <br />

    <asp:Label runat="server" ID="hint"></asp:Label>
        <table>
            
            <tr>
                <td>
                    Topic:
                </td>
                <td>
                <asp:TextBox runat="server" ID="topic"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td>
                    Catogory:
                </td>
                <td>
                <asp:DropDownList runat="server" ID="catogory">
                    <asp:ListItem Text="------select category------" Value=""></asp:ListItem>
                    <asp:ListItem Text="positive" Value="positive"></asp:ListItem>
                    <asp:ListItem Text="negative" Value="negative"></asp:ListItem>


                </asp:DropDownList>
                    
                    </td>
            </tr>

            <tr>
                <td>
                    Message
                </td>
                <td>
                    <asp:TextBox runat="server" ID="message" TextMode="MultiLine"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td></td>
                <td>
                <asp:Button runat="server"  ID="SENDFEEDBACK" Text="SEND FEEDBACK"  OnClick="SENDFEEDBACK_Click"/>

                    </td>
            </tr>
        </table>

    </center>

    </div>
    </form>
</body>
</html>
<script>
    function validateFeedBack() {
        var topic = document.getElementById("topic").innerHTML;
        var catogory = document.getElementById("catogory").innerHTML;
        var message = document.getElementById("message").innerHTML;
        var hint = document.getElementById("hint");
        if (topic == "" || catogory == "------select category------" || message == "") {
            hint.innerHTML = "You can not submit Empty Form";
            return false;
        }
        else {
            return true;
        }
    }
</script>