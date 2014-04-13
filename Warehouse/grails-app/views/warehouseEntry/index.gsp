
<%@ page import="com.ca.warehouse.WarehouseEntry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'warehouseEntry.label', default: 'WarehouseEntry')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-warehouseEntry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-warehouseEntry" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="warehouseEntry.merchandise.label" default="Merchandise" /></th>
					
						<g:sortableColumn property="quantity" title="${message(code: 'warehouseEntry.quantity.label', default: 'Quantity')}" />
					
						<th><g:message code="warehouseEntry.warehouse.label" default="Warehouse" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${warehouseEntryInstanceList}" status="i" var="warehouseEntryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${warehouseEntryInstance.id}">${fieldValue(bean: warehouseEntryInstance, field: "merchandise")}</g:link></td>
					
						<td>${fieldValue(bean: warehouseEntryInstance, field: "quantity")}</td>
					
						<td>${fieldValue(bean: warehouseEntryInstance, field: "warehouse")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${warehouseEntryInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
