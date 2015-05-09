
<%@ page import="grails555.Car" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'car.label', default: 'Car')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-car" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-car" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list car">
			
				<g:if test="${carInstance?.make}">
				<li class="fieldcontain">
					<span id="make-label" class="property-label"><g:message code="car.make.label" default="Make" /></span>
					
						<span class="property-value" aria-labelledby="make-label"><g:fieldValue bean="${carInstance}" field="make"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carInstance?.model}">
				<li class="fieldcontain">
					<span id="model-label" class="property-label"><g:message code="car.model.label" default="Model" /></span>
					
						<span class="property-value" aria-labelledby="model-label"><g:fieldValue bean="${carInstance}" field="model"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carInstance?.paintColor}">
				<li class="fieldcontain">
					<span id="paintColor-label" class="property-label"><g:message code="car.paintColor.label" default="Paint Color" /></span>
					
						<span class="property-value" aria-labelledby="paintColor-label"><g:fieldValue bean="${carInstance}" field="paintColor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carInstance?.vin}">
				<li class="fieldcontain">
					<span id="vin-label" class="property-label"><g:message code="car.vin.label" default="Vin" /></span>
					
						<span class="property-value" aria-labelledby="vin-label"><g:fieldValue bean="${carInstance}" field="vin"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${carInstance?.id}" />
					<g:link class="edit" action="edit" id="${carInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
