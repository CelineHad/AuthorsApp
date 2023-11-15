package com.authors.controller;

import com.authors.dao.AuthorDAO;
import com.authors.models.Author;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

import static com.authors.constants.RequestConstants.*;

@WebServlet(name = "AuthorControllerServlet", urlPatterns = "/authors")
public class AuthorControllerServlet extends HttpServlet {
    private AuthorDAO authorDAO = new AuthorDAO();
    private static final int PAGE_SIZE = 10;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int currentPage = parseCurrentPage(request.getParameter(PAGE));
        int totalRecords = authorDAO.getTotalNumberOfRecordsInDataBase();
        int totalPages = (int) Math.ceil((double) totalRecords / PAGE_SIZE);

        List<Author> authorsList = authorDAO.getAuthorsPaginated(PAGE_SIZE, currentPage);

        request.setAttribute(AUTHORS_LIST, authorsList);
        request.setAttribute(CURRENT_PAGE, currentPage);
        request.setAttribute(TOTAL_PAGES, totalPages);

        request.getRequestDispatcher("/views/Authors.jsp").forward(request, response);
    }

    private int parseCurrentPage(String pageStr) {
        try {
            int page = Integer.parseInt(pageStr);
            return Math.max(page, 1);
        } catch (NumberFormatException e) {
            return 1;
        }
    }
}
