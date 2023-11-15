package com.authors.controller;

import com.authors.dao.AuthorDAO;
import com.authors.models.Author;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

@WebServlet(name = "ExportServlet", urlPatterns = "/export")
public class ExportServlet extends HttpServlet {
    private AuthorDAO authorDAO = new AuthorDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ExecutorService executor = Executors.newFixedThreadPool(2);
        try {
            Future<List<Author>> futureData = executor.submit(() -> authorDAO.getAuthors(200));
            Future<String> futureFile = executor.submit(() -> writeDataToTSV(futureData.get()));

            String fileContent = futureFile.get();
            response.setContentType("text/tab-separated-values");
            response.setHeader("Content-Disposition", "attachment; filename=\"authors.tsv\"");
            PrintWriter out = response.getWriter();
            out.print(fileContent);
            out.flush();
        } catch (Exception e) {
            throw new ServletException("Failed to export authors data", e);
        } finally {
            executor.shutdown();
        }
    }

    private String writeDataToTSV(List<Author> authors) {
        StringBuilder sb = new StringBuilder("Name\tEmail\tBirthDate\tNumOfArticles\tFieldOfStudy\n");
        for (Author author : authors) {
            sb.append(author.getName()).append("\t")
                    .append(author.getEmail()).append("\t")
                    .append(author.getEmail()).append("\t")
                    .append(author.getNumOfArticles()).append("\t")
                    .append(author.getFieldOfStudy()).append("\n");
        }
        return sb.toString();
    }
}
