<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="Accounts_register" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registr-Web Based Personal Counseling System (PCS)</title>
    <link rel="stylesheet" href="../Content/PCScss.css" />
    <script src="../Content/Scripts/inputsvalidation.js"></script>
    <style>
        body{
            background-color:#fdfdfd;
        }
        #formHeadind{
            background-color:#4CAF50;
            color:white;
        }
        #logInBtn{
             background-color:#4CAF50;
            color:white;
        }
    </style>
</head>
<body>
    <asp:Label runat="server" ID="debug"></asp:Label>
    <center>

        
    <form id="form1" runat="server" onsubmit="return signUpValidate()">
    <div id="SignupBox">
         <div id="banner">
           <span id="formHeadind">Registration Form</span>
       </div>
       
        <br /><br />
        <asp:Label runat="server"  ID="messages"></asp:Label>
         <center> <small id="error"><b>PLEASE FILL ALL FIELDS </b></small></center>
        <table id="signUp">
            
            <tr>
                <td>Student ID</td>
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
                <td>  <asp:Button runat="server" ID="logInBtn" OnClick="processSignUp" Text="Register" /></td>
            </tr>
          
            <br />
        </table>
    </div>
    </form>
        </center>
</body>
</html>
