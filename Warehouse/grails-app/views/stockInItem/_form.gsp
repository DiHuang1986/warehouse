<%@ page import="com.ca.warehouse.StockInItem" %>



<div class="fieldcontain ${hasErrors(bean: stockInItemInstance, field: 'form', 'error')} required">
	<label for="form">
		<g:message code="stockInItem.form.label" default="Form" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="form" name="form.id" from="${com.ca.warehouse.StockInForm.list()}" optionKey="id" required="" value="${stockInItemInstance?.form?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stockInItemInstance, field: 'merchandise', 'error')} required">
	<label for="merchandise">
		<g:message code="stockInItem.merchandise.label" default="Merchandise" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="merchandise" name="merchandise.id" from="${com.ca.product.Merchandise.list()}" optionKey="id" required="" value="${stockInItemInstance?.merchandise?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stockInItemInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="stockInItem.quantity.label" default="Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantity" type="number" value="${stockInItemInstance.quantity}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: stockInItemInstance, field: 'singlePrice', 'error')} required">
	<label for="singlePrice">
		<g:message code="stockInItem.singlePrice.label" default="Single Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="singlePrice" value="${fieldValue(bean: stockInItemInstance, field: 'singlePrice')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: stockInItemInstance, field: 'tax', 'error')} ">
	<label for="tax">
		<g:message code="stockInItem.tax.label" default="Tax" />
		
	</label>
	<g:checkBox name="tax" value="${stockInItemInstance?.tax}" />
</div>

<div class="fieldcontain ${hasErrors(bean: stockInItemInstance, field: 'taxRate', 'error')} required">
	<label for="taxRate">
		<g:message code="stockInItem.taxRate.label" default="Tax Rate" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="taxRate" value="${fieldValue(bean: stockInItemInstance, field: 'taxRate')}" required=""/>
</div>

