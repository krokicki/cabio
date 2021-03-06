<%--L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L--%>

<%@ include file="/WEB-INF/jsp/init.jsp" %>

<tiles:useAttribute id="tilesPortletContent" 
    name="portlet_content" classname="java.lang.String" ignore="true" />
    
<link href="<c:url value="/css/cabio_portlet.css"/>" type="text/css" rel="stylesheet" />

<script type="text/javascript" src="<c:url value="/js/cabio_common.js"/>"></script>

<div id="cabio">

<a href="<bean:message key="online.help.url"/>" target="_blank" title="link to caBIO Portlet Online Help">
    <img src="<c:url value="/images/questionMark.gif"/>" alt="Button to access to online help" title="Access Online Help" 
        style="float: right; margin-left: 8px;"/>
</a>

<div style="color: #444;">
<img src="<c:url value="/images/sdkLogoSmall.gif"/>" alt="caBIO logo" title="caBIO logo" style="float: left; margin-right: 8px;"/>
The <span class="link-extenal"><a href="<bean:message key="link.cabio.portlet"/>" target="_blank" title="link to caBIO Portlet wiki">caBIO Portlet</a></span>
&nbsp;is a portal user interface built on top of the caBIO APIs. 
<span class="link-extenal"><a href="<bean:message key="link.cabio.api"/>" target="_blank" title="link to caBIO API">caBIO</a></span> 
&nbsp;is a repository of data useful in biomedical research, compiled from multiple primary sources. 
</div>

<div style="clear: both; margin-bottom: 10px;"></div>

<%
	String tab = ParamUtil.getString(request, "tabs1");
	if ((tab == null) || "".equals(tab)) {
        tab = (String)session.getAttribute("tab");
        if ((tab == null) || "".equals(tab)) {
            if (tilesPortletContent.endsWith("/results.jsp")) {
                tab = "Templated Searches";
            }
            else {
                tab = "Simple Search";
            }
        }
	}
	
	PortletURL portletURL = null;
	
	try {
	   portletURL = renderResponse.createRenderURL();
    }
    catch (Exception e) {
        // Not in a portlet context, continue with a null portletURL
    }
    
	if (portletURL != null) {
        portletURL.setParameter("struts_action", "/cabioportlet/view");
	    portletURL.setParameter("tabs1", tab);
        session.setAttribute("portletURL",portletURL);
	}
	
    session.setAttribute("tab",tab);
%>

<script type="text/javascript">
    var PROXY_URL = "/cabioportlets/proxy";
    var GETHTML_URL = '<bean:message key="cabio.restapi.url"/>GetHTML?query=';
    var DETAILS_URL = '<c:url value="/objectDetails"/>';
</script>

<c:if test="${portletURL != null}">
<liferay-ui:tabs
	names="Simple Search,Templated Searches,About"
	url="<%= portletURL.toString() %>"
	value="<%= tab %>"
/>
</c:if>

<html:errors/>

<tiles:useAttribute id="formContent" 
    name="form_content" classname="java.lang.String" ignore="true" />
    
<c:if test="${formContent != null}">
     
	<tiles:useAttribute id="queryName" 
	    name="query_name" classname="java.lang.String" ignore="true" />
    
    <a id="query_link"><c:out value="${queryName}"/></a>
        
    <script type="text/javascript">    
    jQuery(document).ready(function(){
        caBioCommon.createDropBox('#query_link','.query');
        jQuery("#page").val("0");
    });
    </script>

    <jsp:include page="<%= formContent %>" flush="true"/>
    
</c:if>
    
<c:if test="${tilesPortletContent != null}">
    <jsp:include page="<%= tilesPortletContent %>" flush="true"/>
</c:if>

<div id="debug"></div>
</div>