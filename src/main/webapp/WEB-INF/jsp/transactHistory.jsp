<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/main.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300&family=Roboto:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" crossorigin="anonymous" />
    <link rel="stylesheet" href="../css/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../css/fontawesome/css/all.css">
    <script src="../js/bootstrap.bundle.js"></script>
    <title>Dashboard</title>
    <style>
        .table{
            border-radius: 20%;
        }
        .table th:not(:last-child),
        .table td:not(:last-child) {
            border-right: 1px solid #20566c;
        }
        .table tbody tr:hover {
            cursor: pointer;
        }
    </style>
</head>
<body style="background-color: rgb(211,217,226);">

    <!-- main header -->
    <c:import url="components/include/header.jsp" />
    <br>
    <!-- container start -->
    <div class="container">
        <!-- card: transaction history -->
        <div class="card">
            <div class="card-header">
                <i class="fa fa-credit-card me-2" aria-hidden="true"></i><b> Transaction History</b>
            </div>
            <div class="card-body">
                <c:if test="${requestScope.transact_history != null}">
                    <!-- Transaction History Table -->
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead class="thead-light">
                            <tr>
                                <th style="color: #ffe7b5; background-color: #869faf;">Transaction ID</th>
                                <th style="color: #ffe7b5; background-color: #869faf;">Transaction Type</th>
                                <th style="color: #ffe7b5; background-color: #869faf;">Amount</th>
                                <th style="color: #ffe7b5; background-color: #869faf;">Source</th>
                                <th style="color: #ffe7b5; background-color: #869faf;">Status</th>
                                <th style="color: #ffe7b5; background-color: #869faf;">Reason Code</th>
                                <th style="color: #ffe7b5; background-color: #869faf;">Created at</th>
                            </tr>
                            </thead>
                            <tbody>
                            <!-- loop through transaction history records -->
                            <c:forEach items="${requestScope.transact_history}" var="transactionHistory">
                                <tr>
                                    <td>${transactionHistory.transaction_id}</td>
                                    <td>${transactionHistory.transaction_type}</td>
                                    <td>${transactionHistory.amount}</td>
                                    <td>${transactionHistory.source}</td>
                                    <td>${transactionHistory.status}</td>
                                    <td>${transactionHistory.reason_code}</td>
                                    <td>${transactionHistory.created_at}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </c:if>
            </div>
        </div>
    </div>

    <!-- container end -->


<script src="../js/main.js"></script>
</body>
</html>
