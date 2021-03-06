/*L
 *  Copyright SAIC
 *
 *  Distributed under the OSI-approved BSD 3-Clause License.
 *  See http://ncip.github.com/cabio/LICENSE.txt for details.
 */

package gov.nih.nci.caBIOApp.report;

import java.io.IOException;
import java.io.OutputStream;

public interface Spreadsheet {

    public Row createRow();

    public void addRow(Row row);

    public void addRows(Row[] rows);

    public void setRows(Row[] rows);

    public Row[] getRows();

    public void write(OutputStream out) throws IOException;

    public void setName(String s);

    public String getName();

    public int getNumRows();

}
