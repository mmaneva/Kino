using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kino
{
    public partial class MovieSelection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["odbraniFilmovi"] = null;
            Session["pukanki"] = null;
            if(selectedMoviesList.Items != null)
            {
                enterInfo.Enabled = true;
            }
        }

        protected void enterInfo_Click(object sender, EventArgs e)
        {
            Session["odbraniFilmovi"] = selectedMoviesList;
            Session["pukanki"] = snacks.SelectedItem;
            Session["pukankiCena"] = snacks.SelectedValue;
            if(selectedMoviesList.Items.Count != 0)
            {
                enterInfo.Enabled = true;
                Response.Redirect("PersonalInformation.aspx");
            }
            
        }

        protected void movieList_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach(ListItem item in movieList.Items)
            {
                if (item.Selected)
                {
                    selectedMoviesList.Items.Add(item);
                }
            }
        }
    }
}