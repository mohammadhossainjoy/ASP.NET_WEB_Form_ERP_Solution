using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HR.UI
{
    public partial class DepartmentSetup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblDeptName.Text = string.Empty;
            lblManager.Text = string.Empty;
            lblLocation.Text = string.Empty;
            lblDeptName.Text = txtDeptName.Text;
            lblManager.Text = txtManager.Text;
            lblLocation.Text = txtLocation.Text;
            PanelSubmitted.Visible = true;
        }
    }
}