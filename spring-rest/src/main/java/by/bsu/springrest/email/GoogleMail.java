package by.bsu.springrest.email;

import com.sun.mail.smtp.SMTPTransport;
import lombok.Builder;
import org.apache.logging.log4j.Level;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Date;
import java.util.Properties;

@Builder
public class GoogleMail {
    private static final Logger logger = LogManager.getLogger(GoogleMail.class);
    private static final String COMPANY_EMAIL = "mmf.inna@gmail.com";
    private static final String COMPANY_PASSWORD = "8982zfyutk";
    private String username;
    private String title;
    private String message;

    public GoogleMail(String username, String title, String message) {
        this.username = username;
        this.title = title;
        this.message = message;
    }

    public void sendMessage() {
        Properties sesiionConfig = GoogleMailProperties.getGoogleMailProperties();
        Session session = Session.getInstance(sesiionConfig);
        MimeMessage mimeMessage = new MimeMessage(session);
        try {
            mimeMessage.setFrom(new InternetAddress(username));
            mimeMessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse(COMPANY_EMAIL, false));
            mimeMessage.setSubject(title);
            mimeMessage.setText(message, "UTF-8");
            mimeMessage.setSentDate(new Date());
            try (SMTPTransport transport = (SMTPTransport) session.getTransport("smtps")) {
                transport.connect("smtp.gmail.com", COMPANY_EMAIL, COMPANY_PASSWORD);
                transport.sendMessage(mimeMessage, mimeMessage.getAllRecipients());
            }
        } catch (MessagingException e) {
            logger.log(Level.ERROR, "Error while trying to send message to enrollee: ", e);
        }
    }
}
