using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B2_1621050727_DinhThiHaiYen.form
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string day = DateTime.Now.Day.ToString();
            string month = DateTime.Now.Month.ToString();
            string year = DateTime.Now.Year.ToString();
            string time = "Hôm nay: Ngày " + day + " tháng " + month + " năm " + year;
            lblTime.Text = time;

            string stDay = Request.Form.Get("ddlDay");
            string stMonth = Request.Form.Get("ddlMonth");
            string stYear = Request.Form.Get("ddlYear");
            string email = Request.Form.Get("txbEmail");
            string address = Request.Form.Get("txbAddress");
            string phone = Request.Form.Get("txbPhone");
            string gender = Request.Form.Get("gender");

            int tuoi = DateTime.Now.Year - int.Parse(stYear);

            txbyearDateOfBirth.Text = stDay + "/" + stMonth + "/" + stYear + " (" + tuoi + " tuổi)";
            txbAddress.Text = address;
            txbEmail.Text = email;
            txbPhone.Text = phone;

            string mua = "";
            string xuan = " Tôi có chờ đâu, có đợi đâu </br>" +
                "Đem chi xuân lại gợi thêm sầu? </br>" +
                " Với tôi tất cả như vô nghĩa </br>" +
                "Tất cả không ngoài nghĩa khổ đau! </br>" +
                " ... </br>" +
                "Có đứa trẻ thơ không biết khóc </br>" +
                "Vô tình bỗng nổi tiếng cười ran! </br>" +
                "Chao ôi!Mong nhớ!Ôi, mong nhớ, </br>" +
                "Một cánh chim thu lạc cuối ngàn! </br>";

            string ha = "Hôm qua trở lại vườn xưa,  </br>" +
                "Đầu cành dâm bụt, lưa thưa nắng vàng. </br>" +
                "Thoảng nghe chim hót trên ngàn, </br>" +
                "Bên hàng bụt đỏ ,ngân vang tiếng cười. </br>" +
                "Dáng ai, thấp thoáng mơ màng, </br>" +
                "Nghe chừng như bóng em về đâu đây. </br>" +
                "Nắng chiều lãng đãng hiên tây, </br>" +
                "Giật mình tĩnh giấc, còn đây nỗi buồn. </br>";

            string thu = "Thu về cho đoá Cúc vàng, </br>" +
                "Cho hàng phong trút lá vàng đầy sân. </br>" +
                "Ngồi nghe một chút hương lân, </br>" +
                "Nhớ em áo lụa thanh tân thuở nào. </br>" +
                "Lòng sao nghe vẫn dạt dào, </br>" +
                "Màu hoa năm ấy ngọt ngào trong tim. </br>";

            string dong = "Có một mùa hoa cải </br>" +
                "Nở vàng bên bến sông </br>" +
                "Em đang thì con gái </br>" +
                "Đợi anh chưa lấy chồng </br>" +
                "... </br>" +
                "Anh lại gieo hạt cải </br>" +
                "Lại âm thầm đợi mong </br>" +
                "Có một người con gái </br>" +
                "Đợi anh chưa lấy chồng </br>";

            if (stMonth == "1" || stMonth == "2" || stMonth == "3")
            {
                mua = "Xuân";
                lblTitle.Text = "XUÂN (Chế Lan Viên)";
                imgMua.ImageUrl = "../pic/muaxuan.jpg";
                lblTho.Text = xuan;
            }
            if (stMonth == "4" || stMonth == "5" || stMonth == "6")
            {
                mua = "Hạ";
                lblTitle.Text = "HOA DÂM BỤT";
                imgMua.ImageUrl = "../pic/muahe.jpg";
                lblTho.Text = ha;

            }
            if (stMonth == "7" || stMonth == "8" || stMonth == "9")
            {
                mua = "Thu";
                lblTitle.Text = "HOA CÚC MÙA THU";
                imgMua.ImageUrl = "../pic/muathu.JPG";
                lblTho.Text = thu;


            }
            if (stMonth == "10" || stMonth == "11" || stMonth == "12")
            {
                mua = "Xuân";
                lblTitle.Text = "MÙA HOA CẢI";
                imgMua.ImageUrl = "../pic/muadong.JPG";
                lblTho.Text = dong;

            }

            if (gender == "rbMale")
            {
                imgGender.ImageUrl = "../pic/pic_Nam.png";
            }
            else
            {
                imgGender.ImageUrl = "../pic/pic_Nu.png";

            }

            lblGreen1.Text = Request.Form.Get("txbName");
            lblGreen2.Text = "(BẠN SINH VÀO: Tháng " + stMonth + " - Mùa " + mua + ")";
        }
    }
}