/*L
 *  Copyright SAIC
 *
 *  Distributed under the OSI-approved BSD 3-Clause License.
 *  See http://ncip.github.com/cabio/LICENSE.txt for details.
 */

package gov.nih.nci.cabio;

import gov.nih.nci.search.SearchQuery;
import gov.nih.nci.search.SearchResult;
import gov.nih.nci.search.SummaryQuery;
import gov.nih.nci.search.SummaryResult;
import gov.nih.nci.system.applicationservice.CaBioApplicationService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import junit.framework.TestCase;

/**
 * Tests the FreestyleLM Search API.
 * 
 * @author <a href="mailto:rokickik@mail.nih.gov">Konrad Rokicki</a>
 */
public class FreestyleLMTest extends TestCase {

    private final CaBioApplicationService appService = AllTests.getService();
    
    /**
     * Executes a search for the string "12q12" and verifies that the results
     * contains at least one Cytoband object and at least one Evidence object.
     * Checks to ensure the Cytoband.name and Evidence.sentence contain the 
     * query string.
     */
    public void testBasicSearch() throws Exception {
        
        String keyword = "13q12";
        
        SearchQuery searchQuery = new SearchQuery();
        searchQuery.setKeyword(keyword);

        List results = appService.search(searchQuery);
        
        boolean cytobandFound = false;
        boolean evidenceFound = false;
        
        for(Object o : results) {
            SearchResult res = (SearchResult)o;
            if (res.getClassName().endsWith("Cytoband")) {
                cytobandFound = true;
                String value = (String)res.getProperties().get("name");
                assertTrue(value.contains(keyword));
                
            }
            if (res.getClassName().endsWith("Evidence")) {
                evidenceFound = true;
                String value = (String)res.getProperties().get("sentence");
                assertTrue(value.contains(keyword));
            }
        }
        
        assertTrue("No Cytoband objects returned", cytobandFound);
        assertTrue("No Evidence objects returned", evidenceFound);
    }

    /**
     * Compares the results of a summary query with a full query.
     * @throws Exception
     */
    public void testSummaryQuery() throws Exception {
        
        String keyword = "brca1";

        Map<String,Integer> fullCounts = new HashMap<String,Integer>();
        Map<String,Integer> summaryCounts = new HashMap<String,Integer>();
        
        // do a full search
        
        SearchQuery searchQuery = new SearchQuery();
        searchQuery.setKeyword(keyword);
        List<SearchResult> fullResults = appService.search(searchQuery);
        
        for(SearchResult sr : fullResults) {
            String className = sr.getClassName();
            int count = 0;
            if (fullCounts.containsKey(className)) {
                count = fullCounts.get(className);
            }
            count++;
            fullCounts.put(className,count);
        }
        
        // do a summary search
        
        SummaryQuery summaryQuery = new SummaryQuery();
        summaryQuery.setKeyword(keyword);
        List<SummaryResult> summaryResults = appService.search(summaryQuery);
        
        for(SummaryResult sr : summaryResults) {
            summaryCounts.put(sr.getClassName(), sr.getHits());
        }
        
        // compare full results with summary results
        
        for(String className : fullCounts.keySet()) {
            Integer fullCount = fullCounts.get(className);
            Integer summaryCount = summaryCounts.get(className);
            assertEquals("Counts inaccurate for "+className, 
                fullCount, summaryCount);
        }
        
        
    }
}