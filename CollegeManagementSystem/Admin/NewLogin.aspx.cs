using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeManagementSystem.Admin
{
    public partial class NewLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEnter_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/Main.aspx");
        }
    }
}