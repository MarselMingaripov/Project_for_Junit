package ru.min.junit.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class User {

    private String login;
    private String email;

    public User(String login, String email) {
        if (!login.equals(email)) {
            this.login = login;
        } else {
            throw new IllegalArgumentException();
        }
        if (email.contains("@") && email.contains(".")) {
            this.email = email;
        } else {
            throw new IllegalArgumentException();
        }
    }
}
