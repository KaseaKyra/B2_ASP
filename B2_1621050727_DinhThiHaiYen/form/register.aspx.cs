using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B2_1621050727_DinhThiHaiYen.form
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int year = DateTime.Now.Year;

            string day = DateTime.Now.Day.ToString();
            string month = DateTime.Now.Month.ToString();
            string time = "Hôm nay: Ngày " + day + " tháng " + month + " năm " + year.ToString();
            lblTime.Text = time;

            for (int i = 1960; i < year; i++)
            {
                ddlYear.Items.Add(new ListItem(i.ToString()));
            }
;
            for (int i = 1; i < 13; i++)
            {
                ddlMonth.Items.Add(new ListItem(i.ToString()));
            }

            for (int i = 1; i < 32; i++)
            {
                ddlDay.Items.Add(new ListItem(i.ToString()));
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txbAddress.Text = "";
            txbEmail.Text = "";
            txbName.Text = "";
            txbPhone.Text = "";
            txbName.Focus();
        }
    }
}