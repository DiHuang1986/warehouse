
<%@ page import="com.ca.warehouse.StockInItem" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'stockInItem.label', default: 'StockInItem')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-stockInItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-stockInItem" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="stockInItem.form.label" default="Form" /></th>
					
						<th><g:message code="stockInItem.merchandise.label" default="Merchandise" /></th>
					
						<g:sortableColumn property="quantity" title="${message(code: 'stockInItem.quantity.label', default: 'Quantity')}" />
					
						<g:sortableColumn property="singlePrice" title="${message(code: 'stockInItem.singlePrice.label', default: 'Single Price')}" />
					
						<g:sortableColumn property="tax" title="${message(code: 'stockInItem.tax.label', default: 'Tax')}" />
					
						<g:sortableColumn property="taxRate" title="${message(code: 'stockInItem.taxRate.label', default: 'Tax Rate')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${stockInItemInstanceList}" status="i" var="stockInItemInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${stockInItemInstance.id}">${fieldValue(bean: stockInItemInstance, field: "form")}</g:link></td>
					
						<td>${fieldValue(bean: stockInItemInstance, field: "merchandise")}</td>
					
						<td>${fieldValue(bean: stockInItemInstance, field: "quantity")}</td>
					
						<td>${fieldValue(bean: stockInItemInstance, field: "singlePrice")}</td>
					
						<td><g:formatBoolean boolean="${stockInItemInstance.tax}" /></td>
					
						<td>${fieldValue(bean: stockInItemInstance, field: "taxRate")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${stockInItemInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
