
<%@ page import="com.ca.warehouse.WarehouseEntry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'warehouseEntry.label', default: 'WarehouseEntry')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-warehouseEntry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-warehouseEntry" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list warehouseEntry">
			
				<g:if test="${warehouseEntryInstance?.merchandise}">
				<li class="fieldcontain">
					<span id="merchandise-label" class="property-label"><g:message code="warehouseEntry.merchandise.label" default="Merchandise" /></span>
					
						<span class="property-value" aria-labelledby="merchandise-label"><g:link controller="merchandise" action="show" id="${warehouseEntryInstance?.merchandise?.id}">${warehouseEntryInstance?.merchandise?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${warehouseEntryInstance?.quantity}">
				<li class="fieldcontain">
					<span id="quantity-label" class="property-label"><g:message code="warehouseEntry.quantity.label" default="Quantity" /></span>
					
						<span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${warehouseEntryInstance}" field="quantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${warehouseEntryInstance?.warehouse}">
				<li class="fieldcontain">
					<span id="warehouse-label" class="property-label"><g:message code="warehouseEntry.warehouse.label" default="Warehouse" /></span>
					
						<span class="property-value" aria-labelledby="warehouse-label"><g:link controller="warehouse" action="show" id="${warehouseEntryInstance?.warehouse?.id}">${warehouseEntryInstance?.warehouse?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:warehouseEntryInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${warehouseEntryInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
