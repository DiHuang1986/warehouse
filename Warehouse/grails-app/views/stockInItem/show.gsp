
<%@ page import="com.ca.warehouse.StockInItem" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'stockInItem.label', default: 'StockInItem')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-stockInItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-stockInItem" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list stockInItem">
			
				<g:if test="${stockInItemInstance?.form}">
				<li class="fieldcontain">
					<span id="form-label" class="property-label"><g:message code="stockInItem.form.label" default="Form" /></span>
					
						<span class="property-value" aria-labelledby="form-label"><g:link controller="stockInForm" action="show" id="${stockInItemInstance?.form?.id}">${stockInItemInstance?.form?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockInItemInstance?.merchandise}">
				<li class="fieldcontain">
					<span id="merchandise-label" class="property-label"><g:message code="stockInItem.merchandise.label" default="Merchandise" /></span>
					
						<span class="property-value" aria-labelledby="merchandise-label"><g:link controller="merchandise" action="show" id="${stockInItemInstance?.merchandise?.id}">${stockInItemInstance?.merchandise?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockInItemInstance?.quantity}">
				<li class="fieldcontain">
					<span id="quantity-label" class="property-label"><g:message code="stockInItem.quantity.label" default="Quantity" /></span>
					
						<span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${stockInItemInstance}" field="quantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockInItemInstance?.singlePrice}">
				<li class="fieldcontain">
					<span id="singlePrice-label" class="property-label"><g:message code="stockInItem.singlePrice.label" default="Single Price" /></span>
					
						<span class="property-value" aria-labelledby="singlePrice-label"><g:fieldValue bean="${stockInItemInstance}" field="singlePrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockInItemInstance?.tax}">
				<li class="fieldcontain">
					<span id="tax-label" class="property-label"><g:message code="stockInItem.tax.label" default="Tax" /></span>
					
						<span class="property-value" aria-labelledby="tax-label"><g:formatBoolean boolean="${stockInItemInstance?.tax}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockInItemInstance?.taxRate}">
				<li class="fieldcontain">
					<span id="taxRate-label" class="property-label"><g:message code="stockInItem.taxRate.label" default="Tax Rate" /></span>
					
						<span class="property-value" aria-labelledby="taxRate-label"><g:fieldValue bean="${stockInItemInstance}" field="taxRate"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:stockInItemInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${stockInItemInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
