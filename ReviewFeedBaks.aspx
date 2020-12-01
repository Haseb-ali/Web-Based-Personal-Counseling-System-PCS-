<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReviewFeedBaks.aspx.cs" Inherits="ReviewFeedBaks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Review Feed backs</title>
    <style>
         #viewUserInfo{
            border-width: 0px;
    border-style: Solid;
    width: 85%;
    margin-top: 3%;
    border: 0.8px solid #f3f1f1;
        margin-top: 7%;
        }
        #filters {
    padding: 7px;
    width: 268px;
         }
       #filter {
            background-color: #4CAF50;
  border: none;
  color: white;
  padding: 8px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
        }
       #topheading{
           font-size: 27px;
    background-color: aliceblue;
    padding: 10px;
}
       }
    </style>
</head>
<body>
    <center>
        <div id="topheading">
            Review Feed backs
        </div>
    </center>
    <br /><br />
    <br />
    <form id="form1" runat="server">
        <asp:DropDownList runat="server" ID="filters">
            <asp:ListItem Text="ALL" Value="a">

            </asp:ListItem>
            <asp:ListItem Text="POSITIVE" Value="p">

            </asp:ListItem>
            <asp:ListItem Text="NEGATIVE" Value="n">

            </asp:ListItem>
            


        </asp:DropDownList>
        <asp:Button runat="server" ID="filter"  Text="FILTER" OnClick="filter_Click"/>
    <div>
       <asp:GridView runat="server" ID="viewUserInfo" AutoGenerateColumns="false" BorderStyle="Solid" BorderWidth="0px" CellPadding="10" CellSpacing="2" HorizontalAlign="Center" HeaderStyle-BackColor="#F9F9F9" AllowSorting="True">
    <Columns>
        <asp:BoundField DataField="FeedbackId" HeaderText="FEED BACK ID" />
        <asp:BoundField DataField="FeedBacktopic" HeaderText="FEED BACK TOPIC" />

        <asp:BoundField DataField="FeedBackMessage" HeaderText="MESSAGE" />
<asp:BoundField DataField="senderId" HeaderText="SENDER ID" />
<asp:BoundField DataField="senderName" HeaderText="SENDER NAME" />
<asp:BoundField DataField="Sendate" HeaderText="SEND DATE" />
        
        <asp:TemplateField>
            <ItemTemplate>
                
                <asp:LinkButton ID="delete" Text="Delete" runat="server" CommandArgument='<% # Eval("FeedbackId") %>' OnClick="delete_Click"></asp:LinkButton>
                
            </ItemTemplate>
            </asp:TemplateField>
    </Columns>
</asp:GridView>
    </div>
        <center>
            <asp:Label ID="message" runat="server">

            </asp:Label>
        </center>
    </form>
</body>
</html>
