<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reviewScore.aspx.cs" Inherits="reviewScore" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Review Secures</title>
    <style>
        #viewUserInfo{
            border-width: 0px;
    border-style: Solid;
    width: 80%;
    margin-top: 8%;
    border: 0.8px solid #f3f1f1;
        }
       th{

           background-color:#f9f9f9;
       }
       #topheading{
               font-size: 38px;
    background-color: #f9f9f9;
    padding: 10px;
    width: 95%;
       }
       #change{
        font-size:20px;
        color:red;
    }
       #topheading{
           font-size: 29px;
    background-color: #f9f9f9;
    padding: 10px;
       }
    </style>
</head>
<body>
    <center>
        <div id="topheading">
            Review Test scores
        </div>
    </center>
    <form id="form1" runat="server">
     <br />
        <br />
        search with user id 
        <br />
    <asp:TextBox runat="server" ID="searchKeyword"  MaxLength="20" TextMode="Search" ToolTip="search with userId"></asp:TextBox>
        <asp:DropDownList runat="server" ID="combox">
                 <asp:ListItem Text="--- Filter ----" Value=" " />
                <asp:ListItem Text="All students Score" Value="all"></asp:ListItem>
            </asp:DropDownList>

        <asp:Button runat="server" ID="search" Text="Search"  OnClick="search_Click" />
    </div>
        <br />
        <center>
            <br />
        <asp:Label ID="change" runat="server"></asp:Label>
            

         <div>
    
        <asp:GridView runat="server" ID="viewUserInfo" AutoGenerateColumns="false" BorderStyle="Solid" BorderWidth="0px" CellPadding="10" CellSpacing="2" HorizontalAlign="Center" HeaderStyle-BackColor="#0066FF" AllowSorting="True">
    <Columns >
        <asp:BoundField DataField="quizId" HeaderText="QUIZ ID" />
        <asp:BoundField DataField="studentId" HeaderText="STUDENT ID" />
<asp:BoundField DataField="takenDate" HeaderText="TAKEN DATE" />
<asp:BoundField DataField="TakenTime" HeaderText="TAKEN TIME" />
<asp:BoundField DataField="score" HeaderText="SCORE" />
<asp:BoundField DataField="totallMarks" HeaderText="  TOTALL MARKS" />

    </Columns>
</asp:GridView>
    </div>
    </form>
</body>
</html>
