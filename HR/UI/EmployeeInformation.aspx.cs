using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HR.UI
{
    public partial class EmployeeInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            lblName.Text = string.Empty;
            lblJobTitle.Text = string.Empty;
            lblDept.Text = string.Empty;
            lblDOB.Text = string.Empty;
            lblEmail.Text = string.Empty;
            lblPhone.Text = string.Empty;
            lblAddress.Text = string.Empty;
            lblJoinDate.Text = string.Empty;
            lblName.Text = txtName.Text;
            lblJobTitle.Text = txtJobTitle.Text;
            lblDept.Text = ddlDepartment.SelectedItem.Text;
            lblDOB.Text = txtDOB.Text;
            lblEmail.Text = txtEmail.Text;
            lblPhone.Text = txtPhone.Text;
            lblAddress.Text = txtAddress.Text;
            lblJoinDate.Text = txtJoinDate.Text;

            PanelSubmitted.Visible = true;
        }
    }
}