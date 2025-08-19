using System.Data;
using HR.DAL;

namespace HR.BAL
{
    public class EmployeeBAL
    {
        EmployeeDAL dal = new EmployeeDAL();

        public DataTable GetEmployees()
        {
            return dal.GetEmployees();
        }

        public void AddEmployee(string name, string jobTitle, string dept, string dob, string email, string phone, string address, string joinDate)
        {
            // Business Validation Example
            if (string.IsNullOrEmpty(name))
            {
                throw new System.Exception("Employee name is required");
            }

            dal.AddEmployee(name, jobTitle, dept, dob, email, phone, address, joinDate);
        }

        public void UpdateEmployee(int id, string name, string jobTitle, string dept, string dob, string email, string phone, string address, string joinDate)
        {
            dal.UpdateEmployee(id, name, jobTitle, dept, dob, email, phone, address, joinDate);
        }

        public void DeleteEmployee(int id)
        {
            dal.DeleteEmployee(id);
        }
    }
}
