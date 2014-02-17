<%@ page import="com.ca.warehouse.StockInForm" %>



<div class="fieldcontain ${hasErrors(bean: stockInFormInstance, field: 'fee', 'error')} required">
	<label for="fee">
		<g:message code="stockInForm.fee.label" default="Fee" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="fee" value="${fieldValue(bean: stockInFormInstance, field: 'fee')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: stockInFormInstance, field: 'inDate', 'error')} required">
	<label for="inDate">
		<g:message code="stockInForm.inDate.label" default="In Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="inDate" precision="day"  value="${stockInFormInstance?.inDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: stockInFormInstance, field: 'items', 'error')} ">
	<label for="items">
		<g:message code="stockInForm.items.label" default="Items" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${stockInFormInstance?.items?}" var="i">
    <li><g:link controller="stockInItem" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="stockInItem" action="create" params="['stockInForm.id': stockInFormInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'stockInItem.label', default: 'StockInItem')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: stockInFormInstance, field: 'supplier', 'error')} required">
	<label for="supplier">
		<g:message code="stockInForm.supplier.label" default="Supplier" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="supplier" name="supplier.id" from="${com.ca.people.Supplier.list()}" optionKey="id" required="" value="${stockInFormInstance?.supplier?.id}" class="many-to-one"/>
</div>

