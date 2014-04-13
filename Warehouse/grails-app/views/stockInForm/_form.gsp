<%@ page import="com.ca.warehouse.StockInForm" %>



<div class="fieldcontain ${hasErrors(bean: stockInFormInstance, field: 'inDate', 'error')} required">
	<label for="inDate">
		<g:message code="stockInForm.inDate.label" default="In Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="inDate" precision="day"  value="${stockInFormInstance?.inDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: stockInFormInstance, field: 'supplier', 'error')} ">
	<label for="supplier">
		<g:message code="stockInForm.supplier.label" default="Supplier" />
		
	</label>
	<g:select id="supplier" name="supplier.id" from="${com.ca.people.Supplier.list()}" optionKey="id" value="${stockInFormInstance?.supplier?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stockInFormInstance, field: 'warehouse', 'error')} ">
	<label for="warehouse">
		<g:message code="stockInForm.warehouse.label" default="Warehouse" />
		
	</label>
	<g:select id="warehouse" name="warehouse.id" from="${com.ca.warehouse.Warehouse.list()}" optionKey="id" value="${stockInFormInstance?.warehouse?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stockInFormInstance, field: 'entries', 'error')} ">
	<label for="entries">
		<g:message code="stockInForm.entries.label" default="Entries" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${stockInFormInstance?.entries?}" var="e">
    <li><g:link controller="stockInEntry" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="stockInEntry" action="create" params="['stockInForm.id': stockInFormInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'stockInEntry.label', default: 'StockInEntry')])}</g:link>
</li>
</ul>

</div>

