using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;


namespace BLL
{
    public class Email
    {
        public void enviar(Consulta cliente, string urlImagen)
        {
            try
            {
                MailMessage email = new MailMessage();
                email.To.Add(new MailAddress(cliente.email));
                email.To.Add(new MailAddress("solariumtcr@gmail.com"));

                email.From = new MailAddress("solariumtcr@gmail.com");

                email.Subject = "Gracias por contactar a Solarium Gaming";

                string html = "Gracias por contactar con Solarium Gaming";
                html += "Será un placer para nosotros responder a tus consultas";
                html += "<br>Pronto una persona se pondra en contacto contigo";
                html += "<br><b>Nombre Completo:</b>" + cliente.nombreCompleto;
                html += "<br><b>Email:</b>" + cliente.email;
                html += "<br><b>No olvides seguirnos en nuestras redes sociales!</b>";
                html += "<br><b>No responda este correo, fue generado automaticamente por la plataforma web de Solarium Gaming</b>";
                html += "<br><br> <img src='cid:imagen'/>";

                email.IsBodyHtml = true;

                email.Priority = MailPriority.Normal;

                Attachment item = new Attachment(urlImagen);

                AlternateView htmlView = AlternateView.CreateAlternateViewFromString(html, Encoding.UTF8, MediaTypeNames.Text.Html);

                LinkedResource img = new LinkedResource(urlImagen, MediaTypeNames.Image.Jpeg);
                img.ContentId = "imagen";

                htmlView.LinkedResources.Add(img);

                email.Attachments.Add(item);

                email.AlternateViews.Add(htmlView);

                SmtpClient smtp = new SmtpClient();

                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential("solariumtcr@gmail.com", "Valeria2703");

                smtp.Send(email);
                email.Dispose();
                smtp.Dispose();

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }//fin del enviar
    }//fin del Email
}//fin del bll
