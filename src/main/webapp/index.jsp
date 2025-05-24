<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Currency Converter</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
<body class="bg-gradient-custom">
<div class="container d-flex justify-content-center align-items-center min-vh-100">
    <div class="card p-4 shadow-lg glass-card w-100" style="max-width: 550px;">
        <h2 class="text-center mb-4 text-primary-emphasis fw-bold">🌍 Currency Converter</h2>

        <form action="convert" method="post" class="form-animate">
            <div class="mb-3">
                <label class="form-label fw-semibold">Amount</label>
                <input type="number" name="amount" class="form-control" step="0.01" required>
            </div>

            <div class="row mb-3">
                <div class="col">
                    <label class="form-label fw-semibold">From:</label>
                    <select name="from" class="form-select">
                        <option>USD</option>
                        <option>EUR</option>
                        <option>INR</option>
                        <option>GBP</option>
                        <option>JPY</option>
                    </select>
                </div>
                <div class="col">
                    <label class="form-label fw-semibold">To:</label>
                    <select name="to" class="form-select">
                        <option>USD</option>
                        <option>EUR</option>
                        <option>INR</option>
                        <option>GBP</option>
                        <option>JPY</option>
                    </select>
                </div>
            </div>

            <button type="submit" class="btn btn-primary w-100 fw-bold">💱 Convert</button>
        </form>

        <!-- Show error -->
        <c:if test="${not empty error}">
            <div class="alert alert-danger mt-3">${error}</div>
        </c:if>

        <!-- Show result -->
        <c:if test="${not empty converted}">
            <div class="alert alert-success mt-3 text-center">
                <h4 class="fw-bold">Converted Amount:</h4>
                <h2>${converted} ${to}</h2>
            </div>
        </c:if>
    </div>
</div>
</body>
</html>
