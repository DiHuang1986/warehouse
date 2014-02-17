<%@ page import="com.ca.product.Picture" %>



<div class="fieldcontain ${hasErrors(bean: pictureInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="picture.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${pictureInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pictureInstance, field: 'path', 'error')} ">
	<label for="path">
		<g:message code="picture.path.label" default="Path" />
		
	</label>
	<g:textField name="path" value="${pictureInstance?.path}"/>
        <input type="file" name="picture" id="picture">
</div>

