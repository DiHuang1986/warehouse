
<%@ page import="com.ca.warehouse.Warehouse" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'warehouse.label', default: 'Warehouse')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-warehouse" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-warehouse" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'warehouse.name.label', default: 'Name')}" />
					
						<th><g:message code="warehouse.country.label" default="Country" /></th>
					
						<g:sortableColumn property="city" title="${message(code: 'warehouse.city.label', default: 'City')}" />
					
						<g:sortableColumn property="active" title="${message(code: 'warehouse.active.label', default: 'Active')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${warehouseInstanceList}" status="i" var="warehouseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${warehouseInstance.id}">${fieldValue(bean: warehouseInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: warehouseInstance, field: "country")}</td>
					
						<td>${fieldValue(bean: warehouseInstance, field: "city")}</td>
					
						<td><g:formatBoolean boolean="${warehouseInstance.active}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${warehouseInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
