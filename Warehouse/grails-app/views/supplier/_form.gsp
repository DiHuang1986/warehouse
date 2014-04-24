<%@ page import="com.ca.people.Supplier" %>



<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="supplier.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${supplierInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="supplier.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${supplierInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="supplier.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="gender" from="${com.ca.enums.Gender?.values()}" keys="${com.ca.enums.Gender.values()*.name()}" required="" value="${supplierInstance?.gender?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'addressBook', 'error')} ">
	<label for="addressBook">
		<g:message code="supplier.addressBook.label" default="Address Book" />
		
	</label>
	<g:select name="addressBook" from="${com.ca.address.Address.list()}" multiple="multiple" optionKey="id" size="5" value="${supplierInstance?.addressBook*.id}" class="many-to-many"/>
</div>

