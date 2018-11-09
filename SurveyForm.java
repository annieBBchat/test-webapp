package test.webapp.survey;

import org.hibernate.validator.constraints.NotEmpty;

public class SurveyForm {
    @NotEmpty
    private String name;
    private String age;
    @NotEmpty
    private String gender="M";
    @NotEmpty
    private String mood="";
    @NotEmpty
    private String stressLevel="";
 
    public String getStressLevel() {
        return stressLevel;
    }
    public void setStressLevel(String stressLevel) {
        this.stressLevel = stressLevel;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getAge() {
        return age;
    }
    public void setAge(String age) {
        this.age = age;
    }
    public String getGender() {
        return gender;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getMood() {
        return mood;
    }
    public void setMood(String mood) {
        this.mood = mood;
    }
 
}
