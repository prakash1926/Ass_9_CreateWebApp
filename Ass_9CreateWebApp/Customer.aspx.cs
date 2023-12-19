using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ass_9CreateWebApp
{
    public partial class Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            LblInfo.Visible = true;

        }

        protected void CustomValidator1_ServerValidate(object source, System.Web.UI.WebControls.ServerValidateEventArgs args)
        {
           
            args.IsValid = TxtName.Text.Length >= 6;
        }

        protected void BtnReg_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
               
                LblInfo.Text = "Registration Done !!! " + GetCompleteInformation();
                LblInfo.Visible = true;
            }
        }

        private string GetCompleteInformation()
        {

            return $"Customer Name: {TxtName.Text}<br/>" +
                   $"Customer Mobile: {TxtMobile.Text}<br/>" +
                   $"Email: {TxtEmail.Text}";
        }
    }
}