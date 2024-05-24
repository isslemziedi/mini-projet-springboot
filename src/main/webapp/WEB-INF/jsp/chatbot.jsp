<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SpringBoot Websocket Chat Application</title>
    <link rel="shortcut icon" type="x-icon" href="images/cni.jpg" >
    <link rel="stylesheet" href="../css/chatbot.css">
    <link rel="stylesheet" href="../css/main.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300&family=Roboto:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" crossorigin="anonymous" />
    <link rel="stylesheet" href="../css/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../css/fontawesome/css/all.css">
</head>
<body style="background-color: rgb(211,217,226);">

<!-- components start -->

<!-- main header -->
<c:import url="components/include/header.jsp" />

<!--  cards : start -->
<div id="username-page">
    <div class="username-page-container">
        <h3 class="title">Type Your Username To Enter The CNI-UFR Chatroom</h3>
        <form id="usernameForm" name="usernameForm" action="your_action_here" method="post">
            <div class="form-group">
                <input type="text" id="name" name="name" placeholder="Username" autocomplete="off" class="form-control" />
            </div>
            <div class="form-group">
                <button type="submit" class="accent username-submit">Start Chatting</button>
            </div>
        </form>
    </div>
</div>

<div id="chat-page" class="hidden">
    <div class="chat-container">
        <div class="chat-header">
            <h2> CNI-UFR Chatroom </h2>
        </div>
        <div class="connecting">
            Connecting...
        </div>
        <!-- automatically filled list with js -->
        <ul id="messageArea">

        </ul>

        <form id="messageForm" name="messageForm" action="your_action_here" method="post">
            <div class="form-group">
                <div class="input-group clearfix">
                    <input type="text" id="message" name="message" placeholder="Type a message..." autocomplete="off" class="form-control"/>
                    <button type="submit" class="primary">Send</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.4/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script src="../js/chatbot.js"></script>
</body>
</html>
