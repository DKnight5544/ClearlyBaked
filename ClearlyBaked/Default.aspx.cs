using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClearlyBaked
{
    public partial class Default : System.Web.UI.Page
    {
        const string DomainName = "ClearlyBaked.com";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string email;

                if (Request.QueryString.Count > 0) email = HttpUtility.UrlDecode(Request.QueryString[0]);
                else email = "dave@mostlyspam.com";

                this.ReferredBy.Value = email;
            }
            else
            {
                string refby = this.ReferredBy.Value;
                string potBuyer = this.PotentialBuyer.Value;

                if (string.IsNullOrWhiteSpace(potBuyer)) this.Feedback.InnerText = "Please enter your email or phone number.";
                else if (potBuyer == refby) this.Feedback.InnerText = "You cannot refer yourself.";

                else
                {
                    string connStr = Environment.GetEnvironmentVariable("DWKDBConnectionString");
                    using (DomainSalesDataContext c = new DomainSalesDataContext(connStr))
                    {
                        c.AddPotentialBuyer(DomainName, potBuyer, refby);
                    }
                    this.Feedback.InnerText = "Thanks!  We will be in touch soon.";
                }
            }
        }

    }
}