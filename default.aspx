<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Salary Calculator.aspx.vb" Inherits="Salary_Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Salary Calculator</title>
     <link rel="stylesheet" type="text/css" href="./SalaryCalStyleSheet.css" /> 
</head>
<body>
    <form id="form1" runat="server">
    <div class="design">
    
        <h2>Salary Calculator</h2>
        <h3>Created by Zhongli Zhao</h3>
        <hr />
        <br />
        <p>Hours Worked:
        <asp:TextBox ID="tbHoursWorked" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="rfvHoursWorked" runat="server" ControlToValidate="tbHoursWorked" ErrorMessage="* Please enter hours worked." Font-Bold="False" Font-Italic="True" ForeColor="Blue"></asp:RequiredFieldValidator>
        <br />
        Hourly Rate: <asp:TextBox ID="tbHourlyRate" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="rfvHourlyRate" runat="server" ControlToValidate="tbHourlyRate" ErrorMessage="* Please enter hourly rate." Font-Bold="False" Font-Italic="True" ForeColor="Blue"></asp:RequiredFieldValidator>
        <br />
        Pre-Tax Deductions:
        <asp:TextBox ID="tbPreTaxDe" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="rfvPreTaxDe" runat="server" ControlToValidate="tbPreTaxDe" ErrorMessage="* Please enter pre-tax deductions." Font-Bold="False" Font-Italic="True" ForeColor="Blue"></asp:RequiredFieldValidator>
        <br />
        Post-Tax Deductions:
        <asp:TextBox ID="tbPostTaxDe" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="rfvPostTaxDe" runat="server" ControlToValidate="tbPostTaxDe" ErrorMessage="* Please enter post-tax deductions." Font-Bold="False" Font-Italic="True" ForeColor="Blue"></asp:RequiredFieldValidator>
        <br /><br />
&nbsp;<asp:Button ID="btCal" runat="server" Text="Calculate" BackColor="#4B322C" BorderColor="#4B322C" BorderStyle="Inset" BorderWidth="5px" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="White" Height="46px" Width="99px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Clear" Height="45px" BackColor="#4B322C" BorderColor="#4B322C" BorderStyle="Inset" BorderWidth="5px" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="White" Width="100px" />
        <br />
        <br />

        <%If Not IsPostBack Then%>

        <% Else %>
            <!-- Then then page is in postback so show the monthly payment and payment schedule. -->
            
                Your Net Pay is: <asp:Label ID="lbNetPay" runat="server"></asp:Label>
        <br />
        <br />
              <% End If %>
        </p>
    
    </div>
    </form>
</body>
</html>
