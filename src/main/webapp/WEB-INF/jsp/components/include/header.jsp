<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!-- main page header -->
<header class="main-page-header mb-3" style="background-color: #869faf; color: white;" >
    <div class="container d-flex align-items-center">
        <div class="company-name">
            UFR-CNI
        </div>
        <nav class="navigation">
            <li><a href="/app/dashboard">Dashboard</a></li>
            <li><a href="/app/trainers">Trainers</a></li>
            <li><a href="/app/courses">Courses</a></li>
            <li><a href="/app/payment_history">Payment History</a></li>
            <li><a href="/app/transact_history">Transaction History</a></li>
            <li><a href="/app/chatbot">CourseBotService</a></li>
        </nav>
        <div class="display-name ms-auto text-white" >
            <i class="fa fa-check me-2 shadow-sm"></i> Welcome : <span>${user.first_name} ${user.last_name}</span>
        </div>
        <a href="/logout" class="btn btn-sm text-white ms-3">
            <i class="fa fa-arrow-right-from-bracket me-2"></i> Sign out
        </a>

    </div>

</header>
<!-- end of main page header -->