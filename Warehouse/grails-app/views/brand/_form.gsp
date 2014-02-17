<%@ page import="com.ca.product.Brand" %>



<div class="fieldcontain ${hasErrors(bean: brandInstance, field: 'brandName', 'error')} required">
	<label for="brandName">
		<g:message code="brand.brandName.label" default="Brand Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="brandName" required="" value="${brandInstance?.brandName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: brandInstance, field: 'comment', 'error')} ">
	<label for="comment">
		<g:message code="brand.comment.label" default="Comment" />
		
	</label>
	<g:textField name="comment" value="${brandInstance?.comment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: brandInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="brand.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${brandInstance?.description}"/>
</div>

