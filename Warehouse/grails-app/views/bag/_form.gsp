<%@ page import="com.ca.product.Bag" %>



<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="bag.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${bagInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="bag.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1000" value="${bagInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'comment', 'error')} ">
	<label for="comment">
		<g:message code="bag.comment.label" default="Comment" />
		
	</label>
	<g:textArea name="comment" cols="40" rows="5" maxlength="1000" value="${bagInstance?.comment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'tagPrice', 'error')} required">
	<label for="tagPrice">
		<g:message code="bag.tagPrice.label" default="Tag Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tagPrice" value="${fieldValue(bean: bagInstance, field: 'tagPrice')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'colorNo', 'error')} ">
	<label for="colorNo">
		<g:message code="bag.colorNo.label" default="Color No" />
		
	</label>
	<g:textField name="colorNo" value="${bagInstance?.colorNo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'EANCode', 'error')} ">
	<label for="EANCode">
		<g:message code="bag.EANCode.label" default="EANC ode" />
		
	</label>
	<g:textField name="EANCode" value="${bagInstance?.EANCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'brand', 'error')} required">
	<label for="brand">
		<g:message code="bag.brand.label" default="Brand" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="brand" name="brand.id" from="${com.ca.product.Brand.list()}" optionKey="id" required="" value="${bagInstance?.brand?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'height', 'error')} required">
	<label for="height">
		<g:message code="bag.height.label" default="Height" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="height" value="${fieldValue(bean: bagInstance, field: 'height')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'length', 'error')} required">
	<label for="length">
		<g:message code="bag.length.label" default="Length" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="length" value="${fieldValue(bean: bagInstance, field: 'length')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'merchandiseType', 'error')} required">
	<label for="merchandiseType">
		<g:message code="bag.merchandiseType.label" default="Merchandise Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="merchandiseType" name="merchandiseType.id" from="${com.ca.product.MerchandiseType.list()}" optionKey="id" required="" value="${bagInstance?.merchandiseType?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'ounce', 'error')} required">
	<label for="ounce">
		<g:message code="bag.ounce.label" default="Ounce" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ounce" type="number" value="${bagInstance.ounce}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'pound', 'error')} required">
	<label for="pound">
		<g:message code="bag.pound.label" default="Pound" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pound" type="number" value="${bagInstance.pound}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'styleNo', 'error')} ">
	<label for="styleNo">
		<g:message code="bag.styleNo.label" default="Style No" />
		
	</label>
	<g:textField name="styleNo" value="${bagInstance?.styleNo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'width', 'error')} required">
	<label for="width">
		<g:message code="bag.width.label" default="Width" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="width" value="${fieldValue(bean: bagInstance, field: 'width')}" required=""/>
</div>

