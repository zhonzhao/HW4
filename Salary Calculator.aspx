<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Salary Calculator.aspx.vb" Inherits="Salary_Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Salary Calculator</title>
     <link rel="stylesheet" type="text/css" href="./SalaryCalStyleSheet.css" /> 
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Salary Calculator<br />
        Created by Zhongli Zhao<br />
        <br />
        Hours Worked:
        <asp:TextBox ID="tbHoursWorked" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvHoursWorked" runat="server" ControlToValidate="tbHoursWorked" ErrorMessage="Please enter hours worked."></asp:RequiredFieldValidator>
        <br />
        <br />
        Hourly Rate: <asp:TextBox ID="tbHourlyRate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvHourlyRate" runat="server" ControlToValidate="tbHourlyRate" ErrorMessage="Please enter hourly rate."></asp:RequiredFieldValidator>
        <br />
        <br />
        Pre-Tax Deductions:
        <asp:TextBox ID="tbPreTaxDe" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPreTaxDe" runat="server" ControlToValidate="tbPreTaxDe" ErrorMessage="Please enter pre-tax deductions."></asp:RequiredFieldValidator>
        <br />
        <br />
        Post-Tax Deductions:
        <asp:TextBox ID="tbPostTaxDe" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPostTaxDe" runat="server" ControlToValidate="tbPostTaxDe" ErrorMessage="Please enter post-tax deductions."></asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btCal" runat="server" Text="Calculate" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Clear" />
        <br />
        <br />
        Your Net Pay is: <asp:Label ID="lbNetPay" runat="server"></asp:Label>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
