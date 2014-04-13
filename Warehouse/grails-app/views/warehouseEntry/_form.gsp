<%@ page import="com.ca.warehouse.WarehouseEntry" %>



<div class="fieldcontain ${hasErrors(bean: warehouseEntryInstance, field: 'merchandise', 'error')} required">
	<label for="merchandise">
		<g:message code="warehouseEntry.merchandise.label" default="Merchandise" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="merchandise" name="merchandise.id" from="${com.ca.product.Merchandise.list()}" optionKey="id" required="" value="${warehouseEntryInstance?.merchandise?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: warehouseEntryInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="warehouseEntry.quantity.label" default="Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantity" type="number" min="0" value="${warehouseEntryInstance.quantity}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: warehouseEntryInstance, field: 'warehouse', 'error')} required">
	<label for="warehouse">
		<g:message code="warehouseEntry.warehouse.label" default="Warehouse" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="warehouse" name="warehouse.id" from="${com.ca.warehouse.Warehouse.list()}" optionKey="id" required="" value="${warehouseEntryInstance?.warehouse?.id}" class="many-to-one"/>
</div>

