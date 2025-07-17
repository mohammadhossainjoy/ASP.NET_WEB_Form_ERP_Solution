using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HR.UI
{
    public partial class CompanySetup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblCompanyName.Text = string.Empty;
            lblLocation.Text = string.Empty;
            lblEstablished.Text = string.Empty;
            lblContact.Text = string.Empty;

            lblCompanyName.Text = txtCompanyName.Text;
            lblLocation.Text = txtLocation.Text;
            lblEstablished.Text = txtEstablished.Text;
            lblContact.Text = txtContact.Text;

            PanelSubmitted.Visible = true;
        }
    }
}