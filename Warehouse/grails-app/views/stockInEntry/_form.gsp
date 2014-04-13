<%@ page import="com.ca.warehouse.StockInEntry" %>
<%@ page import="com.ca.warehouse.StockInForm" %>



<div class="fieldcontain ${hasErrors(bean: stockInEntryInstance, field: 'merchandise', 'error')} required">
	<label for="merchandise">
		<g:message code="stockInEntry.merchandise.label" default="Merchandise" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="merchandise" name="merchandise.id" from="${com.ca.product.Merchandise.list()}" optionKey="id" required="" value="${stockInEntryInstance?.merchandise?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stockInEntryInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="stockInEntry.quantity.label" default="Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantity" type="number" min="0" value="${stockInEntryInstance.quantity}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: stockInEntryInstance, field: 'form', 'error')} required">
	<label for="form">
		<g:message code="stockInEntry.form.label" default="Form" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="form" name="form.id" from="${StockInForm.list()}" optionKey="id" required="" value="${stockInEntryInstance?.form?.id}" class="many-to-one"/>
</div>

