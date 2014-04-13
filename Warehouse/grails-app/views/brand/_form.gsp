<%@ page import="com.ca.product.Brand" %>



<div class="fieldcontain ${hasErrors(bean: brandInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="brand.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${brandInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: brandInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="brand.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${brandInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: brandInstance, field: 'comment', 'error')} ">
	<label for="comment">
		<g:message code="brand.comment.label" default="Comment" />
		
	</label>
	<g:textField name="comment" value="${brandInstance?.comment}"/>
</div>

