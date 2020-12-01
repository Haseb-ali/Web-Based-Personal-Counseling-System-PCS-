<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Based Personal Counseling System (PCS) </title>
    <link rel="stylesheet" href="Content/PCScss.css" />
    <style>
        body{
            background-color:#fdfdfd
        }
        #default {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
  margin-top:15%;
}

#default td, #default th {
  border: 1px solid #ddd;
  padding: 20px;
}

#default tr:nth-child(even){background-color: white;}



#default th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
 #btn {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
 
  cursor: pointer;
  width:100px;
}
    </style>
</head>
<body>
    <center>
        
<table id="default">
    <tr>
        <th colspan="2" style="text-align:center;padding:20px">
            Web Based Personal Counseling System (PCS)
        </th>
    </tr>
    <tr>
        <td>
Log in
        </td>
        <td  style="text-align:center">
            <a href="Accounts/login.aspx" id="login"><button type="button" id="btn">LOG IN</button></a>
        </td>
    </tr>
    <tr>
        <td>
REGISTER
        </td>
        <td style="text-align:center">
            <a href="Accounts/register.aspx" id="register"><button type="button" id="btn">REGISTER</button></a>
        </td>
    </tr>

</table>
       

    </center>
</body>
</html>
