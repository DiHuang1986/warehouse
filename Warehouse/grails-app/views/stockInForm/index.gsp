
<%@ page import="com.ca.warehouse.StockInForm" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'stockInForm.label', default: 'StockInForm')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-stockInForm" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-stockInForm" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="inDate" title="${message(code: 'stockInForm.inDate.label', default: 'In Date')}" />
					
						<th><g:message code="stockInForm.supplier.label" default="Supplier" /></th>
					
						<th><g:message code="stockInForm.warehouse.label" default="Warehouse" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${stockInFormInstanceList}" status="i" var="stockInFormInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${stockInFormInstance.id}">${fieldValue(bean: stockInFormInstance, field: "inDate")}</g:link></td>
					
						<td>${fieldValue(bean: stockInFormInstance, field: "supplier")}</td>
					
						<td>${fieldValue(bean: stockInFormInstance, field: "warehouse")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${stockInFormInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
