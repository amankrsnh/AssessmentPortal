/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QuizApp.dto;
import java.util.ArrayList;
/**
 *
 * @author my pc
 */
public class QuestionStore {
    ArrayList <Questions> qustionList;

    public QuestionStore() {
        qustionList=new ArrayList<>();
    }
    public Questions getQuestion(int pos){
        return qustionList.get(pos);
    }
    public ArrayList<Questions> getAllQuestions() {
        return qustionList;
    }
    public int getCount(){
        return qustionList.size();
    }

    @Override
    public String toString() {
        return "QuestionStore{" + "qustionList=" + qustionList + '}';
    }
}
