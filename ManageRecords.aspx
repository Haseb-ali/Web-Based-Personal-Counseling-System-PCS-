<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageRecords.aspx.cs" Inherits="ManageRecords" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Records</title>
    <style>
         #viewUserInfo{
            border-width: 0px;
    border-style: Solid;
    width:55%;
    border: 0.8px solid #f3f1f1;
    float:left;
        }
          #topheadin{
            font-size:30px;
            background-color:#ecebeb;
            width:50%;
            
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
    #viewUserInfo{
        float:left;
        background-color:s#f7f6f6;
        
    }
    #viewUserInfocon{
        float:left;
       
    background-color:#f7f6f6;

        }
    #updateForm{
        float:right;
    }
   #updateForm input{
padding:5px;
width:300px;
    }
   #savechanges{
       
       margin-top:3%;
    background-color: black; 
  border: none;
  color: white;
  padding: 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
  cursor: pointer;
  width:311px ;
  float:right;
       }
   #top{
           font-size: 26px;
    background-color: aliceblue;
    padding: 10px;
   }

    </style>
</head>
<body>
    <body>
    <center>
   <div id="top">
       Manages Recrds
   </div>

        </center>
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
        search with user id or fullname
        <br />
    <asp:TextBox runat="server" ID="searchKeyword"  MaxLength="20" TextMode="Search" ToolTip="search with userId"></asp:TextBox>
        <asp:Button runat="server" ID="search" Text="Search"  OnClick="search_Click" />
    </div>
        <br />
        <center>
        <asp:Label ID="change" runat="server"></asp:Label>


        </center>
        <br />
       

        <asp:GridView runat="server" ID="viewUserInfo" AutoGenerateColumns="false" BorderStyle="Solid" BorderWidth="0px" CellPadding="5" CellSpacing="2" HorizontalAlign="Center" HeaderStyle-BackColor="#F9F9F9" AllowSorting="True">
    <Columns>
        <asp:BoundField DataField="studentId" HeaderText="STUDENT ID" />
        <asp:BoundField DataField="fullname" HeaderText="STUDENT NAME" />
<asp:BoundField DataField="education" HeaderText="EDUACTION" />
<asp:BoundField DataField="email" HeaderText="STUDENT EMAIL" />


    <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="view" Text="view" runat="server" CommandArgument='<% # Eval("studentId") %>'   OnClick="view_Click"></asp:LinkButton>
                 &nbsp;
                <asp:LinkButton ID="update" Text="update" runat="server" CommandArgument='<% # Eval("studentId") %>'  OnClick="update_Click"></asp:LinkButton>
                &nbsp;
                
                <asp:LinkButton ID="delete" Text="Delete" runat="server" CommandArgument='<% # Eval("studentId") %>'  OnClick="delete_Click"></asp:LinkButton>
                
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
            
</asp:GridView>
        <asp:GridView runat="server" ID="viewUserInfocon" AutoGenerateColumns="false" BorderStyle="Solid" BorderWidth="0px" CellPadding="5" CellSpacing="2" HorizontalAlign="Center" HeaderStyle-BackColor="#0066FF">
    <Columns>
        <asp:BoundField DataField="conId" HeaderText="COUNCELLOR ID" />
        <asp:BoundField DataField="conName" HeaderText="COUNCELLOR NAME" />
<asp:BoundField DataField="conEducation" HeaderText="EDUCATION" />
<asp:BoundField DataField="conEmail" HeaderText="COUNCELLOR EMAIL" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="viwCon" Text="view" runat="server" CommandArgument='<% # Eval("conId") %>' OnClick="viwCon_Click"></asp:LinkButton>
                 &nbsp;
                <asp:LinkButton ID="updateCon" Text="update" runat="server" CommandArgument='<% # Eval("conId") %>' OnClick="updateCon_Click"></asp:LinkButton>
                &nbsp;
                <asp:LinkButton ID="deleteCon" Text="Delete" runat="server" CommandArgument='<% # Eval("conId") %>' OnClick="deleteCon_Click"></asp:LinkButton>
                
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
         <div id="updateForm">
             
            <table>
                <tr>
                    <td>
                        USER ID:
                    </td>
                    <td>
                        <asp:TextBox ID="username" runat="server" ReadOnly="true"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td>
                        FULL NAME:
                    </td>
                    <td>
                        <asp:TextBox ID="fullname" runat="server" ></asp:TextBox>
                    </td>

                </tr><tr>
                    <td>
                        EUDCATION:
                    </td>
                    <td>
                        <asp:TextBox ID="education" runat="server" ></asp:TextBox>
                    </td>

                </tr><tr>
                    <td>
                       ADDRESS:
                    </td>
                    <td>
                        <asp:TextBox ID="address" runat="server" ></asp:TextBox>
                    </td>

                </tr><tr>
                    <td>
                        CONTACT NUMBER:
                    </td>
                    <td>
                        <asp:TextBox ID="contactno" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        EMAIL:
                    </td>
                    <td>
                        <asp:TextBox ID="email" runat="server" ></asp:TextBox>
                    </td>

                </tr>
                
                <tr>
                    <td></td>
                    <td>
                        <asp:Button  ID="savechanges" runat="server" Text="save changes.."  OnClick="savechanges_Click"  />
                    </td>

                </tr>
            </table>
      
         </div>
    </form>
          
</body>
</html>
