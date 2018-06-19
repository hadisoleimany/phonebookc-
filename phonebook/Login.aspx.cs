using phonebook.App_Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace phonebook
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lingtophonebookDataContext db = new lingtophonebookDataContext();
           var q= db.Users.SingleOrDefault(c => c.username == txtusername.Text && c.password == txtpassword.Text);

            if (q == null)
                return;
            iduser = q.Id;
            user = q.username;
            Response.Redirect("phonepage.aspx");
        }
        public static int iduser = 0;
        public static string user = "";
        protected void btnsignup_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnsaveuser_Click(object sender, EventArgs e)
        {

        }
    }
}