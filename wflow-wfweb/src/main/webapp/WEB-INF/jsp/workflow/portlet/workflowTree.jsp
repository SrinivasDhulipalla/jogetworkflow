<%@ include file="/WEB-INF/jsp/includes/taglibs.jsp" %>

<jsp:include page="/WEB-INF/jsp/includes/scripts.jsp" />

[<a id="workspaceTreeRefresh" class="sidebarTreeRefresh" href="#" onclick="{ xssAssignmentPendingTree.refresh(); xssAssignmentAcceptedTree.refresh(); xssProcessTree.refresh(); return false }">refresh</a>]    

<div id="json_assignmentPendingTree" class="sidebarTree">
    <ui:jsontree   var="xssAssignmentPendingTree" 
                divToUpdate="xssAssignmentPendingTree"
                title="Pending Tasks"
                url="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/web/json/workflow/assignment/list/pending/process"
                baseUrl="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/web"
                nodeLabel="label"
                nodeKey="id"
                nodeCount="count"
                href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/web/client/assignment/view/"
                hrefParam="activityId"
                xss="true"
    />
</div>

<div id="json_assignmentAcceptedTree" class="sidebarTree">
    <ui:jsontree   var="xssAssignmentAcceptedTree" 
                divToUpdate="xssAssignmentAcceptedTree"
                title="Accepted Tasks"
                url="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/web/json/workflow/assignment/list/accepted/process"
                baseUrl="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/web"
                nodeLabel="label"
                nodeKey="id"
                nodeCount="count"
                href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/web/client/assignment/view/"
                hrefParam="activityId"
                xss="true"
    />
</div>

<div id="json_processTree" class="sidebarTree">
    <ui:jsontree   var="xssProcessTree" 
                divToUpdate="xssProcessTree"
                title="Start Process"
                url="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/web/json/workflow/process/list/package"
                baseUrl="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/web"
                nodeLabel="label"
                nodeKey="id"
                nodeCount="count"
                href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/web/client/process/view/"
                hrefParam="processId"
                xss="true"
    />
</div>
    
