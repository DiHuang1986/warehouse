<%@ page import="com.ca.product.Color" %>



<div class="fieldcontain ${hasErrors(bean: colorInstance, field: 'colorCode', 'error')} ">
	<label for="colorCode">
		<g:message code="color.colorCode.label" default="Color Code" />
		
	</label>
	<g:textField name="colorCode" value="${colorInstance?.colorCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: colorInstance, field: 'comment', 'error')} ">
	<label for="comment">
		<g:message code="color.comment.label" default="Comment" />
		
	</label>
	<g:textField name="comment" value="${colorInstance?.comment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: colorInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="color.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${colorInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: colorInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="color.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${colorInstance?.name}"/>
</div>

