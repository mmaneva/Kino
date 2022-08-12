using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kino
{
    public partial class Receipt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["fullName"] == null || Session["email"] == null)
            {
                Response.Redirect("PersonalInformation.aspx");
            }

            Random random = new Random();
            receiptId.Text= "Receipt Id:" + random.Next().ToString();

            ListBox lista = (ListBox)Session["odbraniFilmovi"];
            foreach(ListItem item in lista.Items)
            {
                selectedMovieList1.Items.Add(item);
            }
     
            string pukanki = Session["pukanki"].ToString();
            int cenaPukanki = Int32.Parse(Session["pukankiCena"].ToString());
            if(pukanki == null)
            {
                withPopcorn.Text = "Нема пуканки";
            }else if(pukanki == "small")
            {
                withPopcorn.Text = "Избравте мали пуканки";
            }
            else if (pukanki == "medium")
            {
                withPopcorn.Text = "Избравте средни пуканки";
            }
            else
            {
                withPopcorn.Text = "Избравте големи пуканки";
            }
            time.Text = Session["time"].ToString();
            int total = 0;
            foreach(ListItem item in selectedMovieList1.Items)
            {
                total += Int32.Parse(item.Value);
            }

            total += cenaPukanki;

            totalValue.Text = total.ToString();
        }

        protected void newReservation_Click(object sender, EventArgs e)
        {
            selectedMovieList1.Items.Clear();
            Response.Redirect("MovieSelection.aspx");
        }
    }
}