<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<h3 style="color:dodgerblue"><spring:message code="todo.caption" /></h3>
	<table class="table table-striped">
		<caption>My recommendations to you<br>
		</caption>
		<thead>
			<tr>
				<th>Description</th>
				<th>Date</th>
				<th>Completed</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.desc}</td>
					<td><fmt:formatDate pattern="dd/MM/yyyy"
							value="${todo.targetDate}" /></td>
					<td>${todo.done}</td>
					<td><a type="button" class="btn btn-primary"
						href="/update-todo?id=${todo.id}">Edit</a> 
						<a type="button" class="btn btn-default" 
						href="/delete-todo?id=${todo.id}">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<h5 style="color:gray">Please feel free to make any changes to this list.</h5>
	<div>
		<a type="button" class="btn btn-info" href="/add-todo">Add</a>
	</div>
</div>

<%@ include file="common/footer.jspf"%>