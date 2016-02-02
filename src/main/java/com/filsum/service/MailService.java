package com.filsum.service;

import com.filsum.model.Participation;

import com.jcabi.log.Logger;
import freemarker.template.Template;
import freemarker.template.TemplateException;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.env.Environment;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

@Service
public class MailService {

    @Autowired
    private JavaMailSender mailSender;

    @Autowired
    private FreeMarkerConfigurer freeMarkerConfigurer;


    @Value(value = "${mail.sending.enabled}")
    private Boolean sendingEnabled;

    @Autowired
    private Environment env;


    public void sendParticpation(Participation participation)
            throws Exception {

        Map<String, Object> params = new HashMap<>();
        sendMail(new String[]{participation.getRunner().getEmail()}, "Teilnahme an Filsum Loeppt 2016", "mail/participation.ftl", params);
    }

    private void sendMail(final String[] to, final String subject, final String template, final Map<String, ?> params) {
        if (!sendingEnabled) {
            Logger.debug(this, "sending of mails disabled");
            return;
        }
        else {
            Logger.debug(this,"sending of mail enabled via server");
        }

        MimeMessagePreparator preparator = new MimeMessagePreparator() {

            public void prepare(MimeMessage mimeMessage) throws Exception {
                Logger.trace(this, "preparing mail...");

                MimeMessageHelper message = new MimeMessageHelper(mimeMessage, true, "UTF-8");
                message.setTo(to);
                message.setFrom(getFrom());
                message.setSubject(subject);

                String body = null;
                try {
                    Template freemarkerTemplate = freeMarkerConfigurer.getConfiguration().getTemplate(template);
                    body = FreeMarkerTemplateUtils.processTemplateIntoString(freemarkerTemplate, params);
                } catch (TemplateException | IOException e) {
                    Logger.error(this, e.getMessage());
                }

                message.setText(body, true);
            }
        };

        Logger.trace(this, "sending mail...");

        mailSender.send(preparator);
        Logger.trace(this, "sent mail.");
    }

    private InternetAddress getFrom() throws UnsupportedEncodingException {
        String fromMail = env.getProperty("mail.from.address");
        String fromName = env.getProperty("mail.from.name");
        return new InternetAddress(fromMail, fromName, "UTF-8");
    }



}
