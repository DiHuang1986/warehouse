<%@ page import="com.ca.people.Customer" %>



<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="customer.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${customerInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="customer.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${customerInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="customer.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="gender" from="${com.ca.enums.Gender?.values()}" keys="${com.ca.enums.Gender.values()*.name()}" required="" value="${customerInstance?.gender?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'addressBook', 'error')} ">
	<label for="addressBook">
		<g:message code="customer.addressBook.label" default="Address Book" />
		
	</label>
	<g:select name="addressBook" from="${com.ca.address.Address.list()}" multiple="multiple" optionKey="id" size="5" value="${customerInstance?.addressBook*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'orders', 'error')} ">
	<label for="orders">
		<g:message code="customer.orders.label" default="Orders" />
		
	</label>
	<g:select name="orders" from="${com.ca.order.CustomerOrder.list()}" multiple="multiple" optionKey="id" size="5" value="${customerInstance?.orders*.id}" class="many-to-many"/>
</div>

