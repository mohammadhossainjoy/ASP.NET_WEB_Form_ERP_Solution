using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HR.UI
{
    public partial class AttendanceEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblEmployeeName.Text = string.Empty;
            lblDate.Text = string.Empty;
            lblInTime.Text = string.Empty;
            lblOutTime.Text = string.Empty;
            lblEmployeeName.Text = txtEmployeeName.Text;
            lblDate.Text = txtDate.Text;
            lblInTime.Text = txtInTime.Text;
            lblOutTime.Text = txtOutTime.Text;

            PanelSubmitted.Visible = true;
        }
    }
}