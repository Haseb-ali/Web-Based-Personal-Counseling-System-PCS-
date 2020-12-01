<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title >Profile information</title>
<style>
     #customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 80%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}



#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #f9f9f9;
  color: black;
}

     #topheading{
        font-size:40px;
    }
    #info{
        border:0.8px solid ;
        width:50%;
        margin-top:10%;
    }
    #info td{
        padding:30px;
    }
   
    body{
        background-color:#f9f9f9;

    }

    #topheading{
        font-size:40px;
    }
    #info{
        border:0.8px solid ;
        width:50%;
        margin-top:10%;
    }
    #info td{
        padding:30px;
    }
   
    
</style>

</head>

<body>
    <center>
        <div id="topheading">
            <span>
                User information
            </span>
        </div>
    

    <form id="form1" runat="server">
    <div>
    <asp:Label runat="server" ID="userid"></asp:Label>
    </div>
        <br />
        <br /><br /><br /><br />
        <div >
            <table id="customers">

                <tr>
                    <th colspan="2" style="text-align:center">
                        <asp:Label runat="server" ID="profileName"></asp:Label>
                    </th>
                </tr>
                <tr>
                    <td>
                        <span id="title">USER ID:</span><br /><br />
                        
                    </td>
                    <td>
                        <asp:Label runat="server" ID="username"></asp:Label>

                    </td>
                </tr>
                <tr>
                    
                     <td>
                         <span id="title">USER NAME</span><br /><br />
                        

                    </td>
                    <td>
                        <asp:Label runat="server" ID="fullname"></asp:Label>

                    </td>

                </tr>
                <tr>
                    <td>
                        <span id="title">EDUCATION:</span>
                        <br /><br />
                     

                    </td>
                    <td>
                           <asp:Label runat="server" ID="educcation"></asp:Label>
                    </td>
                </tr>
                <tr>
                    
                     <td>
                         <span id="title">
                         USER ADDRESS:</span><br /><br />
                        

                    </td>
                    <td>
                        <asp:Label runat="server" ID="address"></asp:Label>

                    </td>

                </tr>
                <tr>
                     <td>
                        <span id="title">                        USER CONTACT NUMBER:</span>
                        <br /><br />
                        
                    </td>
                    <td>
                        <asp:Label runat="server" ID="Contactno"></asp:Label>

                    </td>
                </tr>
                <tr>
                   
                     <td>
                        <span id="title">
                          USER EMAIL:
                            </span><br /><br />
                        

                    </td>
                    <td>
                    <asp:Label runat="server" ID="Email"></asp:Label>
                        </td>


                </tr>




            </table>
            
        </div>
    </form>
        </center>
</body>
</html>
