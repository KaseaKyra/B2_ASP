<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="B2_1621050727_DinhThiHaiYen.form.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link href="../bootstrap-4.3.1-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/register.css" rel="stylesheet" />
    <style type="text/css">
        #wrap-content {
            background-image: url('../pic/bg_if.jpg');
            background-repeat: repeat-y;
            margin-left: 15%;
            margin-top: 10%;
            width: 670px;
            border: 2px solid blue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="text-uppercase text-center text-white py-2 top-bar">
            <img class="img-fluid mr-2" src="../pic/AYS1.gif" />
            môn học: lập trình .net 2 - phát triển ứng dụng web với asp.net 
            <img class="img-fluid mx-2" src="../pic/calendar_16.png" />
            <asp:Label ID="lblTime" runat="server" Text="Label"></asp:Label>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="p-2" id="wrap-content">
                        <h6 class="text-uppercase font-weight-bold text-center">thông tin cá nhân của thành viên</h6>
                        <div class="row">
                            <div class="col-md-3">
                                <img class="img-fluid img-border" src="../pic/user.png" />
                            </div>
                            <div class="col-md-9">
                                <table>
                                    <%--họ và tên--%>
                                    <tr>
                                        <td class="title">Họ và tên:(*)</td>
                                        <td>
                                            <asp:TextBox ID="txbName" runat="server" BackColor="Gray" Width="242px">
                                            </asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                                runat="server"
                                                ErrorMessage="Tên không đúng"
                                                ControlToValidate="txbName" CssClass="error">(*)</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <%--ngày sinh--%>
                                    <tr>
                                        <td class="title">Ngày sinh:</td>
                                        <td>Ngày:
                                            <asp:DropDownList ID="ddlDay" runat="server"></asp:DropDownList>
                                            Tháng:
                                            <asp:DropDownList ID="ddlMonth" runat="server"></asp:DropDownList>
                                            Năm:
                                            <asp:DropDownList ID="ddlYear" runat="server"></asp:DropDownList>
                                        </td>
                                    </tr>
                                    <%--giới tính--%>
                                    <tr>
                                        <td class="title">Giới tính:</td>
                                        <td>
                                            <asp:RadioButton ID="rbMale" runat="server" Checked="true"
                                                Text="Nam" GroupName="gender" />
                                            <asp:RadioButton ID="rbFemale" runat="server" Text="Nữ" GroupName="gender" />
                                        </td>
                                    </tr>
                                    <%--điện thoại--%>
                                    <tr>
                                        <td class="title">Điện thoại:(*)</td>
                                        <td>
                                            <asp:TextBox ID="txbPhone" runat="server" BackColor="Gray"
                                                Width="203px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                                                runat="server" ControlToValidate="txbPhone"
                                                ErrorMessage="Điện thoại không đúng" CssClass="error">(*)
                                            </asp:RequiredFieldValidator>
                                            <br />
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                                                runat="server"
                                                ErrorMessage="Điện thoại không đúng"
                                                ControlToValidate="txbPhone"
                                                ValidationExpression="(0)\d{9}" CssClass="error"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <%--email--%>
                                    <tr>
                                        <td class="title">Email:(*)</td>
                                        <td class="error">
                                            <asp:TextBox ID="txbEmail" runat="server" BackColor="Gray"
                                                Width="300px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                                                runat="server" ControlToValidate="txbEmail"
                                                ErrorMessage="Email không đúng">(*)
                                            </asp:RequiredFieldValidator>
                                            <br />
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                                                runat="server"
                                                ErrorMessage="Email không đúng"
                                                ControlToValidate="txbEmail"
                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                                định dạng email không đúng</asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <%--địa chỉ--%>
                                    <tr>
                                        <td class="title">Địa chỉ:</td>
                                        <td>
                                            <asp:TextBox ID="txbAddress" runat="server" BackColor="Gray"
                                                Height="53px" Width="358px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <%--button--%>
                                            <asp:Button ID="btnOk" runat="server" Text="Đồng ý"
                                                CssClass="btn-dark my-3 px-4 mr-3" PostBackUrl="~/form/Default.aspx" />
                                            <asp:Button ID="btnCancel" runat="server" Text="Hủy"
                                                CssClass="btn-dark my-3 px-4" OnClick="btnCancel_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="error">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Lỗi" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
