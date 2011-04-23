using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace ac.web
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MailMessage mail = new MailMessage();
                mail.IsBodyHtml = true;
                mail.To.Add(new MailAddress("cpekiner@nvidia.com"));
                mail.To.Add(new MailAddress("azinmoali@gmail.com"));
                mail.From = new MailAddress("azinandcenk@gmail.com");
                mail.Subject = String.Format("Someone viewed the page at {0}.", DateTime.Now);
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                System.Net.NetworkCredential nc = new System.Net.NetworkCredential("azinandcenk@gmail.com", "hophophop");
                client.Credentials = nc;
                client.Send(mail);
            }
        }
    }
}