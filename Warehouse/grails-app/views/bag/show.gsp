
<%@ page import="com.ca.product.Bag" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bag.label', default: 'Bag')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-bag" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-bag" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list bag">
			
				<g:if test="${bagInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="bag.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${bagInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bagInstance?.tagPrice}">
				<li class="fieldcontain">
					<span id="tagPrice-label" class="property-label"><g:message code="bag.tagPrice.label" default="Tag Price" /></span>
					
						<span class="property-value" aria-labelledby="tagPrice-label"><g:fieldValue bean="${bagInstance}" field="tagPrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bagInstance?.brand}">
				<li class="fieldcontain">
					<span id="brand-label" class="property-label"><g:message code="bag.brand.label" default="Brand" /></span>
					
						<span class="property-value" aria-labelledby="brand-label"><g:link controller="brand" action="show" id="${bagInstance?.brand?.id}">${bagInstance?.brand?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${bagInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="bag.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${bagInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bagInstance?.comment}">
				<li class="fieldcontain">
					<span id="comment-label" class="property-label"><g:message code="bag.comment.label" default="Comment" /></span>
					
						<span class="property-value" aria-labelledby="comment-label"><g:fieldValue bean="${bagInstance}" field="comment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bagInstance?.barCode}">
				<li class="fieldcontain">
					<span id="barCode-label" class="property-label"><g:message code="bag.barCode.label" default="Bar Code" /></span>
					
						<span class="property-value" aria-labelledby="barCode-label"><g:fieldValue bean="${bagInstance}" field="barCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bagInstance?.length}">
				<li class="fieldcontain">
					<span id="length-label" class="property-label"><g:message code="bag.length.label" default="Length" /></span>
					
						<span class="property-value" aria-labelledby="length-label"><g:fieldValue bean="${bagInstance}" field="length"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bagInstance?.width}">
				<li class="fieldcontain">
					<span id="width-label" class="property-label"><g:message code="bag.width.label" default="Width" /></span>
					
						<span class="property-value" aria-labelledby="width-label"><g:fieldValue bean="${bagInstance}" field="width"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bagInstance?.height}">
				<li class="fieldcontain">
					<span id="height-label" class="property-label"><g:message code="bag.height.label" default="Height" /></span>
					
						<span class="property-value" aria-labelledby="height-label"><g:fieldValue bean="${bagInstance}" field="height"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bagInstance?.pound}">
				<li class="fieldcontain">
					<span id="pound-label" class="property-label"><g:message code="bag.pound.label" default="Pound" /></span>
					
						<span class="property-value" aria-labelledby="pound-label"><g:fieldValue bean="${bagInstance}" field="pound"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bagInstance?.ounce}">
				<li class="fieldcontain">
					<span id="ounce-label" class="property-label"><g:message code="bag.ounce.label" default="Ounce" /></span>
					
						<span class="property-value" aria-labelledby="ounce-label"><g:fieldValue bean="${bagInstance}" field="ounce"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bagInstance?.merchandiseType}">
				<li class="fieldcontain">
					<span id="merchandiseType-label" class="property-label"><g:message code="bag.merchandiseType.label" default="Merchandise Type" /></span>
					
						<span class="property-value" aria-labelledby="merchandiseType-label"><g:link controller="merchandiseType" action="show" id="${bagInstance?.merchandiseType?.id}">${bagInstance?.merchandiseType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${bagInstance?.styleNo}">
				<li class="fieldcontain">
					<span id="styleNo-label" class="property-label"><g:message code="bag.styleNo.label" default="Style No" /></span>
					
						<span class="property-value" aria-labelledby="styleNo-label"><g:fieldValue bean="${bagInstance}" field="styleNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bagInstance?.colorNo}">
				<li class="fieldcontain">
					<span id="colorNo-label" class="property-label"><g:message code="bag.colorNo.label" default="Color No" /></span>
					
						<span class="property-value" aria-labelledby="colorNo-label"><g:fieldValue bean="${bagInstance}" field="colorNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bagInstance?.pictures}">
				<li class="fieldcontain">
					<span id="pictures-label" class="property-label"><g:message code="bag.pictures.label" default="Pictures" /></span>
					
						<g:each in="${bagInstance.pictures}" var="p">
						<span class="property-value" aria-labelledby="pictures-label"><g:link controller="picture" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${bagInstance?.tags}">
				<li class="fieldcontain">
					<span id="tags-label" class="property-label"><g:message code="bag.tags.label" default="Tags" /></span>
					
						<g:each in="${bagInstance.tags}" var="t">
						<span class="property-value" aria-labelledby="tags-label"><g:link controller="tag" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:bagInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${bagInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
