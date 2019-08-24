using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeManagementSystem
{
    public partial class Template : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnPrevious_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/Main.aspx");
        }

        protected void BtnNext_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/Record.aspx");
        }
    }
}