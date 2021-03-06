<%--L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L--%>

<%@ include file="/WEB-INF/jsp/init.jsp" %>

<script type="text/javascript">
    jQuery(document).ready(function(){
      caBioCommon.createDropBox("#evidence_link2","#evidenceproperties_box2");
    });
</script>


<div id="queries_cancer_diseasetogenes" class="query">

    <html:form action="/cabioportlet/diseaseToGenesQuery">
    <html:hidden property="page" styleId="page"/>

    <table>
    
    <tr><td title="Disease Name or EVS concept code Id"><label for="queries_cancer_diseasetogenes_disease">Disease (name or concept code)</label></td><td>
    <html:text property="disease" size="30" styleId="queries_cancer_diseasetogenes_disease"/>
    </td></tr>
    <tr><td colspan=2>
        <a id="evidence_link2">Advanced search criteria</a>
		<div id="evidenceproperties_box2" class="advancedOptions">
		<c:set var="parent" value="diseaseToGenes" scope="request"/>
         <jsp:include page="/WEB-INF/jsp/canned/cgiEvidenceProperties.jsp" flush="true"/>
        </div>
    </td></tr>    
    </table>

    <html:submit>Search</html:submit>
    <html:reset>Reset</html:reset>

    </html:form>
</div>
