<%@ page import="com.authors.models.Author" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Authors Page</title>
    <!-- Add your CSS styles here -->
    <link rel="stylesheet" type="text/css" href="./css/styles.css">
</head>
<body>

<!-- Header -->
<header>
    <h1>Atypon</h1>
</header>

<h2>Authors Data:</h2>

<!-- Table -->
<table>
    <thead>
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Birth date</th>
        <th>Number of articles</th>
        <th>Field od study</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<Author> authorsList = (List<Author>) request.getAttribute("authorsList");
        for (Author author : authorsList) {
    %>
    <tr>
        <td><%= author.getName() %></td>
        <td><%= author.getEmail() %></td>
        <td><%= author.getBirthdate() %></td>
        <td><%= author.getNumOfArticles() %></td>
        <td><%= author.getFieldOfStudy() %></td>
        <!-- Additional columns -->
    </tr>
    <% } %>
    <tr><td colspan="5" style="border-color: transparent">
        <!-- Pagination Controls -->
        <%
            int currentPage = (int) request.getAttribute("currentPage");
            int totalPages = (int) request.getAttribute("totalPages");
        %>
        <div class="pagination" style="text-align: end">
            <% if (currentPage > 1) { %>
            <a href="?page=1">First</a>
            <a href="?page=<%= currentPage - 1 %>">Previous</a>
            <% } %>
            Page <%= currentPage %> of <%= totalPages %>
            <% if (currentPage < totalPages) { %>
            <a href="?page=<%= currentPage + 1 %>">Next</a>
            <a href="?page=<%= totalPages %>">Last</a>
            <% } %>
        </div>
    </td></tr>
    </tbody>
</table>



<!-- Export button -->
<div>
    <!-- ... existing content ... -->
    <form action="export" method="post">
        <button type="submit">Export to TSV</button>
    </form>
</div>


<!-- Footer -->
<footer>
    &copy; 2023 Atypon. All rights reserved.
</footer>

</body>
</html>