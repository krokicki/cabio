/*L
 *  Copyright SAIC
 *
 *  Distributed under the OSI-approved BSD 3-Clause License.
 *  See http://ncip.github.com/cabio/LICENSE.txt for details.
 */

package gov.nih.nci.caBIOApp.report;

import gov.nih.nci.caBIOApp.ui.ReportDesign;
import gov.nih.nci.caBIOApp.ui.pager.PagerDataSource;
import gov.nih.nci.caBIOApp.ui.pager.PagerItem;
import gov.nih.nci.caBIOApp.ui.pager.PagerItemImpl;
import gov.nih.nci.caBIOApp.util.MessageLog;

public class ReportDatasource implements PagerDataSource {

    String[] _headers = new String[0];
    Table _report = null;
    int _itemCount = -1;

    public ReportDatasource(ReportDesign rd) {
        try {
            ReportGenerator gen = new ReportGenerator(rd);
            _report = gen.generateReport();
            _itemCount = _report.getRowCount();
            int numCols = _report.getColumnCount();
            _headers = new String[numCols];
            for (int i = 0; i < numCols; i++) {
                _headers[i] = _report.getColumnName(i);
            }
        }
        catch (Exception ex) {
            MessageLog.printStackTrace(ex);
            throw new RuntimeException("Error generating report: "
                    + ex.getMessage());
        }
    }

    public int getItemCount() throws Exception {
        return _itemCount;
    }

    public String[] getHeaders() {
        return _headers;
    }

    public PagerItem[] getItems(int startIdx, int numItems) throws Exception {
        PagerItem[] items = new PagerItemImpl[numItems];
        for (int i = 0; i < numItems; i++) {
            String[] vals = new String[_headers.length];
            for (int j = 0; j < _headers.length; j++) {
                vals[j] = _report.getStringValueAt(i + startIdx, j);
            }
            items[i] = new PagerItemImpl(Integer.toString(i), vals);
        }
        return items;
    }

    public Table getReport() {
        return _report;
    }
}
