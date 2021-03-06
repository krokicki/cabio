/*L
 *  Copyright SAIC
 *
 *  Distributed under the OSI-approved BSD 3-Clause License.
 *  See http://ncip.github.com/cabio/LICENSE.txt for details.
 */

package gov.nih.nci.cabio.portal.portlet.canned;


/**
 * @author <a href="mailto:rokickik@mail.nih.gov">Konrad Rokicki</a>
 */
public class GoByProteinNameAccessionQueryForm extends PaginatedForm {

    private String proteinNameAccession = "somatotropin";

    /**************************************************************************/
    /**                     AUTO-GENERATED BEAN METHODS                       */
    /**************************************************************************/
 
    public String getProteinNameAccession() {
        return proteinNameAccession;
    }

    public void setProteinNameAccession(String proteinNameAccession) {
        this.proteinNameAccession = proteinNameAccession;
    }
}
