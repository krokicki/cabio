/*L
 *  Copyright SAIC
 *
 *  Distributed under the OSI-approved BSD 3-Clause License.
 *  See http://ncip.github.com/cabio/LICENSE.txt for details.
 */

package gov.nih.nci.caBIOApp.ui.form;import gov.nih.nci.caBIOApp.ui.WorkflowState;import org.apache.struts.action.ActionForm;public class WorkflowExceptionForm extends ActionForm {    private WorkflowState _state = null;    public void setState(WorkflowState ws) {        _state = ws;    }    public WorkflowState getState() {        return _state;    }}