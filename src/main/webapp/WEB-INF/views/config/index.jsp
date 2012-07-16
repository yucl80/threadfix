<%@ include file="/common/taglibs.jsp"%>

<head>
    <title>Configuration</title>
</head>

<body id="config">
	<h2>Configuration</h2>
	
	<ul class="squareList" style="padding-left:15px">
	    <li>
	    	<a id="apiKeysLink" href="<spring:url value="configuration/keys" htmlEscape="true"/>">API Keys</a>
	    </li>
	    <li>
	    	<a id="defectTrackersLink" href="<spring:url value="configuration/defecttrackers" htmlEscape="true"/>">Defect Trackers</a>
	    </li>
	    <li>
	    	<a id="jobStatusesLink" href="<spring:url value="/jobs/all" />">Job Statuses</a>
	    </li>
	    <li>
	    	<a id="remoteProvidersLink" href="<spring:url value="configuration/remoteproviders" htmlEscape="true"/>">Remote Providers</a>
	    </li>
	    
		<security:authorize ifAnyGranted="ROLE_ADMIN">
			<li>
				<a id="manageUsersLink" href="<spring:url value="configuration/users" htmlEscape="true"/>">Manage Users</a>
			</li>
			<li>
				<a id="viewLogsLink" href="<spring:url value="configuration/logs" htmlEscape="true"/>">View Error Logs</a>
			</li>
		</security:authorize>
	</ul>
</body>