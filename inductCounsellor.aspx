<%@ Page Language="C#" AutoEventWireup="true" CodeFile="inductCounsellor.aspx.cs" Inherits="inductCounsellor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>induct counsellor</title>
    <link rel="stylesheet" href="Content/PCScss.css" />
    <script src="Content/Scripts/inputsvalidation.js"></script>
    <style>
        #SignupBox{
            height: 509px;
        }
        #inductcounsellor{
            background-color: black; 
  border: none;
  color: white;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
 
  cursor: pointer;
  width:325px;
  float:right;
        }
        #messages{
            color: green;
    font-size: 19px;
    
        }
       #formHeadind {
           background-color: #4CAF50;
        }
       #inductcounsellor{
            background-color: #4CAF50;
       }
    </style>
</head>
<body>
    <body>
    <asp:Label runat="server" ID="debug"></asp:Label>
    <center>

        <br />
    <form id="form1" runat="server" onsubmit="return signUpValidate()">
    <div id="SignupBox">
         <div id="banner">
           <span id="formHeadind">Induct Counsellor</span>
       </div>
       
        <br /><br />
        <asp:Label runat="server"  ID="messages"></asp:Label>
         <center> <small id="error"><b>Error : One or more field is Empty</b></small></center>
        <table id="signUp">
            
            <tr>
                <td>Counsellor ID</td>
                <td><asp:TextBox runat="server" ID="username" ReadOnly="true"></asp:TextBox></td>

            </tr>
            <tr>
                <td>Full name</td>
                <td><asp:TextBox runat="server" ID="fullname"></asp:TextBox></td>

            </tr>
                <td>Education</td>
                <td><asp:TextBox runat="server" ID="Education"></asp:TextBox></td>

            </tr>
            </tr>
                <td>Address</td>
                <td><asp:TextBox runat="server" ID="Address"></asp:TextBox></td>

            </tr>
            </tr>
                <td>Contact No</td>
                <td><asp:TextBox runat="server" ID="ContactNo" TextMode="Phone"></asp:TextBox></td>

            </tr>

            </tr>
                <td>Email</td>
                <td><asp:TextBox runat="server" ID="Email" TextMode="Email"></asp:TextBox></td>

            </tr>

              </tr>
                <td>Paasword</td>
                <td><asp:TextBox runat="server" ID="Paasword" TextMode="Password"></asp:TextBox></td>

            </tr>
            <tr>
                <td>

                </td>
                <td>  <asp:Button runat="server" ID="inductcounsellor"  OnClick="inductcounsellor_Click"   Text="Induct Counsellor" /></td>
            </tr>
          
            <br />
        </table>
    </div>
    </form>
        </center>
</body>
</body>
</html>
