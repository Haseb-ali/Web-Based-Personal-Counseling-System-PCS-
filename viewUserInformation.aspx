<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewUserInformation.aspx.cs" Inherits="viewUserInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        view user information

    </title>
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
    <style>
        body{
            padding:0px;
            margin:0px;
            background-color:whitesmoke;

        }
         #viewUserInfo{
            border-width: 0px;
    border-style: Solid;
    width: 80%;
    margin-top: 3%;
    border: 0.8px solid #f3f1f1;
    background-color:white;
        }
         #viewUserInfocon{
 border-width: 0px;
    border-style: Solid;
    width: 80%;
    margin-top: 3%;
    border: 0.8px solid #f3f1f1;
    background-color:white;
         }
       
       #topheading{
               font-size: 38px;
    background-color: #f9f9f9;
    padding: 10px;
    width: 95%;
       }
        #topheadin{
                    font-size: 22px;
    background-color: #4CAF50;
    color:white;
    
    
            
        }
        #sub{
            padding:10px;
    
        }
        #searchKeyword{
            padding:5px;
            width:250px;
        }
    #search{
            padding:5px;
            cursor:pointer;
        }
    #change{
        font-size:20px;
        color:red;
    }
     #search {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 6px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
 
  cursor: pointer;
  width:100px;
}
    th{

           background-color:#4CAF50;
           color:white;
           padding:15px;
       }
    td{
        padding:15px;
    }
    </style>
</head>
<body>
    <center>
    <div id="topheadin">
        <div id="sub">
       View and analyse user information
            </div>
    </di>

        </center>
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
    &nbsp;Search with user id or fullname
        <br />
    &nbsp;<asp:TextBox runat="server" ID="searchKeyword"  MaxLength="20" TextMode="Search" ToolTip="search with userId"></asp:TextBox>
        <asp:Button runat="server" ID="search" Text="Search" OnClick="search_Click" />
    </div>
        <br />
        <center>
        <asp:Label ID="change" runat="server"></asp:Label>


        </center>
        <br />
       

        <asp:GridView runat="server" ID="viewUserInfo" AutoGenerateColumns="false" BorderStyle="Solid" BorderWidth="0px" CellPadding="10" CellSpacing="2" HorizontalAlign="Center" HeaderStyle-BackColor="#F9F9F9" AllowSorting="True">
    <Columns>
        <asp:BoundField DataField="studentId" HeaderText="STUDENT ID" />
        <asp:BoundField DataField="fullname" HeaderText="STUDENT NAME" />
<asp:BoundField DataField="education" HeaderText="EDUACTION" />
<asp:BoundField DataField="address" HeaderText="STUDENT ADDRESS" />
<asp:BoundField DataField="contactno" HeaderText="CONTACT NUMBER" />
<asp:BoundField DataField="email" HeaderText="STUDENT EMAIL" />
    </Columns>
</asp:GridView>

        <asp:GridView runat="server" ID="viewUserInfocon" AutoGenerateColumns="false" BorderStyle="Solid" BorderWidth="0px" CellPadding="10" CellSpacing="2" HorizontalAlign="Center" HeaderStyle-BackColor="#0066FF">
    <Columns>
        <asp:BoundField DataField="conId" HeaderText="COUNCELLOR ID" />
        <asp:BoundField DataField="conName" HeaderText="COUNCELLOR NAME" />
<asp:BoundField DataField="conEducation" HeaderText="EDUCATION" />
<asp:BoundField DataField="Conaddress" HeaderText="COUNCELLOR ADDRESS" />
<asp:BoundField DataField="conContactNo" HeaderText="CONTACT NUMBER" />
<asp:BoundField DataField="conEmail" HeaderText="COUNCELLOR EMAIL" />
    </Columns>
</asp:GridView>
         
    </form>
</body>
</html>
