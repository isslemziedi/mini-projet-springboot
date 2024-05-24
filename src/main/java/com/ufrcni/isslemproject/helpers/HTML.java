package com.ufrcni.isslemproject.helpers;

public class HTML {

    public static String htmlEmailTemplate(String token, String code){
        //verify account url
        String url = "http://127.0.0.1:8070/verify?token=" + token + "&code=" + code ;
        String emailTemplate ="<!DOCTYPE html>\n" +
                "<html lang='en'>\n" +
                "<head>\n" +
                "    <meta charset='UTF-8'>\n" +
                "    <meta name='viewport' content='width=device-width, initial-scale=1.0'>\n" +
                "    <!--  <link rel='stylesheet' href='css/email.css'>  -->\n" +
                "    <link rel='preconnect' href='https://fonts.googleapis.com'>\n" +
                "    <link rel='preconnect' href='https://fonts.gstatic.com' crossorigin>\n" +
                "    <link href='https://fonts.googleapis.com/css2?family=Comfortaa:wght@300&family=Roboto:wght@300;400&display=swap' rel='stylesheet'>\n" +
                "    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css' crossorigin='anonymous' />\n" +
                "    <link rel=\"stylesheet\" href=\"css/fontawesome/fontawesome.css\">\n" +
                "    <style>\n" +
                "        *{\n" +
                "            box-sizing: border-box;\n" +
                "            font-family: Comfortaa;\n" +
                "        }\n" +
                "\n" +
                "        body{\n" +
                "            height: 100vh;\n" +
                "            background-color: rgb(211,217,226);\n" +
                "            display: flex;\n" +
                "            align-items: center;\n" +
                "            justify-content: center;\n" +
                "        }\n" +
                "\n" +
                "        .wrapper{\n" +
                "            width: 550px;\n" +
                "            height: auto;\n" +
                "            padding: 15px;\n" +
                "            background-color: white;\n" +
                "            border-radius: 7px;\n" +
                "        }\n" +
                "\n" +
                "        .email-msg-header{\n" +
                "            text-align: center;\n" +
                "        }\n" +
                "\n" +
                "        .company-name{\n" +
                "            text-align: center;\n" +
                "            font-weight: bold;\n" +
                "            font-size: xx-large;\n" +
                "            color: #3E6074;\n" +
                "        }\n" +
                "\n" +
                "        .welcome-text{\n" +
                "            text-align: center;\n" +
                "        }\n" +
                "\n" +
                "        .verify-account-btn{\n" +
                "            background-color: #3E6074;\n" +
                "            border: 1px solid #3e352c;\n" +
                "            padding: 10px;\n" +
                "            width: 200px;\n" +
                "            color: white;\n" +
                "            box-shadow: 0px 3px 6px rgb(0,14,53);\n" +
                "            text-decoration: none;\n" +
                "            border-radius: 5px;\n" +
                "        }\n" +
                "\n" +
                "        .copy-right{\n" +
                "            padding: 15px;\n" +
                "            font-size: 14px;\n" +
                "            margin: 20px 0px;\n" +
                "            display:flex;\n" +
                "            align-items: center;\n" +
                "            justify-content: center;\n" +
                "        }\n" +
                "    </style>\n" +
                "    <title>Email</title>\n" +
                "</head>\n" +
                "<body>\n" +
                "<div class='wrapper'>\n" +
                "    <h3 class='email-msg-header'>\n" +
                "        Welcome and Thank You for Choosing\n" +
                "        <br>\n" +
                "        <br>\n" +
                "    </h3>\n" +
                "    <div class='company-name'> UFR-CNI </div>\n" +
                "    <hr>\n" +
                "    <p class='welcome-text'>\n" +
                "        Your Account has been registered, please click below to verify your account\n" +
                "    </p>\n" +
                "    <br>\n" +
                "    <br>\n" +
                "    <div style=\"text-align: center;\"><a href='"+ url +"' class='verify-account-btn' role='button'>Verify Account</a></div>\n" +
                "\n" +
                "    <div class='copy-right'  style=\"color: #3E6074;\">&copy Right 2024. All Rights Reserved.</div>\n" +
                "</div>\n" +
                "\n" +
                "</body>\n" +
                "</html>";
        return emailTemplate;
    }
}
