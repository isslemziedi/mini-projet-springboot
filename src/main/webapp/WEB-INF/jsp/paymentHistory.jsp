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
        <!-- card: payment history -->
        <div class="card">
            <div class="card-header">
                <i class="fa fa-credit-card me-2" aria-hidden="true"></i><b> Payment History </b>
            </div>
            <div class="card-body">
                <c:if test="${requestScope.payment_history != null}">
                    <!-- Payment History Table -->
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead class="thead-light">
                            <tr>
                                <th style="color: #ffe7b5;background-color: #869faf;">Record Number</th>
                                <th style="color: #ffe7b5;background-color: #869faf;">Beneficiary Account Name</th>
                                <th style="color: #ffe7b5;background-color: #869faf;">Beneficiary Account Number</th>
                                <th style="color: #ffe7b5;background-color: #869faf;">Amount</th>
                                <th style="color: #ffe7b5;background-color: #869faf;">Status</th>
                                <th style="color: #ffe7b5;background-color: #869faf;">Reference</th>
                                <th style="color: #ffe7b5;background-color: #869faf;">Reason Code</th>
                                <th style="color: #ffe7b5;background-color: #869faf;">Created at</th>
                            </tr>
                            </thead>
                            <tbody>
                            <!-- loop through payment history records -->
                            <c:forEach items="${requestScope.payment_history}" var="payments">
                                <tr>
                                    <td>${payments.payment_id}</td>
                                    <td>${payments.beneficiary_name}</td>
                                    <td>${payments.beneficiary_acc_number}</td>
                                    <td>${payments.amount}</td>
                                    <td>${payments.status}</td>
                                    <td>${payments.reference_no}</td>
                                    <td>${payments.reason_code}</td>
                                    <td>${payments.created_at}</td>
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
