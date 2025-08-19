using System.Data;
using System.Data.SqlClient;

namespace HR.DAL
{
    public class EmployeeDAL
    {
        //Connection String for Database
        string connStr = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=dbERP;User ID=mh;Password=123456";


        //Show Employee
        public DataTable GetEmployees()
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string sql = "SELECT * FROM employeeInformation";
                SqlDataAdapter da = new SqlDataAdapter(sql, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }


        //Create Employee
        public void AddEmployee(string name, string jobTitle, string dept, string dob, string email, string phone, string address, string joinDate)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string sql = @"INSERT INTO employeeInformation
                               (Name, JobTitle, Department, DateOfBirth, Email, Phone, Address, JoinDate)
                               VALUES (@Name,@JobTitle,@Dept,@DOB,@Email,@Phone,@Address,@JoinDate)";

                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@JobTitle", jobTitle);
                cmd.Parameters.AddWithValue("@Dept", dept);
                cmd.Parameters.AddWithValue("@DOB", dob);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@JoinDate", joinDate);

                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }



        //Update Employee
        public void UpdateEmployee(int id, string name, string jobTitle, string dept, string dob, string email, string phone, string address, string joinDate)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string sql = @"UPDATE employeeInformation SET 
                               Name=@Name, JobTitle=@JobTitle, Department=@Dept, DateOfBirth=@DOB,
                               Email=@Email, Phone=@Phone, Address=@Address, JoinDate=@JoinDate
                               WHERE Id=@Id";

                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@JobTitle", jobTitle);
                cmd.Parameters.AddWithValue("@Dept", dept);
                cmd.Parameters.AddWithValue("@DOB", dob);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@JoinDate", joinDate);

                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }



        //Delete Employee
        public void DeleteEmployee(int id)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string sql = "DELETE FROM employeeInformation WHERE Id=@Id";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@Id", id);

                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}
