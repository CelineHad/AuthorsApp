package com.authors.dao;

import com.authors.util.DBConnection;
import com.authors.models.Author;
import com.authors.enums.FieldOfStudy;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import static com.authors.constants.DataBaseConstants.*;

public class AuthorDAO {
    private DBConnection dbConnection = DBConnection.getInstance();

    public AuthorDAO() {
    }

    public int getTotalNumberOfRecordsInDataBase() {
        String query = "SELECT COUNT(*) FROM author";
        try (Connection connection = dbConnection.makeConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {

            resultSet.next();
            return resultSet.getInt(1);

        } catch (SQLException e) {
            throw new RuntimeException("Error accessing database", e);
        }
    }

    public List<Author> getAuthors(int limit) {
        List<Author> authors = new ArrayList<>();
        String query = "SELECT TOP (?) * FROM author";

        try (Connection connection = dbConnection.makeConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setInt(1, limit);

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    authors.add(extractAuthorFromResultSet(resultSet));
                }
            }

        } catch (SQLException e) {
            throw new RuntimeException("Error accessing database", e);
        }

        return authors;
    }

    public List<Author> getAuthorsPaginated(int pageSize, int pageNumber) {
        List<Author> authors = new ArrayList<>();
        String query = "SELECT * FROM author ORDER BY id OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";

        try (Connection connection = dbConnection.makeConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setInt(1, (pageNumber - 1) * pageSize);
            preparedStatement.setInt(2, pageSize);

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    authors.add(extractAuthorFromResultSet(resultSet));
                }
            }

        } catch (SQLException e) {
            throw new RuntimeException("Error accessing database", e);
        }

        return authors;
    }

    private Author extractAuthorFromResultSet(ResultSet resultSet) throws SQLException {
        int id = resultSet.getInt(ID);
        String name = resultSet.getString(NAME);
        String email = resultSet.getString(EMAIL);
        Date birthDate = resultSet.getDate(BIRTH_DATE);
        int articlesNum = resultSet.getInt(ARTICLES_NUM);
        FieldOfStudy fieldOfStudy = FieldOfStudy.getByIndex(resultSet.getInt(FILED_OF_STUDY));

        return new Author(id, name, email,birthDate, articlesNum, fieldOfStudy);
    }
}
