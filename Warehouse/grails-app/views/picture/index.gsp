
<%@ page import="com.ca.product.Picture" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'picture.label', default: 'Picture')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-picture" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-picture" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'picture.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="path" title="${message(code: 'picture.path.label', default: 'Path')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'picture.description.label', default: 'Description')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pictureInstanceList}" status="i" var="pictureInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pictureInstance.id}">${fieldValue(bean: pictureInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: pictureInstance, field: "path")}</td>
					
						<td>${fieldValue(bean: pictureInstance, field: "description")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pictureInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
