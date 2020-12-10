/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Model;

/**
 *
 * @author dwije
 */
public class QuestionModel {
    
   int QuestionID;
   int PaperID;
   String Question;
   int Type;
   int Marks;

    public int getQuestionID() {
        return QuestionID;
    }

    public void setQuestionID(int QuestionID) {
        this.QuestionID = QuestionID;
    }

    public int getPaperID() {
        return PaperID;
    }

    public void setPaperID(int PaperID) {
        this.PaperID = PaperID;
    }

    public String getQuestion() {
        return Question;
    }

    public void setQuestion(String Question) {
        this.Question = Question;
    }

    public int getType() {
        return Type;
    }

    public void setType(int Type) {
        this.Type = Type;
    }

    public int getMarks() {
        return Marks;
    }

    public void setMarks(int Marks) {
        this.Marks = Marks;
    }
   
   
   
   
}
