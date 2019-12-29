using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab5_NguyenThanhHieu
{
    public partial class Home : System.Web.UI.Page
    {
        EmployeeSystemEntities empE = new EmployeeSystemEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Emp> ListEmp = empE.Emps.ToList();
            this.StudentData.DataSource = null;
            this.StudentData.DataSource = ListEmp;
            this.StudentData.DataBind();
        }
        public void delete(int id)
        {
            Emp deleteEmp = new Emp();
            deleteEmp = empE.Emps.Find(id);
            empE.Emps.Remove(deleteEmp);
            empE.SaveChanges();
        }

        protected void StudentData_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(StudentData.SelectedDataKey.Value.ToString());
            Emp selectEmp = new Emp();
            selectEmp = empE.Emps.Find(id);
            txtID.Text = id.ToString();
            txtAddress.Text = selectEmp.Address;
            txtEmail.Text = selectEmp.Email;
            txtName.Text = selectEmp.Name;
            txtPhone.Text = selectEmp.Phone.ToString();
            txtYoe.Text = selectEmp.Yoe.ToString();
            //txtDob.Text = Convert.ToString(selectEmp.Dob);
            //txtDoj.Text = selectEmp.Doj.ToString();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int id = int.Parse(StudentData.SelectedDataKey.Value.ToString());
            Emp updateEmp = new Emp();
            updateEmp = empE.Emps.Find(id);
            updateEmp.Name = txtName.Text;
            updateEmp.Phone = int.Parse(txtPhone.Text);
            updateEmp.Yoe = int.Parse(txtYoe.Text);
            updateEmp.Email = txtEmail.Text;
            updateEmp.Address = txtAddress.Text;
            updateEmp.Dob = Convert.ToDateTime(txtDob.Text);
            updateEmp.Doj = Convert.ToDateTime(txtDoj.Text);
            empE.SaveChanges();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int id = int.Parse(StudentData.SelectedDataKey.Value.ToString());
            Emp deleteEmp = new Emp();
            deleteEmp = empE.Emps.Find(id);
            empE.Emps.Remove(deleteEmp);
            empE.SaveChanges();
        }
    }
}