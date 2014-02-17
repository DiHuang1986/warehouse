<%@ page import="com.ca.product.MerchandiseType" %>



<div class="fieldcontain ${hasErrors(bean: merchandiseTypeInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="merchandiseType.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="category" from="${com.ca.common.Category?.values()}" keys="${com.ca.common.Category.values()*.name()}" required="" value="${merchandiseTypeInstance?.category?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: merchandiseTypeInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="merchandiseType.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${merchandiseTypeInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: merchandiseTypeInstance, field: 'feature', 'error')} ">
	<label for="feature">
		<g:message code="merchandiseType.feature.label" default="Feature" />
		
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: merchandiseTypeInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="merchandiseType.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${merchandiseTypeInstance?.name}"/>
</div>

