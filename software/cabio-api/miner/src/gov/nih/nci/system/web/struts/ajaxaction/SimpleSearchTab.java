/*L
 *  Copyright SAIC
 *
 *  Distributed under the OSI-approved BSD 3-Clause License.
 *  See http://ncip.github.com/cabio/LICENSE.txt for details.
 */

package gov.nih.nci.system.web.struts.ajaxaction;

import com.opensymphony.xwork2.Action;

import java.io.Serializable;
import org.apache.log4j.Logger;

/**
 */
public class SimpleSearchTab implements Action, Serializable {
	private static Logger log = Logger.getLogger(SimpleSearchTab.class
			.getName());

	public String execute() throws Exception {
		log.debug("SimpleSearchTab.action called so that localized messages are available on AJAX Home.jsp");		
        return SUCCESS;
    }
}	
