
<%@ page import="com.ca.warehouse.StockInForm" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'stockInForm.label', default: 'StockInForm')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-stockInForm" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-stockInForm" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list stockInForm">
			
				<g:if test="${stockInFormInstance?.inDate}">
				<li class="fieldcontain">
					<span id="inDate-label" class="property-label"><g:message code="stockInForm.inDate.label" default="In Date" /></span>
					
						<span class="property-value" aria-labelledby="inDate-label"><g:formatDate date="${stockInFormInstance?.inDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockInFormInstance?.supplier}">
				<li class="fieldcontain">
					<span id="supplier-label" class="property-label"><g:message code="stockInForm.supplier.label" default="Supplier" /></span>
					
						<span class="property-value" aria-labelledby="supplier-label"><g:link controller="supplier" action="show" id="${stockInFormInstance?.supplier?.id}">${stockInFormInstance?.supplier?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockInFormInstance?.warehouse}">
				<li class="fieldcontain">
					<span id="warehouse-label" class="property-label"><g:message code="stockInForm.warehouse.label" default="Warehouse" /></span>
					
						<span class="property-value" aria-labelledby="warehouse-label"><g:link controller="warehouse" action="show" id="${stockInFormInstance?.warehouse?.id}">${stockInFormInstance?.warehouse?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockInFormInstance?.entries}">
				<li class="fieldcontain">
					<span id="entries-label" class="property-label"><g:message code="stockInForm.entries.label" default="Entries" /></span>
					
						<g:each in="${stockInFormInstance.entries}" var="e">
						<span class="property-value" aria-labelledby="entries-label"><g:link controller="stockInEntry" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:stockInFormInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${stockInFormInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
