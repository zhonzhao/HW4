
Partial Class Salary_Calculator
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        ' Put the focus in the first input box
        tbHoursWorked.Focus()

    End Sub

    Protected Sub btCal_Click(sender As Object, e As EventArgs) Handles btCal.Click
        ' declare variables
        Dim hours As Integer
        Dim rate As Double
        Dim preDe As Double
        Dim postDe As Double
        Dim tax As Double
        Dim grossPay As Double
        Dim taxablePay As Double
        Dim postTaxSalary As Double

        ' retrieve values from textboxes
        hours = CDbl(tbHourlyRate.Text)
        rate = CDbl(tbHoursWorked.Text)
        preDe = CDbl(tbPreTaxDe.Text)
        postDe = CDbl(tbPostTaxDe.Text)

        ' calculate gross pay and taxable pay
        grossPay = hours * rate
        taxablePay = grossPay - preDe

        ' test whether gross pay exceeds $500
        If grossPay < 500 Then
            tax = taxablePay * 0.18
        Else
            tax = taxablePay * 0.22
        End If

        'calculate post-tax and post-deduction salary
        postTaxSalary = taxablePay - tax - postDe

        'display net pay
        lbNetPay.Text = FormatCurrency(postTaxSalary)


    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ' clear values
        tbHourlyRate.Text = String.Empty
        tbHoursWorked.Text = String.Empty
        tbPostTaxDe.Text = String.Empty
        tbPreTaxDe.Text = String.Empty
        lbNetPay.Text = String.Empty
        tbHoursWorked.Focus()

    End Sub
End Class
