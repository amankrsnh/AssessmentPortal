/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QuizApp.dao;

/**
 *
 * @author my pc
 */
public class User_scores {
    String name;
    String email;
    int Score;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getScore() {
        return Score;
    }

    public void setScore(int Score) {
        this.Score = Score;
    }

    public User_scores(String name, String email, int Score) {
        this.name = name;
        this.email = email;
        this.Score = Score;
    }

    public User_scores() {
    }
    
    
}
