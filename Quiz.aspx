<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Quiz.aspx.cs" Inherits="Quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quizs</title>
    <style>
        #quiz {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
        

#quiz td, #quiz th {
  border: 1px solid #ddd;
  padding: 18px;
}

#quiz tr:nth-child(even){background-color: #f2f2f2;}


#quiz th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #72c1ff;
  color: white;
  height: 136px;
}
#startQuiz{
        float: left;
    padding: 10px;
    width: 200px;
margin-top:1%;
 background-color: #607d8b; 
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
#next{
      float: right;
    padding: 10px;
    width: 200px;
margin-top:1%;
background-color: #607d8b; 
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;

}

#headingq{
        padding: 14px;
    background-color: #607d8b;
    color: white;
    font-size: 26px;
}
.button {
  
}
#ccc{
    float:right;
}
    </style>
</head>
<body>
   <center>
       <div id="headingq">
           General Knowledge Quizs
       </di>
   </center>
    <br /><br />
    <form id="form1" runat="server">
    <div>
    <table id="quiz">

  <tr>
      
    <td colspan="3">
        Question no:
        <asp:Label runat="server" ID="QuizInfo"></asp:Label>
        <section id="ccc">
            Totall Question:
        <asp:Label runat="server" ID="toatllQuizn"></asp:Label>
       </section>
            </td>
    
  </tr>

        <tr>
      
    <th colspan="3">
        <asp:Label runat="server" ID="questionSpace"></asp:Label>
       </th>
    
  </tr>

  <tr>
    <td colspan="3"><asp:RadioButton runat="server" ID="option1"  GroupName="c" />
</td>
    
  </tr>

  <tr>
    <td colspan="3"><asp:RadioButton runat="server" ID="option2"  GroupName="c"/></td>
  </tr>
        <tr>
    <td colspan="3"><asp:RadioButton runat="server" ID="option3"  GroupName="c"/></td>
  </tr><tr>
    <td colspan="3"><asp:RadioButton runat="server" ID="option4"  GroupName="c"/></td>
  </tr>
</table>
        <br />
    </div>
        <asp:Button runat="server" ID="startQuiz" Text="Start"  OnClick="startQuiz_Click" />

        <asp:Button runat="server" ID="next" Text="Next"  OnClick="next_Click"  Enabled="false" />

    </form>
</body>
</html>

<script>
    var next = document.getElementById("next").disabled;
    var start = document.getElementById("startQuiz").disabled;

    if (next) {
        document.getElementById("next").style.backgroundColor = "#f2f2f3";
    }
    
    if (start) {
        document.getElementById("startQuiz").style.backgroundColor = "#f2f2f3";
    }


    


</script>