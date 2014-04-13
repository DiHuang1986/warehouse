<%@ page import="com.ca.product.Bag" %>



<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="bag.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${bagInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'tagPrice', 'error')} required">
	<label for="tagPrice">
		<g:message code="bag.tagPrice.label" default="Tag Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tagPrice" value="${fieldValue(bean: bagInstance, field: 'tagPrice')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'brand', 'error')} ">
	<label for="brand">
		<g:message code="bag.brand.label" default="Brand" />
		
	</label>
	<g:select id="brand" name="brand.id" from="${com.ca.product.Brand.list()}" optionKey="id" value="${bagInstance?.brand?.id}" class="many-to-one" noSelection="['null': '']"/>
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

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'barCode', 'error')} ">
	<label for="barCode">
		<g:message code="bag.barCode.label" default="Bar Code" />
		
	</label>
	<g:field name="barCode" type="number" value="${bagInstance.barCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'length', 'error')} ">
	<label for="length">
		<g:message code="bag.length.label" default="Length" />
		
	</label>
	<g:field name="length" value="${fieldValue(bean: bagInstance, field: 'length')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'width', 'error')} ">
	<label for="width">
		<g:message code="bag.width.label" default="Width" />
		
	</label>
	<g:field name="width" value="${fieldValue(bean: bagInstance, field: 'width')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'height', 'error')} ">
	<label for="height">
		<g:message code="bag.height.label" default="Height" />
		
	</label>
	<g:field name="height" value="${fieldValue(bean: bagInstance, field: 'height')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'pound', 'error')} ">
	<label for="pound">
		<g:message code="bag.pound.label" default="Pound" />
		
	</label>
	<g:field name="pound" type="number" min="0" value="${bagInstance.pound}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'ounce', 'error')} ">
	<label for="ounce">
		<g:message code="bag.ounce.label" default="Ounce" />
		
	</label>
	<g:field name="ounce" type="number" min="0" max="16" value="${bagInstance.ounce}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'merchandiseType', 'error')} ">
	<label for="merchandiseType">
		<g:message code="bag.merchandiseType.label" default="Merchandise Type" />
		
	</label>
	<g:select id="merchandiseType" name="merchandiseType.id" from="${com.ca.product.MerchandiseType.list()}" optionKey="id" value="${bagInstance?.merchandiseType?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'styleNo', 'error')} ">
	<label for="styleNo">
		<g:message code="bag.styleNo.label" default="Style No" />
		
	</label>
	<g:textField name="styleNo" value="${bagInstance?.styleNo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'colorNo', 'error')} ">
	<label for="colorNo">
		<g:message code="bag.colorNo.label" default="Color No" />
		
	</label>
	<g:textField name="colorNo" value="${bagInstance?.colorNo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'pictures', 'error')} ">
	<label for="pictures">
		<g:message code="bag.pictures.label" default="Pictures" />
		
	</label>
	<g:select name="pictures" from="${com.ca.product.Picture.list()}" multiple="multiple" optionKey="id" size="5" value="${bagInstance?.pictures*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bagInstance, field: 'tags', 'error')} ">
	<label for="tags">
		<g:message code="bag.tags.label" default="Tags" />
		
	</label>
	<g:select name="tags" from="${com.ca.product.Tag.list()}" multiple="multiple" optionKey="id" size="5" value="${bagInstance?.tags*.id}" class="many-to-many"/>
</div>

