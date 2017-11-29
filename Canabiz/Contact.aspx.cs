using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Canabiz
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            String name = Request.Form["name"];
            string subject = Request.Form["subject"];
            String message = Request.Form["message"];
            try
            {
                //Create the msg object to be sent
                MailMessage msg = new MailMessage();
                //Add your email address to the recipients
                msg.To.Add("gusthegooseful@gmail.com");
                //Configure the address we are sending the mail from
                MailAddress address = new MailAddress("cannoisseurs111@gmail.com");
                msg.From = address;
                //Append their name in the beginning of the subject
                msg.Subject = name+ " : "+subject;
                msg.Body = message;

                //Configure an SmtpClient to send the mail.
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true; //only enable this if your provider requires it
                                            //Setup credentials to login to our sender email address ("UserName", "Password")
                NetworkCredential credentials = new NetworkCredential("cannoisseurs111@gmail.com", "Project12");
                client.Credentials = credentials;
                //Send the msg
                client.Send(msg);
            }catch
            {
                //message failed to send
            }

        }

    }
}