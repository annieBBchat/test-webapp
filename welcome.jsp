<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div align="center" class="container">
	<h2 style="color:dodgerblue"><spring:message code="hello.message" /> ${name} 
		<spring:message code="bonjour.message" /> !
	</h2><br>
	<h3 style="color:gray"><spring:message code="welcome.message" /> </h3><br>
	<p style="color:gray"> The purpose of this application is to help you have a better day.<br>
	In a world filled with stress, we often forget that we have the possibility of being happy by making simple changes to our daily routine. <br>
	After filling out a quick survey, this application will give you a list of recommendations on how to make your day better. <br><br>
	Enjoy and don't forget to SMILE !!!</p>
	<br>

		<a type="button" class="btn btn-info" href="/loadSurveyPg">Start</a>

</div>

<%@ include file="common/footer.jspf"%>