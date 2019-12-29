using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab5_NguyenThanhHieu
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            EmployeeSystemEntities employeeSystem = new EmployeeSystemEntities();
            Emp newEmp = new Emp();
            newEmp.Name = txtName.Text;
            newEmp.Dob = Convert.ToDateTime(txtDob.Text);
            newEmp.Address = txtAddress.Text;
            newEmp.Yoe = int.Parse(txtYoe.Text);
            newEmp.Phone = int.Parse(txtPhone.Text);
            newEmp.Email = txtEmail.Text;
            newEmp.Doj = Convert.ToDateTime(txtDoj.Text);
            employeeSystem.Emps.Add(newEmp);
            employeeSystem.SaveChanges();
        }

        
    }
}