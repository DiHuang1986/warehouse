
<%@ page import="com.ca.warehouse.StockOutForm" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'stockOutForm.label', default: 'StockOutForm')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-stockOutForm" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-stockOutForm" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list stockOutForm">
			
				<g:if test="${stockOutFormInstance?.outDate}">
				<li class="fieldcontain">
					<span id="outDate-label" class="property-label"><g:message code="stockOutForm.outDate.label" default="Out Date" /></span>
					
						<span class="property-value" aria-labelledby="outDate-label"><g:formatDate date="${stockOutFormInstance?.outDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockOutFormInstance?.collector}">
				<li class="fieldcontain">
					<span id="collector-label" class="property-label"><g:message code="stockOutForm.collector.label" default="Collector" /></span>
					
						<span class="property-value" aria-labelledby="collector-label"><g:link controller="people" action="show" id="${stockOutFormInstance?.collector?.id}">${stockOutFormInstance?.collector?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockOutFormInstance?.warehouse}">
				<li class="fieldcontain">
					<span id="warehouse-label" class="property-label"><g:message code="stockOutForm.warehouse.label" default="Warehouse" /></span>
					
						<span class="property-value" aria-labelledby="warehouse-label"><g:link controller="warehouse" action="show" id="${stockOutFormInstance?.warehouse?.id}">${stockOutFormInstance?.warehouse?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockOutFormInstance?.entries}">
				<li class="fieldcontain">
					<span id="entries-label" class="property-label"><g:message code="stockOutForm.entries.label" default="Entries" /></span>
					
						<g:each in="${stockOutFormInstance.entries}" var="e">
						<span class="property-value" aria-labelledby="entries-label"><g:link controller="stockOutEntry" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:stockOutFormInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${stockOutFormInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
