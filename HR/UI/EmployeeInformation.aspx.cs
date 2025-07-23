using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace HR.UI
{
    public partial class EmployeeInformation : System.Web.UI.Page
    {
        public object Department { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            //lblName.Text = string.Empty;
            //lblJobTitle.Text = string.Empty;
            //lblDept.Text = string.Empty;
            //lblDOB.Text = string.Empty;
            //lblEmail.Text = string.Empty;
            //lblPhone.Text = string.Empty;
            //lblAddress.Text = string.Empty;
            //lblJoinDate.Text = string.Empty;
            //lblName.Text = txtName.Text;
            //lblJobTitle.Text = txtJobTitle.Text;
            //lblDept.Text = ddlDepartment.SelectedItem.Text;
            //lblDOB.Text = txtDOB.Text;
            //lblEmail.Text = txtEmail.Text;
            //lblPhone.Text = txtPhone.Text;
            //lblAddress.Text = txtAddress.Text;
            //lblJoinDate.Text = txtJoinDate.Text;

            //PanelSubmitted.Visible = true;
            string employeename = txtName.Text;
            string  jobtitle= txtJobTitle.Text;
            string department = ddlDepartment.SelectedItem.Text;
            string dob = txtDOB.Text;
            string email = txtEmail.Text;
            string phone = txtPhone.Text;
            string address = txtAddress.Text;
            string joinDate = txtJoinDate.Text;

            string connStr = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=dbERP;User ID=mh;Password=123456";

            string sql = @"INSERT INTO [employeeInformation]
               ([Name],[JobTitle]
           ,[Department]
           ,[DateOfBirth]
           ,[Email]
           ,[Phone]
           ,[Address]
           ,[JoinDate])
               VALUES ('" + employeename + "','" + jobtitle + "','" + department + "','" + dob + "','" + email + "','" + phone + "','" + address + "','" + joinDate + "')";

            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}