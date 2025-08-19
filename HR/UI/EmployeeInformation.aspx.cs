using HR.BAL;
using System;
using System.Web.UI.WebControls;

namespace HR.UI
{
    public partial class EmployeeInformation : System.Web.UI.Page
    {
        // BAL object create করা হলো
        EmployeeBAL bal = new EmployeeBAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadGrid();
            }
        }

        // Add Employee
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            bal.AddEmployee(
                txtName.Text,
                txtJobTitle.Text,
                ddlDepartment.SelectedItem.Text,
                txtDOB.Text,
                txtEmail.Text,
                txtPhone.Text,
                txtAddress.Text,
                txtJoinDate.Text
            );

            LoadGrid();


            //Clear input after data add
            ResetForm();


        }
        private void ResetForm()
        {
            txtName.Text = string.Empty;
            txtJobTitle.Text = string.Empty;
            ddlDepartment.SelectedIndex = 0; // প্রথম অপশন সিলেক্ট হবে (যেমন "Select department")
            txtDOB.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtPhone.Text = string.Empty;
            txtAddress.Text = string.Empty;
            txtJoinDate.Text = string.Empty;
        }


        // Show Data
        protected void btnshow_Click(object sender, EventArgs e)
        {
            LoadGrid();
        }

        // Grid Load
        private void LoadGrid()
        {
            gvEmployee.DataSource = bal.GetEmployees();
            gvEmployee.DataBind();
        }

        // Edit Mode on
        protected void gvEmployee_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvEmployee.EditIndex = e.NewEditIndex;
            LoadGrid();
        }

        // Update Employee
        protected void gvEmployee_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(gvEmployee.DataKeys[e.RowIndex].Value);

            string name = ((TextBox)gvEmployee.Rows[e.RowIndex].FindControl("txtEditName")).Text;
            string jobTitle = ((TextBox)gvEmployee.Rows[e.RowIndex].FindControl("txtEditJobTitle")).Text;
            string dept = ((TextBox)gvEmployee.Rows[e.RowIndex].FindControl("txtEditDept")).Text;
            string dob = ((TextBox)gvEmployee.Rows[e.RowIndex].FindControl("txtEditDOB")).Text;
            string email = ((TextBox)gvEmployee.Rows[e.RowIndex].FindControl("txtEditEmail")).Text;
            string phone = ((TextBox)gvEmployee.Rows[e.RowIndex].FindControl("txtEditPhone")).Text;
            string address = ((TextBox)gvEmployee.Rows[e.RowIndex].FindControl("txtEditAddress")).Text;
            string joinDate = ((TextBox)gvEmployee.Rows[e.RowIndex].FindControl("txtEditJoinDate")).Text;

            bal.UpdateEmployee(id, name, jobTitle, dept, dob, email, phone, address, joinDate);

            gvEmployee.EditIndex = -1;
            LoadGrid();
        }

        // Cancel Edit
        protected void gvEmployee_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvEmployee.EditIndex = -1;
            LoadGrid();
        }

        // Delete Employee
        protected void gvEmployee_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(gvEmployee.DataKeys[e.RowIndex].Value);
            bal.DeleteEmployee(id);
            LoadGrid();
        }
    }
}
