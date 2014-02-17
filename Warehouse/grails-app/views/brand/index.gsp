
<%@ page import="com.ca.product.Brand" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'brand.label', default: 'Brand')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-brand" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-brand" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="brandName" title="${message(code: 'brand.brandName.label', default: 'Brand Name')}" />
					
						<g:sortableColumn property="comment" title="${message(code: 'brand.comment.label', default: 'Comment')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'brand.description.label', default: 'Description')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${brandInstanceList}" status="i" var="brandInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${brandInstance.id}">${fieldValue(bean: brandInstance, field: "brandName")}</g:link></td>
					
						<td>${fieldValue(bean: brandInstance, field: "comment")}</td>
					
						<td>${fieldValue(bean: brandInstance, field: "description")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${brandInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
