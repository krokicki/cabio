/*L
 *  Copyright SAIC
 *
 *  Distributed under the OSI-approved BSD 3-Clause License.
 *  See http://ncip.github.com/cabio/LICENSE.txt for details.
 */

package gov.nih.nci.cabio.annotations.query;

import gov.nih.nci.cabio.domain.Gene;
import gov.nih.nci.common.util.QueryUtils;
import gov.nih.nci.system.query.hibernate.HQLCriteria;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class GeneAnnotationsQuery extends InListQuery {
    
    private final Collection<Gene> geneList = new ArrayList<Gene>();
    private final String taxon;
    
    public GeneAnnotationsQuery(Collection<String> geneSymbols, String taxon) {
        super(geneSymbols);
        this.taxon = taxon;
    }

    public Collection<Gene> getResults() {
        return geneList;
    }
           
    protected Object generateQuery(List subList) {

        List params = new ArrayList();
        params.add(taxon);
        params.addAll(subList);
        
        String hql = "select gene from gov.nih.nci.cabio.domain.Gene gene " +
                "left join fetch gene.databaseCrossReferenceCollection as dcr " +
                "left join fetch gene.chromosome " +
                "left join gene.taxon as taxon " +
                "where taxon.abbreviation = ? " +
                "and dcr.dataSourceName = 'LOCUS_LINK_ID' " +
                "and gene.hugoSymbol in "+getPlaceholders(subList);
        
        return new HQLCriteria(hql,QueryUtils.createCountQuery(hql),params);
    }
    
    protected void processResult(Object result) {
        geneList.add((Gene)result);
    }
}