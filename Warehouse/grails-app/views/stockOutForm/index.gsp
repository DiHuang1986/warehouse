
<%@ page import="com.ca.warehouse.StockOutForm" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'stockOutForm.label', default: 'StockOutForm')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-stockOutForm" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-stockOutForm" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="outDate" title="${message(code: 'stockOutForm.outDate.label', default: 'Out Date')}" />
					
						<th><g:message code="stockOutForm.collector.label" default="Collector" /></th>
					
						<th><g:message code="stockOutForm.warehouse.label" default="Warehouse" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${stockOutFormInstanceList}" status="i" var="stockOutFormInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${stockOutFormInstance.id}">${fieldValue(bean: stockOutFormInstance, field: "outDate")}</g:link></td>
					
						<td>${fieldValue(bean: stockOutFormInstance, field: "collector")}</td>
					
						<td>${fieldValue(bean: stockOutFormInstance, field: "warehouse")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${stockOutFormInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
