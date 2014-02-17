
<%@ page import="com.ca.product.MerchandiseType" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'merchandiseType.label', default: 'MerchandiseType')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-merchandiseType" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-merchandiseType" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list merchandiseType">
			
				<g:if test="${merchandiseTypeInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="merchandiseType.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:fieldValue bean="${merchandiseTypeInstance}" field="category"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${merchandiseTypeInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="merchandiseType.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${merchandiseTypeInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${merchandiseTypeInstance?.feature}">
				<li class="fieldcontain">
					<span id="feature-label" class="property-label"><g:message code="merchandiseType.feature.label" default="Feature" /></span>
					
						<span class="property-value" aria-labelledby="feature-label"><g:fieldValue bean="${merchandiseTypeInstance}" field="feature"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${merchandiseTypeInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="merchandiseType.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${merchandiseTypeInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:merchandiseTypeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${merchandiseTypeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
