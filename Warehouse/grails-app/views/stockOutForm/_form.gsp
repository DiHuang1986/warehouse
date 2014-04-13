<%@ page import="com.ca.warehouse.StockOutForm" %>



<div class="fieldcontain ${hasErrors(bean: stockOutFormInstance, field: 'outDate', 'error')} required">
	<label for="outDate">
		<g:message code="stockOutForm.outDate.label" default="Out Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="outDate" precision="day"  value="${stockOutFormInstance?.outDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: stockOutFormInstance, field: 'collector', 'error')} ">
	<label for="collector">
		<g:message code="stockOutForm.collector.label" default="Collector" />
		
	</label>
	<g:select id="collector" name="collector.id" from="${com.ca.people.People.list()}" optionKey="id" value="${stockOutFormInstance?.collector?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stockOutFormInstance, field: 'warehouse', 'error')} ">
	<label for="warehouse">
		<g:message code="stockOutForm.warehouse.label" default="Warehouse" />
		
	</label>
	<g:select id="warehouse" name="warehouse.id" from="${com.ca.warehouse.Warehouse.list()}" optionKey="id" value="${stockOutFormInstance?.warehouse?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stockOutFormInstance, field: 'entries', 'error')} ">
	<label for="entries">
		<g:message code="stockOutForm.entries.label" default="Entries" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${stockOutFormInstance?.entries?}" var="e">
    <li><g:link controller="stockOutEntry" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="stockOutEntry" action="create" params="['stockOutForm.id': stockOutFormInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'stockOutEntry.label', default: 'StockOutEntry')])}</g:link>
</li>
</ul>

</div>

