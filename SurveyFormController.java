package test.webapp.survey;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import test.webapp.survey.SurveyForm;
 
@Controller
public class SurveyFormController {
 
    @ModelAttribute("moodList")
    public ArrayList getMoodList()
    {
        ArrayList < String> moodList = new ArrayList<String>();
        moodList.add("Sad");
        moodList.add("Worried");
        moodList.add("Angry");
        moodList.add("Nervous");
        moodList.add("Happy");
        moodList.add("Excited");
        moodList.add("In Love");
 
        return moodList;
    }   

    @ModelAttribute("stressLevelList")
    public Map stressLevelList()
    {
        Map <String, String> stressLevelList = new HashMap<String, String>();
        stressLevelList.put("1","Very Low");
        stressLevelList.put("2","Low");
        stressLevelList.put("3","Moderate");
        stressLevelList.put("4","More Than Average");
        stressLevelList.put("5","High");
        stressLevelList.put("6","Very High");
        stressLevelList.put("7","Off The Roof!");
 
        return stressLevelList;
    }  
 
    @RequestMapping(value = "/loadSurveyPg", method = RequestMethod.GET)
    public String loadSurveyPg(@ModelAttribute("surveyForm") SurveyForm surveyForm,Model model) {
       model.addAttribute("surveyForm", surveyForm);   
       return "survey";
     }
 
    @RequestMapping(value = "/processSurvey", method = RequestMethod.POST)
    public String processSurvey(@Valid @ModelAttribute("surveyForm") SurveyForm surveyForm,BindingResult result,Model model,HttpSession session) throws ParseException {
    
	   if (result.hasErrors()) {
          System.out.println("validation error occured in survey form");
          return "survey";
       }
       // Processing and Storing data in the database.
       // To be implemented at a later date

       return "redirect:/todo-list";
   }
 
}
