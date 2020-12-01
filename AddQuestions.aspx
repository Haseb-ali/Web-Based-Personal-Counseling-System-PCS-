<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddQuestions.aspx.cs" Inherits="AddQuestions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Questions</title>
    <style>
         body{
        background-color:#f9f9f9;
    }
        table{
            border:0.8px solid;
            padding:18px;
        }
        td{
            padding:8px;
        }
        input{
            padding:5px;
            width:250px;
        }
        #question{
            margin: 0px;
    height: 92px;
    width: 257px;
        }
        #addQuestion{
                width: 263px;
                cursor:pointer;
        }
        #Message{
            font-size:20px;
            color:red;
        }
    </style>
</head>
<body>
    <br /><br />
    <center>
        <asp:Label runat="server" ID="Message"></asp:Label>
        <br /><br />
            <form id="form1" runat="server">
    <div>
    <table>
        

        <tr>
         <td>
               QUIZ ID:
             </td>
            <td>
                <asp:TextBox runat="server" ID="QuizId" ReadOnly="true"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
         <td>
               QUIZ QUESTION:
             </td>
            <td>
                <asp:TextBox runat="server" ID="question" TextMode="MultiLine" ></asp:TextBox>
            </td>
            
        </tr>
        <tr>
         <td>
               OPTION-1:
             </td>
            <td>
                <asp:TextBox runat="server" ID="OPTION1" ></asp:TextBox>
            </td>
            
        </tr>
<tr>
         <td>
             OPTION-2:
             </td>
            <td>
                <asp:TextBox runat="server" ID="OPTION2" ></asp:TextBox>
            </td>
            
        </tr>
<tr>
         <td>
               OPTION-3:
             </td>
            <td>
                <asp:TextBox runat="server" ID="OPTION3" ></asp:TextBox>
            </td>
            
        </tr>
<tr>
         <td>
              OPTION-4:
             </td>
            <td>
                <asp:TextBox runat="server" ID="OPTION4" ></asp:TextBox>
            </td>
            
        </tr>

<tr>
         <td>
              QUIZ ANSWER:
             </td>
            <td>
                <asp:TextBox runat="server" ID="ANSWER" ></asp:TextBox>
            </td>
            
        </tr>
<tr>
         <td>
             
             </td>
            <td>
               <asp:Button runat="server" ID="addQuestion" Text="ADD QUESTIONS" OnClick="addQuestion_Click" />
            </td>
            
        </tr>



    </table>
    </div>
    </form>
</body>
</html>
