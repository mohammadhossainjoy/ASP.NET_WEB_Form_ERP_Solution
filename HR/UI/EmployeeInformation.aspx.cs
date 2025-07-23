using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Security.Policy;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HR.UI
{
    public partial class EmployeeInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string employeename = txtName.Text;
            string jobtitle = txtJobTitle.Text;
            string department = ddlDepartment.SelectedItem.Text;
            string dob = txtDOB.Text;
            string email = txtEmail.Text;
            string phone = txtPhone.Text;
            string address = txtAddress.Text;
            string joinDate = txtJoinDate.Text;

            string connStr = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=dbERP;User ID=mh;Password=123456";
            string sql = @"INSERT INTO [employeeInformation]
                ([Name],[JobTitle],[Department],[DateOfBirth],[Email],[Phone],[Address],[JoinDate])
                VALUES ('" + employeename + "','" + jobtitle + "','" + department + "','" + dob + "','" + email + "','" + phone + "','" + address + "','" + joinDate + "')";

            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        protected void btnshow_Click(object sender, EventArgs e)
        {
            LoadGrid();
        }

        private void LoadGrid()
        {
            string connStr = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=dbERP;User ID=mh;Password=123456";
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string sql = "SELECT * FROM [employeeInformation]";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            gvEmployee.DataSource = dt;
            gvEmployee.DataBind();
            conn.Close();
        }

        protected void gvEmployee_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(gvEmployee.DataKeys[e.RowIndex].Value);

            string name = ((TextBox)gvEmployee.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string jobTitle = ((TextBox)gvEmployee.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string department = ((TextBox)gvEmployee.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string dob = ((TextBox)gvEmployee.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string email = ((TextBox)gvEmployee.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string phone = ((TextBox)gvEmployee.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            string address = ((TextBox)gvEmployee.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
            string joinDate = ((TextBox)gvEmployee.Rows[e.RowIndex].Cells[8].Controls[0]).Text;

            string connStr = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=dbERP;User ID=mh;Password=123456";
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string sql = "UPDATE employeeInformation SET "
           + "Name = '" + name + "', "
           + "JobTitle = '" + jobTitle + "', "
           + "Department = '" + department + "', "
           + "DateOfBirth = '" + dob + "', "
           + "Email = '" + email + "', "
           + "Phone = '" + phone + "', "
           + "Address = '" + address + "', "
           + "JoinDate = '" + joinDate + "' "
           + "WHERE Id = " + id;


            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            conn.Close();

            gvEmployee.EditIndex = -1;
            LoadGrid();
        }

        protected void gvEmployee_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvEmployee.EditIndex = e.NewEditIndex;
            LoadGrid();
        }

        protected void gvEmployee_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvEmployee.EditIndex = -1;
            LoadGrid();
        }

        protected void gvEmployee_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(gvEmployee.DataKeys[e.RowIndex].Value);
            string connStr = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=dbERP;User ID=mh;Password=123456";
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string sql = "DELETE FROM [employeeInformation] WHERE Id = " + id;
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            conn.Close();

            LoadGrid();
        }
    }
}
