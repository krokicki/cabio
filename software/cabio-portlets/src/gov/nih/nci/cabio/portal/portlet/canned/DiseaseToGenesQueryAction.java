/*L
 *  Copyright SAIC
 *
 *  Distributed under the OSI-approved BSD 3-Clause License.
 *  See http://ncip.github.com/cabio/LICENSE.txt for details.
 */

package gov.nih.nci.cabio.portal.portlet.canned;

import gov.nih.nci.cabio.domain.GeneDiseaseAssociation;
import gov.nih.nci.cabio.portal.portlet.ReportService;
import gov.nih.nci.cabio.portal.portlet.Results;
import gov.nih.nci.system.applicationservice.CaBioApplicationService;
import gov.nih.nci.system.client.ApplicationServiceProvider;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 * @author <a href="mailto:rokickik@mail.nih.gov">Konrad Rokicki</a>
 * @author <a href="mailto:sunj2@mail.nih.gov">Jim Sun</a>
 */
public class DiseaseToGenesQueryAction extends Action {

    private static Log log = LogFactory.getLog(DiseaseToGenesQueryAction.class);
    
    private CaBioApplicationService as;
    private ReportService rs;
    
    public DiseaseToGenesQueryAction() throws Exception {
        this.as = (CaBioApplicationService)
            ApplicationServiceProvider.getApplicationService();
        this.rs = new ReportService(as);
    }
    
	@Override
    public ActionForward execute(ActionMapping mapping, ActionForm form, 
            HttpServletRequest req, HttpServletResponse res) throws Exception {

	    try {
	        DiseaseToGenesQueryForm f = (DiseaseToGenesQueryForm)form;
            String diseaseInput = f.getDisease();
	        String negationStatus = f.getSentenceType();
	        String unfinishedSentence = f.getUnfinishedSentence();
	        String celllineStatus = f.getCellline();
	        
            log.info("disease: "+diseaseInput);
            log.info("page: "+f.getPage());
            List<GeneDiseaseAssociation> results = rs.getGenesByDiseaseWithEvidenceProperties(
            		diseaseInput, negationStatus, unfinishedSentence, celllineStatus);
                             
            
	        req.setAttribute("results", new Results(results, f.getPageNumber()));
            return mapping.findForward("cabioportlet.diseaseToGenesQuery.results");
	    }
	    catch (Exception e) {
	        log.error("Action error",e);
            req.setAttribute("errorMessage", e.getMessage());
	        return mapping.findForward("cabioportlet.error");
	    }
	}
}
