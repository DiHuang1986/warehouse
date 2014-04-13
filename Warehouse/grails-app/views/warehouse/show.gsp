
<%@ page import="com.ca.warehouse.Warehouse" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'warehouse.label', default: 'Warehouse')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-warehouse" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-warehouse" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list warehouse">
			
				<g:if test="${warehouseInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="warehouse.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${warehouseInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${warehouseInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="warehouse.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:link controller="country" action="show" id="${warehouseInstance?.country?.id}">${warehouseInstance?.country?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${warehouseInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="warehouse.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${warehouseInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${warehouseInstance?.active}">
				<li class="fieldcontain">
					<span id="active-label" class="property-label"><g:message code="warehouse.active.label" default="Active" /></span>
					
						<span class="property-value" aria-labelledby="active-label"><g:formatBoolean boolean="${warehouseInstance?.active}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${warehouseInstance?.entries}">
				<li class="fieldcontain">
					<span id="entries-label" class="property-label"><g:message code="warehouse.entries.label" default="Entries" /></span>
					
						<g:each in="${warehouseInstance.entries}" var="e">
						<span class="property-value" aria-labelledby="entries-label"><g:link controller="warehouseEntry" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:warehouseInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${warehouseInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
