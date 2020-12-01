<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Accounts_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In-Web Based Personal Counseling System (PCS)</title>
    <link rel="stylesheet" href="../Content/PCScss.css" />
    <script src="../Content/Scripts/validate.js"></script>
    <style>
        body{
            background-color:#fdfdfd;
        }
        #logInBtn{
            background-color:#4CAF50;
        }
        #error{
 color: green;background-color: aliceblue; padding: 7px;
 width:80%; 
   
}
        
        
    </style>
</head>
<body>
   <asp:Label runat="server" ID="info"></asp:Label>
     <center>
        <br /><br />
    <form id="form1" runat="server" onsubmit="return loginValidate()">
    <div class="loginBox">
       <div id="banner">
           <span id="formHeadind" style="background-color:#4CAF50;">Log In Form</span>
       </div>
        <br /><br />
         
        <small id="error" ><b>REQURIED ALL FIELDS</b></small>
         <asp:Label ID="loginerror" runat="server"></asp:Label>   
         <br /><br />
        <div class="fields">
        
            <label  class="">Username</label>
    <asp:TextBox ID="username" runat="server"></asp:TextBox>
            <br />
        <label class="">Password</label>
        <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
       <br />
        <asp:Button runat="server" ID="logInBtn" OnClick="processLogin" Text="Log In" />
            <br />
            
    </div>
        </div>
    </form>
        </center>
</body>
</html>
