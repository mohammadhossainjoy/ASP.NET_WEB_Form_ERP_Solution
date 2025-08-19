using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HR.UI
{
    public partial class LeaveEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblEmployeeName.Text = string.Empty;
            lblLeaveType.Text = string.Empty;
            lblFromDate.Text = string.Empty;
            lblToDate.Text = string.Empty;

            lblEmployeeName.Text = txtEmployeeName.Text;
            lblLeaveType.Text = ddlLeaveType.SelectedItem.Text;
            lblFromDate.Text = txtFromDate.Text;
            lblToDate.Text = txtToDate.Text;

            PanelSubmitted.Visible = true;
        }
    }
}