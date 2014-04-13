<%@ page import="com.ca.warehouse.Warehouse" %>



<div class="fieldcontain ${hasErrors(bean: warehouseInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="warehouse.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${warehouseInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: warehouseInstance, field: 'country', 'error')} ">
	<label for="country">
		<g:message code="warehouse.country.label" default="Country" />
		
	</label>
	<g:select id="country" name="country.id" from="${com.ca.address.Country.list()}" optionKey="id" value="${warehouseInstance?.country?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: warehouseInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="warehouse.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${warehouseInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: warehouseInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="warehouse.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${warehouseInstance?.active}" />
</div>

<div class="fieldcontain ${hasErrors(bean: warehouseInstance, field: 'entries', 'error')} ">
	<label for="entries">
		<g:message code="warehouse.entries.label" default="Entries" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${warehouseInstance?.entries?}" var="e">
    <li><g:link controller="warehouseEntry" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="warehouseEntry" action="create" params="['warehouse.id': warehouseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'warehouseEntry.label', default: 'WarehouseEntry')])}</g:link>
</li>
</ul>

</div>

