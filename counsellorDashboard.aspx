<%@ Page Language="C#" AutoEventWireup="true" CodeFile="counsellorDashboard.aspx.cs" Inherits="counsellorDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Councellor Dashboard</title>
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
    
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  border: 1px solid #e7e7e7;
  background-color: #f3f3f3;
}

li {
  float: left;
}

li a {
  display: block;
  color: #666;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #ddd;
}


li a.active {
  color: white;
  background-color: #03a9f4;
}

</style>

</head>
<body>
     <form id="form1" runat="server">
    <div>
    <ul>
  <li><a class="active" href="#home">Profile</a></li>
  <li><a href="reviewScore.aspx" target="_blank">Review Test Score</a></li>
  <li><a href="FeedBack.aspx">Feedback</a></li>
        <li><a href="changePassword.aspx">Change Password</a></li>
        <li><a href="LogOut.aspx">Logout</a></li>
        
</ul>

<asp:Label runat="server" ID="debug"></asp:Label>
    </div>
    <br />
        <br /><br />
        <br /><br />
            <center>
              <table id="customers">
                  <thead>
                      <tr>
                          <th colspan="2" style="text-align:center">
                              PROFILE INFORMATION
                          </th>
                      </tr>
                  </thead>
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
<td>                        <asp:Label runat="server" ID="address"></asp:Label>
</td>
                    

                </tr>
                  <tr>
                      <td>
                        <span id="title">                        USER CONTACT NUMBER:</span>
                        <br /><br />
                        

                    </td>
                      <td>
                          <asp:Label runat="server" ID="Contactno"></asp:Label>
                          <br />
                          <asp:TextBox runat="server" ID="Contactnoup" MaxLength="11" TextMode="Phone"></asp:TextBox>
                        <asp:Button runat="server" ID="updateContactInfo" OnClick="updateContactInfo_Click" Text="update" />

                          

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
                        <br />
                    <asp:TextBox runat="server" ID="Emailup" TextMode="Email"></asp:TextBox>
                        <asp:Button runat="server" ID="updateEmail" OnClick="updateEmail_Click"  Text="update" />


                    </td>
                </tr>




            </table>
            

        </center>
    </form>
</body>
</html>
