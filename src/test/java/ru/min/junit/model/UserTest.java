package ru.min.junit.model;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class UserTest {

    public static final String LOGIN = "login";
    public static final String EMAIL = "email@email.com";
    User user;
    User user1;

    @BeforeEach
    void init(){
        user = new User(LOGIN, EMAIL);
        user1 = new User();
    }

    @Test
    void checkNotEmptyParametersInEntityFields(){
        assertEquals(LOGIN, user.getLogin());
        assertEquals(EMAIL, user.getEmail());
    }

    @Test
    void checkEmptyParametersInEntityFields(){
        assertNull(user1.getLogin());
        assertNull(user1.getEmail());
    }

    @Test
    void checkEmailIsCorrect(){
        assertTrue(user.getEmail().contains("@"));
        assertTrue(user.getEmail().contains("."));
    }

    @Test
    void checkLoginAndEmailIsNotEquals(){
        assertFalse(user.getEmail().equals(user.getLogin()));
    }

}