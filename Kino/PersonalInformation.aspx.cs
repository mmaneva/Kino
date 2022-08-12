using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kino
{
    public partial class PersonalInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["odbraniFilmovi"] == null)
            {
                Response.Redirect("MovieSelection.aspx");
            }

            Session["fullName"] = null;
            Session["email"] = null;
            Session["time"] = null;
            if(fullName != null && email != null && time != null)
            {
                buy.Enabled = true;
            }
        }

        protected void buy_Click(object sender, EventArgs e)
        {
            Session["fullName"] = fullName.Text;
            Session["email"] = email.Text;
            Session["time"] = time.Text;
            Response.Redirect("Receipt.aspx");
        }
    }
}