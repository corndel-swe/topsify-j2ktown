package org.example;

public class User {
    String id;
    String username;
    String first_name;
    String last_name;
    String email;
    String avatar;
    String password;

    public String getFirst_name() {
        return first_name.replace("'", "''");
    }

    public String getId() {
        return id;
    }

    public String getAvatar() {
        return avatar;
    }

    public String getLast_name() {
        return last_name.replace("'", "''");
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return username;
    }

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", username='" + username + '\'' +
                ", first_name='" + first_name + '\'' +
                ", last_name='" + last_name + '\'' +
                ", email='" + email + '\'' +
                ", avatar='" + avatar + '\'' +
                ", password='" + password + '\'' +
                '}';
    }

    // Getters and Setters
}

