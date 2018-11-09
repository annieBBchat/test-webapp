<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
 
<body>
<div class="container">
    <h3 style="color:dodgerblue"><spring:message code="survey.caption" /></h3><br>
    <form:form method="POST" action="processSurvey" commandName="surveyForm">
        <form:errors path="*" cssClass="errorblock" element="div" />
    <table>

     <tr>
            <td><font style="color:gray">Name </font><font color="cyan">*</font></td>
            <td><form:input path="name" id="name"/></td>
            <td><form:errors path="name" cssClass="error"/></td>
        </tr>
      
        <tr>
            <td><font style="color:gray">Age</font></td>
            <td><form:input path="age" id="age"/></td>
            <td><form:errors path="age" cssClass="error"/></td>
        </tr>
 	
        <tr>
            <td><font style="color:gray">Are you </font><font color="cyan">*</font></td>
            <td>
                <form:radiobutton path="gender" value="M" label="Male" id="gender"/>
                <form:radiobutton path="gender" value="F" label="Female" id="gender"/>
                <form:radiobutton path="gender" value="O" label="Rather Not Say" id="gender"/>
            </td>
            <td><form:errors path="gender" cssClass="error"/></td>
        </tr>
 		
        <tr>
            <td><font style="color:gray">How are you feeling today ? </font><font color="cyan">*</font></td>
            <td><form:radiobuttons path="mood" items="${moodList}" /> </td>
            <td><form:errors path="mood" cssClass="error"/></td>
        </tr>

        <tr>
            <td><font style="color:gray">What is your stress level ? </font><font color="cyan">*</font></td>
            <td><form:radiobuttons path="stressLevel" items="${stressLevelList}" /></td>
            <td><form:errors path="stressLevel" cssClass="error"/></td>
        </tr>
        </table>
        <br><br>
        <input type="submit" />
        <p>
        	<br>
            <font color="cyan">*</font> <font style="color:gray"><i>Indicates Mandatory input</i></font>
        </p>
 
    </form:form>
</div>
</body>
</html>
</html>

</body>
</html>
</html>
<%@ include file="common/footer.jspf"%>