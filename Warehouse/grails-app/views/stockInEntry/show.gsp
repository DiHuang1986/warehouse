
<%@ page import="com.ca.warehouse.StockInEntry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'stockInEntry.label', default: 'StockInEntry')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-stockInEntry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-stockInEntry" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list stockInEntry">
			
				<g:if test="${stockInEntryInstance?.merchandise}">
				<li class="fieldcontain">
					<span id="merchandise-label" class="property-label"><g:message code="stockInEntry.merchandise.label" default="Merchandise" /></span>
					
						<span class="property-value" aria-labelledby="merchandise-label"><g:link controller="merchandise" action="show" id="${stockInEntryInstance?.merchandise?.id}">${stockInEntryInstance?.merchandise?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockInEntryInstance?.quantity}">
				<li class="fieldcontain">
					<span id="quantity-label" class="property-label"><g:message code="stockInEntry.quantity.label" default="Quantity" /></span>
					
						<span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${stockInEntryInstance}" field="quantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockInEntryInstance?.form}">
				<li class="fieldcontain">
					<span id="form-label" class="property-label"><g:message code="stockInEntry.form.label" default="Form" /></span>
					
						<span class="property-value" aria-labelledby="form-label"><g:link controller="stockInForm" action="show" id="${stockInEntryInstance?.form?.id}">${stockInEntryInstance?.form?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:stockInEntryInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${stockInEntryInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
