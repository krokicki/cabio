/*L
 *  Copyright SAIC
 *
 *  Distributed under the OSI-approved BSD 3-Clause License.
 *  See http://ncip.github.com/cabio/LICENSE.txt for details.
 */

package gov.nih.nci.system.webservice;

import gov.nih.nci.system.applicationservice.ApplicationService;
import gov.nih.nci.system.applicationservice.CaBioApplicationService;
import gov.nih.nci.system.applicationservice.impl.CaBioApplicationServiceImpl;
import gov.nih.nci.system.webservice.util.WSUtils;

import java.util.List;

/**
 * Adds caBIO-specific methods to the web service. 
 * 
 * @author <a href="mailto:muhsins@mail.nih.gov">Shaziya Muhsin</a>
 * @author <a href="mailto:rokickik@mail.nih.gov">Konrad Rokicki</a>
 */
public class CaBioWSQuery extends WSQueryImpl {
    
    private static final WSUtils wsUtils = new WSUtils();
    
    private String version = "4.2";
    
    public CaBioWSQuery() {
        super();
    }
    
    public String getVersion(){
        return version;
    }
    
    /**
     * Implements the freestyleLM search
     */
    public List search(gov.nih.nci.search.SearchQuery searchQuery)
            throws Exception {
        ApplicationService applicationService = (ApplicationService)getWebApplicationContext().getBean("ApplicationServiceImpl");
        return ((CaBioApplicationService)applicationService).search(searchQuery);
    }

    /**
     * Returns true if the bigid exists in the database.
     */
    public boolean exist(String bigId) throws Exception {
        return getApplicationService().exist(bigId);
    }

    /**
     * Returns the data object for a given bigid.
     */
    public Object getDataObject(String bigId) throws Exception {
        CaBioApplicationService as = getApplicationService();
        return wsUtils.convertToProxy(as, as.getDataObject(bigId));
    }

    /**
     * Returns an instance of a CabioApplicationService.
     */
    private CaBioApplicationServiceImpl getApplicationService()
            throws Exception {
        return (CaBioApplicationServiceImpl) 
            getWebApplicationContext().getBean("ApplicationServiceImpl");
    }

}
