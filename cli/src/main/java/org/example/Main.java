package org.example;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import java.io.File;
import java.util.List;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {

    public static void queryWriter() throws IOException {

        Path file = Paths.get("reports","users.json");
        String json = Files.readString(file);

        ObjectMapper objectMapper = new ObjectMapper();
        List<User> users = objectMapper.readValue(json, new TypeReference<List<User>>() {});
        System.out.println(users.get(0).toString());

        StringBuilder allQueries = new StringBuilder();

        // Iterate over the list of users
        for (User user : users) {
            // Initialize the insertQuery for each user
            String insertQuery = String.format("INSERT INTO users VALUES('%s', '%s', '%s', '%s', '%s', '%s');",
                    user.getId(),  // Use %s for String
                    user.getUsername(),
                    user.getFirst_name(),
                    user.getLast_name(),
                    user.getEmail(),
                    user.getAvatar());

            // Append the formatted query to allQueries
            allQueries.append(insertQuery).append("\n"); // Append a new line for readability
        }

        // Write the SQL queries to a file
        try {
            Files.writeString(Paths.get("users.sql"), allQueries.toString());
            System.out.println("SQL statements written to users.sql");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }






    public static void main(String[] args) throws IOException {
        queryWriter();
    }
}
