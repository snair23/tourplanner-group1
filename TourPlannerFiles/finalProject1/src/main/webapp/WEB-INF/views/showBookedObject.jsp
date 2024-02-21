 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
    import="java.util.List,
            com.expleo.finalProject1.entity.Bookings"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Display Booking Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Package Details</h2>
        <table>
            <thead>
                <tr>
                    <th>Group ID</th>
                    <th>Package ID</th>
                    <th>Start Date</th>
                    <th>Total Cost</th>
                </tr>
            </thead>
            <tbody>
                        <tr>
                            <td>${gid}</td>
                            <td>${pid}</td>
                            <td>${dte}</td>
                            <td>${cst}</td>
                        </tr>
            </tbody>
        </table>
    </div>
</body>
</html>