<%@ Page Language="C#" AutoEventWireup="true" CodeFile="scoreHistory.aspx.cs" Inherits="scoreHistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Score History</title>
    <style>
       #viewUserInfo{
            border-width: 0px;
    border-style: Solid;
    width: 80%;
    margin-top: 10%;
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
    </style>
</head>
<body>
    <center>
        <div id="topheading">
            Score History
        </div>
    </center>
    <form id="form1" runat="server">
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
