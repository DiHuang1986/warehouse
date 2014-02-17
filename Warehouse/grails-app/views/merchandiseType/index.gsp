
<%@ page import="com.ca.product.MerchandiseType" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'merchandiseType.label', default: 'MerchandiseType')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-merchandiseType" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-merchandiseType" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="category" title="${message(code: 'merchandiseType.category.label', default: 'Category')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'merchandiseType.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'merchandiseType.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${merchandiseTypeInstanceList}" status="i" var="merchandiseTypeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${merchandiseTypeInstance.id}">${fieldValue(bean: merchandiseTypeInstance, field: "category")}</g:link></td>
					
						<td>${fieldValue(bean: merchandiseTypeInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: merchandiseTypeInstance, field: "name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${merchandiseTypeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
