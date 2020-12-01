<%@ Page Language="C#" AutoEventWireup="true" CodeFile="penddingrequests.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Pendding requests...</title>
    <meta name="viewport" content="width=device-width,intial-scale=1.0" />
    <style>
        body{
            padding:0px;
            margin:0px;
            background-color:whitesmoke;
        }
         #penddingrequests{
            border-width: 0px;
    border-style: Solid;
    width: 80%;

    max-width:100%;
    margin-top: 3%;
    border: 0.8px solid #f3f1f1;
    background-color:white;
        }
       th{

           background-color:#4CAF50;
           color:white;
           padding:15px;
       }
       #topheading{
               font-size: 38px;
    background-color: #f9f9f9;
    padding: 10px;
    width: 95%;
       }
       
       td{
           padding:15px;
       }
        #new{
               font-size:26px;
    background-color: #4CAF50;
    padding:10px;
    color:white;   
     
  
        }
        #chasnge{
           font-size: 30px;
    color: red; 
        }
        
    </style>
</head>
<body>
    <asp:Label runat="server" ID="text"></asp:Label>
    <center>
        <div  id="new">
           Pending Requests
           
        </div>
        <br />
        <div >
        

            </div>
    </center>
    <br /><br />
    <form id="form1" runat="server">
<asp:GridView runat="server" ID="penddingrequests" AutoGenerateColumns="false" BorderStyle="Solid" BorderWidth="0px" CellPadding="5" CellSpacing="2" HorizontalAlign="Center">
    <Columns>
        <asp:BoundField DataField="studentId" HeaderText="STUDENT ID"  />
        <asp:BoundField DataField="fullname" HeaderText="FULL NAME" />
<asp:BoundField DataField="education" HeaderText="EDUCATION" />
<asp:BoundField DataField="address" HeaderText="ADDRESS" />
<asp:BoundField DataField="contactno" HeaderText="CONTACT NUMBER" />
<asp:BoundField DataField="email" HeaderText="EMAIL" />



        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="accept" Text="Accept" runat="server" CommandArgument='<% # Eval("studentId") %>' OnClick="accept_Click"></asp:LinkButton>
                &nbsp;
                
                <asp:LinkButton ID="delete" Text="Delete" runat="server" CommandArgument='<% # Eval("studentId") %>' OnClick="delete_Click"></asp:LinkButton>
                
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>

</asp:GridView>   
<center>        <asp:Label runat="server" ID="chasnge"></asp:Label>
 
  </center>

      </form>
    
</body>
</html>
