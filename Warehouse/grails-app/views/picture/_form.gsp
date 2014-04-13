<%@ page import="com.ca.product.Picture" %>



<div class="fieldcontain ${hasErrors(bean: pictureInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="picture.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${pictureInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pictureInstance, field: 'path', 'error')} ">
	<label for="path">
		<g:message code="picture.path.label" default="Path" />
		
	</label>
	<g:textField name="path" value="${pictureInstance?.path}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pictureInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="picture.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${pictureInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pictureInstance, field: 'tags', 'error')} ">
	<label for="tags">
		<g:message code="picture.tags.label" default="Tags" />
		
	</label>
	<g:select name="tags" from="${com.ca.product.Tag.list()}" multiple="multiple" optionKey="id" size="5" value="${pictureInstance?.tags*.id}" class="many-to-many"/>
</div>

