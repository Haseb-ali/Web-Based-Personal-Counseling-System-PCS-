<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminDashboard.aspx.cs" Inherits="adminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
    <link rel="stylesheet"  href="Content/admindashboard.css" />
<style>
    body{
        background-color:whitesmoke;
    }
    #title-1{
        color:darkgray;
    }
    #customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 60%;
  margin-top:8%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #f9f9f9;
  color: black;
}

     .content{
        margin-top:10%;
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
        
        <div>
            <table id="customers">
                <tr>
                    <th colspan="2" style="text-align:center">
                        ADMIN MENU
                    </th>
                </tr>
                <tr>
                    <td>
                        Pending Requests
                    </td>
                    <td>
                         <a  href="penddingrequests.aspx" type="text/asp" rel="external"  hreflang="en" target="_blank"><button id="btn">view</button></a>  

                    </td>
                </tr>
                <tr>
                    <td>
                        Induct Counselor
                    </td>
                    <td>
                         <a  href="inductCounsellor.aspx" type="text/asp" rel="external"  hreflang="en" target="_blank"><button id="btn">view</button></a>  

                    </td>
                </tr>
                <tr>
                    <td>
                       Add Questions
                    </td>
                    <td>
                         <a  href="AddQuestions.aspx" type="text/asp" rel="external"  hreflang="en" target="_blank"><button id="btn">view</button></a>  

                    </td>
                </tr>
                <tr>
                    <td>
                       View UserInformation
                    </td>
                    <td>
                         <a  href="viewUserInformation.aspx" type="text/asp" rel="external"  hreflang="en" target="_blank"><button id="btn">view</button></a>  

                    </td>
                </tr>

                <tr>
                    <td>
                      Manage Database
                    </td>
                    <td>
                         <a  href="ManageRecords.aspx" type="text/asp" rel="external"  hreflang="en" target="_blank"><button id="btn">view</button></a>  

                    </td>
                </tr>
                <tr>
                    <td>
                     Change Password
                    </td>
                    <td>
                         <a  href="changePassword.aspx" type="text/asp" rel="external"  hreflang="en" target="_blank"><button id="btn">view</button></a>  

                    </td>
                </tr>
                <tr>
                    <td>
                     Review FeedBacks
                    </td>
                    <td>
                         <a  href="ReviewFeedBaks.aspx" type="text/asp" rel="external"  hreflang="en" target="_blank"><button id="btn">view</button></a>  

                    </td>
                </tr>

                <tr>
                    <td>
                     LogOut
                    </td>
                    <td>
                         <a  href="LogOut.aspx" type="text/asp" rel="external"  hreflang="en" ><button id="btn">LogOut</button></a>  

                    </td>
                </tr>



            </table>
        </div>
    
    </div>
    </center>
    
</body>
</html>
