<%@ page import="com.ca.warehouse.StockOutEntry" %>



<div class="fieldcontain ${hasErrors(bean: stockOutEntryInstance, field: 'merchandise', 'error')} required">
	<label for="merchandise">
		<g:message code="stockOutEntry.merchandise.label" default="Merchandise" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="merchandise" name="merchandise.id" from="${com.ca.product.Merchandise.list()}" optionKey="id" required="" value="${stockOutEntryInstance?.merchandise?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stockOutEntryInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="stockOutEntry.quantity.label" default="Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantity" type="number" min="0" value="${stockOutEntryInstance.quantity}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: stockOutEntryInstance, field: 'form', 'error')} required">
	<label for="form">
		<g:message code="stockOutEntry.form.label" default="Form" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="form" name="form.id" from="${com.ca.warehouse.StockOutForm.list()}" optionKey="id" required="" value="${stockOutEntryInstance?.form?.id}" class="many-to-one"/>
</div>

