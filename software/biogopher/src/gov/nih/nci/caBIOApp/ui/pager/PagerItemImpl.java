/*L
 *  Copyright SAIC
 *
 *  Distributed under the OSI-approved BSD 3-Clause License.
 *  See http://ncip.github.com/cabio/LICENSE.txt for details.
 */

package gov.nih.nci.caBIOApp.ui.pager;public class PagerItemImpl implements PagerItem {    private String _id = null;    private String[] _values = null;    private boolean _selected = false;    public PagerItemImpl(String id, String[] values) {        _id = id;        _values = values;    }    public void setId(String s) {        _id = s;    }    public String getId() {        return _id;    }    public void setValues(String[] s) {        _values = s;    }    public String[] getValues() {        return _values;    }    public void setSelected(boolean b) {        _selected = b;    }    public boolean isSelected() {        return _selected;    }}