<%@ page import="com.ca.people.Employee" %>



<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="employee.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${employeeInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="employee.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${employeeInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="employee.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="gender" from="${com.ca.enums.Gender?.values()}" keys="${com.ca.enums.Gender.values()*.name()}" required="" value="${employeeInstance?.gender?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'addressBook', 'error')} ">
	<label for="addressBook">
		<g:message code="employee.addressBook.label" default="Address Book" />
		
	</label>
	<g:select name="addressBook" from="${com.ca.address.Address.list()}" multiple="multiple" optionKey="id" size="5" value="${employeeInstance?.addressBook*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'currentSalary', 'error')} required">
	<label for="currentSalary">
		<g:message code="employee.currentSalary.label" default="Current Salary" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="currentSalary" value="${fieldValue(bean: employeeInstance, field: 'currentSalary')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'loginInfo', 'error')} required">
	<label for="loginInfo">
		<g:message code="employee.loginInfo.label" default="Login Info" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="loginInfo" name="loginInfo.id" from="${com.ca.people.LoginInfo.list()}" optionKey="id" required="" value="${employeeInstance?.loginInfo?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'roles', 'error')} ">
	<label for="roles">
		<g:message code="employee.roles.label" default="Roles" />
		
	</label>
	<g:select name="roles" from="${com.ca.people.Role.list()}" multiple="multiple" optionKey="id" size="5" value="${employeeInstance?.roles*.id}" class="many-to-many"/>
</div>

