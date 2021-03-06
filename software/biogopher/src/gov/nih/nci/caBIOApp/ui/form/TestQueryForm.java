/*L
 *  Copyright SAIC
 *
 *  Distributed under the OSI-approved BSD 3-Clause License.
 *  See http://ncip.github.com/cabio/LICENSE.txt for details.
 */

package gov.nih.nci.caBIOApp.ui.form;import org.apache.struts.action.ActionForm;import org.apache.struts.upload.FormFile;public class TestQueryForm extends ActionForm {    private FormFile _uploadedFile = null;    private String _operation = null;    public void setUploadedFile(FormFile f) {        _uploadedFile = f;    }    public FormFile getUploadedFile() {        return _uploadedFile;    }    public void setOperation(String s) {        _operation = s;    }    public String getOperation() {        return _operation;    }    public void reset() {        if (_uploadedFile != null) {            _uploadedFile.destroy();        }        _uploadedFile = null;    }}