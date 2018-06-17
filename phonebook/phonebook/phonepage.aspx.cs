using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using phonebook.App_Data;

namespace phonebook
{
    public partial class phonepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lingtophonebookDataContext db = new lingtophonebookDataContext();
            GridView1.DataSource = db.tblphones.ToList();
            GridView1.DataBind();
            
        }
        protected void btnsave_Click(object sender, EventArgs e)
        {
            lingtophonebookDataContext db = new lingtophonebookDataContext();
            tblphone _phone = new tblphone();

            _phone.name = txtname.Text;
            _phone.family = txtfamily.Text;
            _phone.mobile = txtmobile.Text;
            _phone.phonenumber = txtphonenumber.Text;
            db.tblphones.InsertOnSubmit(_phone);
            db.SubmitChanges();
            GridView1.DataSource = db.tblphones.ToList();
            GridView1.DataBind();
            txtid.Text = null;
            txtname.Text = txtfamily.Text = txtmobile.Text = txtphonenumber.Text = "";
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            lingtophonebookDataContext db = new lingtophonebookDataContext();
            if (string.IsNullOrWhiteSpace(txtsearch.Text))
                Page_Load(null,null);
            GridView1.DataSource = db.tblphones.Where(c => 
            c.name.Contains(txtsearch.Text) ||
            c.family.Contains(txtsearch.Text) ||
            c.mobile.Contains(txtsearch.Text) ||
            c.phonenumber.Contains(txtsearch.Text)).ToList();
            GridView1.DataBind();
            txtid.Text = null;
            txtname.Text = txtfamily.Text = txtmobile.Text = txtphonenumber.Text = "";
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {

            lingtophonebookDataContext db = new lingtophonebookDataContext();
            tblphone _phone = db.tblphones.SingleOrDefault(c => c.Id.ToString() == txtid.Text);
            db.tblphones.DeleteOnSubmit(_phone);
            db.SubmitChanges();
            GridView1.DataSource = db.tblphones.ToList();
            GridView1.DataBind();
            txtid.Text = null;
            txtname.Text = txtfamily.Text = txtmobile.Text = txtphonenumber.Text = "";
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            lingtophonebookDataContext db = new lingtophonebookDataContext();
            tblphone _phone = db.tblphones.SingleOrDefault(c => c.Id.ToString() == txtid.Text);


            _phone.name = txtname.Text;
            _phone.family = txtfamily.Text;
            _phone.mobile = txtmobile.Text;
            _phone.phonenumber = txtphonenumber.Text;

            db.SubmitChanges();
            GridView1.DataSource = db.tblphones.ToList();
            GridView1.DataBind();
            txtid.Text = null;
            txtname.Text = txtfamily.Text = txtmobile.Text = txtphonenumber.Text = "";
        }

        protected void txtsearch0_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void txtphonenumber0_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnsearchid_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtid.Text))
                return;
            lingtophonebookDataContext db = new lingtophonebookDataContext();
            tblphone _phone = db.tblphones.SingleOrDefault(c => c.Id.ToString() == txtid.Text);

            txtname.Text = _phone.name;
            txtfamily.Text = _phone.family;
            txtmobile.Text = _phone.mobile;
            txtphonenumber.Text = _phone.phonenumber;
            GridView1.DataSource = db.tblphones.Where(c => c.Id.ToString() == txtid.Text).ToList();
            GridView1.DataBind();
        }
    }

}