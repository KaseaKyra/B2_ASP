<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="B2_1621050727_DinhThiHaiYen.form.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
    <link href="../bootstrap-4.3.1-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/home.css" rel="stylesheet" />
    <style>
        body {
            background-image: url('../pic/bg3.jpg');
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="container mt-5" style="">
            <div class="content mb-3">
                <div class="row">
                    <div class="col-12">
                        <div class="font-weight-bold text-uppercase text-white text-center py-2 title">
                            thông tin thành viên
                        </div>
                        <div class="p-2 my-5 mx-3 label-bg">
                            <%--label green 1--%>
                            <asp:Label ID="lblGreen1" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                </div>
                <%--thông tin đăng nhập--%>
                <div class="row">
                    <div class="col-md-3">
                        <asp:Image ID="imgGender" runat="server" CssClass="img-fluid ml-3 img-size" />
                    </div>
                    <div class="col-md-9">
                        <div class="font-weight-bold">Ngày sinh:</div>
                        <div>
                            <asp:TextBox ID="txbyearDateOfBirth" runat="server" CssClass="txb-width" ReadOnly="True"></asp:TextBox>
                        </div>
                        <div class="font-weight-bold">Email:</div>
                        <div>
                            <asp:TextBox ID="txbEmail" runat="server" CssClass="txb-width" ReadOnly="True"></asp:TextBox>
                        </div>
                        <div class="font-weight-bold">Điện thoại:</div>
                        <div>
                            <asp:TextBox ID="txbPhone" runat="server" CssClass="txb-width" ReadOnly="True"></asp:TextBox>
                        </div>
                        <div class="font-weight-bold">Địa chỉ:</div>
                        <div>
                            <asp:TextBox ID="txbAddress" runat="server" CssClass="txb-width" ReadOnly="True"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <%--label green 2--%>
                <div class="row">
                    <div class="col-12">
                        <div class="p-2 my-5 mx-3 label-bg">
                            <asp:Label ID="lblGreen2" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <%--ảnh hoa 4 mùa--%>
                    <div class="col-md-6">
                        <%--<img class="img-fluid ml-3 img-size py-2 px-2" src="../pic/muathu.JPG" />--%>
                        <asp:Image ID="imgMua" runat="server" CssClass="img-fluid ml-3 px-2 py-1 img-size" />
                    </div>
                    <%--thơ về 4 mùa--%>
                    <div class="col-md-6">
                        <div class="mb-4 text-uppercase text-tho">
                            <asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label>
                        </div>
                        <div class="text-tho">
                            <asp:Label ID="lblTho" runat="server" Text="Label"></asp:Label>
                        </div>

                    </div>
                </div>
                <%--hiển thị ngày tháng--%>
                <div class="row mt-2">
                    <div class="col-12 text-center">
                        <div class="py-1 text-white label-time-bg">
                            <asp:Label ID="lblTime" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
