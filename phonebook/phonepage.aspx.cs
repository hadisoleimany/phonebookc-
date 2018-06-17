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

            grdContent.DataSource = db.tblphones.ToList();
            grdContent.DataBind();


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
            grdContent.DataSource = db.tblphones.ToList();
            grdContent.DataBind();
            txtid.Text = null;
            txtname.Text = txtfamily.Text = txtmobile.Text = txtphonenumber.Text = "";
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
        }
        public static int id = 0;
        protected void btndelete_Click(object sender, EventArgs e)
        {

            lingtophonebookDataContext db = new lingtophonebookDataContext();
            tblphone _phone = db.tblphones.SingleOrDefault(c => c.Id == id);
            db.tblphones.DeleteOnSubmit(_phone);
            db.SubmitChanges();
            grdContent.DataSource = db.tblphones.ToList();
            grdContent.DataBind();
            txtid.Text = null;
            txtname.Text = txtfamily.Text = txtmobile.Text = txtphonenumber.Text = "";
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            lingtophonebookDataContext db = new lingtophonebookDataContext();
            tblphone _phone = db.tblphones.SingleOrDefault(c => c.Id == id);


            _phone.name = txtname.Text;
            _phone.family = txtfamily.Text;
            _phone.mobile = txtmobile.Text;
            _phone.phonenumber = txtphonenumber.Text;

            db.SubmitChanges();
            grdContent.DataSource = db.tblphones.ToList();
            grdContent.DataBind();
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


            lingtophonebookDataContext db = new lingtophonebookDataContext();
            if (string.IsNullOrWhiteSpace(txtid.Text))
            { Page_Load(null, null); return; }
            grdContent.DataSource = db.tblphones.Where(c =>
            c.name.Contains(txtid.Text) ||
            c.family.Contains(txtid.Text) ||
            c.mobile.Contains(txtid.Text) ||
            c.phonenumber.Contains(txtid.Text)).ToList();
            grdContent.DataBind();
            txtid.Text = null;
            txtname.Text = txtfamily.Text = txtmobile.Text = txtphonenumber.Text = "";

        }

        protected void grdContent_SelectedIndexChanged(object sender, EventArgs e)
        {

            lingtophonebookDataContext db = new lingtophonebookDataContext();
            tblphone _phone = db.tblphones.SingleOrDefault(c => c.Id.ToString() == grdContent.SelectedRow.Cells[0].Text);
            id = _phone.Id;
            txtname.Text = _phone.name;
            txtfamily.Text = _phone.family;
            txtmobile.Text = _phone.mobile;
            txtphonenumber.Text = _phone.phonenumber;
            // grdContent.DataSource = db.tblphones.Where(c => c.Id.ToString() == txtid.Text).ToList();
            // grdContent.DataBind();
        }

        protected void grdContent_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            lingtophonebookDataContext db = new lingtophonebookDataContext();
            tblphone _phone = db.tblphones.SingleOrDefault(c => c.Id.ToString() == grdContent.Rows[e.RowIndex].Cells[0].Text);
            db.tblphones.DeleteOnSubmit(_phone);
            //  db.SubmitChanges();
            grdContent.DataSource = db.tblphones.ToList();
            grdContent.DataBind();
            txtid.Text = null;
            txtname.Text = txtfamily.Text = txtmobile.Text = txtphonenumber.Text = "";
        }

        protected void grdContent_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {

            var s = grdContent.SelectedRow.Cells[1];
        }

        protected void grdContent_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                int categoryID = Convert.ToInt32(e.CommandArgument);
            }
        }
    }

}