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
            divid.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {
            signid.Visible = false;
            divid.Visible = true;
        }

        protected void btnsaveuser_Click(object sender, EventArgs e)
        {

        }
    }
}