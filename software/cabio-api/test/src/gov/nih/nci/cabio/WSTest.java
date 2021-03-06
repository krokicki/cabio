/*L
 *  Copyright SAIC
 *
 *  Distributed under the OSI-approved BSD 3-Clause License.
 *  See http://ncip.github.com/cabio/LICENSE.txt for details.
 */

package gov.nih.nci.cabio;

import gov.nih.nci.cabio.domain.Chromosome;
import gov.nih.nci.cabio.domain.Gene;
import gov.nih.nci.cabio.domain.GeneOntology;
import gov.nih.nci.cabio.domain.GeneOntologyRelationship;
import gov.nih.nci.cabio.domain.Taxon;
import gov.nih.nci.search.SearchQuery;
import gov.nih.nci.search.SearchResult;

import javax.xml.namespace.QName;
import javax.xml.rpc.ParameterMode;

import junit.framework.TestCase;

import org.apache.axis.client.Call;
import org.apache.axis.client.Service;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Tests for the caBIO web services. This suite contains unit tests for each
 * method of the web services API. It also tests a few nested queries. 
 * 
 * @author <a href="mailto:rokickik@mail.nih.gov">Konrad Rokicki</a>
 */
public class WSTest extends TestCase {

    private static String WS_URL;
    
    private Call call; 
        
    static {
        // attempt to get the right URL from the Java client configuration
        ApplicationContext ctx = 
            new ClassPathXmlApplicationContext("application-config-client.xml");
        WS_URL = (String) ctx.getBean("RemoteServerURL") + "/services/caBIOService";
        System.out.println("WS URL: "+WS_URL);
    }
    
    private void register(String urn, Class clazz) {
        QName qn = new QName(urn, clazz.getSimpleName());
        call.registerTypeMapping(clazz, qn,
                new org.apache.axis.encoding.ser.BeanSerializerFactory(clazz, qn),
                new org.apache.axis.encoding.ser.BeanDeserializerFactory(clazz, qn));
    }
    
    /**
     * Setup the Axis Call object and initialize the WS type mappings 
     * used in the test cases.
     */
    public void setUp() throws Exception {

        Service service = new Service();
        this.call = (Call)service.createCall();
        call.setTargetEndpointAddress(new java.net.URL(WS_URL));
        register("urn:domain.cabio.nci.nih.gov", Gene.class);
        register("urn:domain.cabio.nci.nih.gov", Chromosome.class);
        register("urn:domain.cabio.nci.nih.gov", Taxon.class);
        register("urn:domain.cabio.nci.nih.gov", GeneOntology.class);
        register("urn:domain.cabio.nci.nih.gov", GeneOntologyRelationship.class);
        register("urn:search.nci.nih.gov", SearchQuery.class);
        register("urn:search.nci.nih.gov", SearchResult.class);
    }

    /**
     * Ensure getVersion returns the current version.
     */
    public void testGetVersion() throws Exception {

        call.clearOperation();
        call.setOperationName(new QName("caBIOService", "getVersion"));
        call.setReturnType(org.apache.axis.encoding.XMLType.XSD_STRING);
        String version = (String)call.invoke(new Object[0]);
        
        assertNotNull(version);
        assertEquals("4.2",version);
    }

    /**
     * Ensure getRecordsPerQuery returns a positive number. 
     */
    public void testTotalNumberOfRecords() throws Exception {

        call.clearOperation();
        call.setOperationName(new QName("caBIOService", "getRecordsPerQuery"));
        call.setReturnType(org.apache.axis.encoding.XMLType.XSD_INT);
        Integer count = (Integer)call.invoke(new Object[0]);
        assertNotNull(count);
        assertTrue(count>0);
    }
    
    /**
     * Ensure getTotalNumberOfRecords for the Gene is a positive number.
     */
    public void testGetNumberOfGenes() throws Exception {

        call.clearOperation();
        call.setOperationName(new QName("caBIOService", "getTotalNumberOfRecords"));
        call.addParameter("arg1",org.apache.axis.encoding.XMLType.XSD_STRING,ParameterMode.IN);
        call.addParameter("arg2", org.apache.axis.encoding.XMLType.XSD_ANYTYPE, ParameterMode.IN);        
        call.setReturnType(org.apache.axis.encoding.XMLType.XSD_INT);
    
        Integer count = (Integer)call.invoke(new Object[] { "gov.nih.nci.cabio.domain.Gene", new Gene() });
        assertNotNull(count);
        assertTrue((count>0));
    }

    /**
     * Tests queryObject method. Query for Genes, where Gene symbol starts with 
     * "br*", and taxon is Human. Ensure result list is not empty and all 
     * result genes have ids and gene symbols.
     */
    public void testQueryGeneTaxon() throws Exception {

        call.clearOperation();
        call.setOperationName(new QName("caBIOService", "queryObject"));
        call.addParameter("arg1",org.apache.axis.encoding.XMLType.XSD_STRING,ParameterMode.IN);
        call.addParameter("arg2", org.apache.axis.encoding.XMLType.XSD_ANYTYPE, ParameterMode.IN);        
        call.setReturnType(org.apache.axis.encoding.XMLType.SOAP_ARRAY);
        
        Gene gene = new Gene();
        gene.setSymbol("br*");
        Taxon tax = new Taxon();
        tax.setId(new Long(5));
        gene.setTaxon(tax);
        
        Object[] resultList = (Object[])call.invoke(
            new Object[] { "gov.nih.nci.cabio.domain.Gene", gene });

        assertNotNull(resultList);
        assertTrue(resultList.length > 0);

        for(int i=0; i<resultList.length; i++) {
            Gene g = (Gene)resultList[i];
            assertNotNull(g);
            assertNotNull(g.getId());
            assertNotNull(g.getSymbol());
        }
    }

    /**
     * Tests queryObject method. Query for parent GeneOntologyRelationship by 
     * setting childGeneOntology. Ensure result list is not empty and that 
     * all result GeneOntologyRelationship objects have ids and relationshipType.
     */
    public void testQueryGeneOntology() throws Exception {

        call.clearOperation();
        call.setOperationName(new QName("caBIOService", "queryObject"));
        call.addParameter("arg1",org.apache.axis.encoding.XMLType.XSD_STRING,ParameterMode.IN);
        call.addParameter("arg2", org.apache.axis.encoding.XMLType.XSD_ANYTYPE, ParameterMode.IN);
        call.setReturnType(org.apache.axis.encoding.XMLType.SOAP_ARRAY);

        GeneOntology geneOntology = new GeneOntology();
        geneOntology.setId(new Long(5125));
        GeneOntologyRelationship geneor = new GeneOntologyRelationship();
        geneor.setChildGeneOntology(geneOntology);

        Object[] resultList = (Object[])call.invoke(
            new Object[] { "gov.nih.nci.cabio.domain.GeneOntologyRelationship", geneor });

        assertNotNull(resultList);
        assertTrue(resultList.length > 0);
        
        for(int i=0; i<resultList.length; i++){
            GeneOntologyRelationship gor = (GeneOntologyRelationship)resultList[i];
            assertNotNull(gor);
            assertNotNull(gor.getId());
            assertNotNull(gor.getRelationshipType());
        }
    }
    
    /**
     * Test queryObject method. Query GeneOntology by Genes with symbol "brca". 
     * Using the result Gene Ontologies get the child GeneOntologyRelationship.
     * Ensure all result GeneOntologyRelationship objects have ids and relationshipType.
     */
    public void testGetAssociation() throws Exception {

        call.clearOperation();
        call.setOperationName(new QName("caBIOService", "queryObject"));
        call.addParameter("arg1",org.apache.axis.encoding.XMLType.XSD_STRING,ParameterMode.IN);
        call.addParameter("arg2", org.apache.axis.encoding.XMLType.XSD_ANYTYPE, ParameterMode.IN);
        call.setReturnType(org.apache.axis.encoding.XMLType.SOAP_ARRAY);

        Gene g = new Gene();
        g.setSymbol("nat*");
        Object[] resultList = (Object[])call.invoke(
            new Object[] { "gov.nih.nci.cabio.domain.GeneOntology", g });        

        assertNotNull(resultList);
        assertTrue(resultList.length > 0);
        
        call.clearOperation();
        call.setOperationName(new QName("caBIOService", "getAssociation"));
        call.addParameter("arg1", org.apache.axis.encoding.XMLType.XSD_ANYTYPE, ParameterMode.IN);
        call.addParameter("arg2",org.apache.axis.encoding.XMLType.XSD_STRING,ParameterMode.IN);
        call.addParameter("arg3",org.apache.axis.encoding.XMLType.XSD_INTEGER,ParameterMode.IN);
        call.setReturnType(org.apache.axis.encoding.XMLType.SOAP_ARRAY);
        
        for(int i=0; i<resultList.length; i++) {
            GeneOntology geneOnt = new GeneOntology();
            geneOnt = (GeneOntology)resultList[i];
            Object[] childGOCollection = 
                (Object[])call.invoke(new Object[] { 
                geneOnt, "childGeneOntologyRelationshipCollection", new Integer(0) });

            for(int o=0; o<childGOCollection.length; o++){
                GeneOntologyRelationship childGOR = (GeneOntologyRelationship)childGOCollection[o];
                assertNotNull(childGOR);
                assertNotNull(childGOR.getId());
                assertNotNull(childGOR.getRelationshipType());
            }
        }
    }

    /**
     * Test exists method for Grid Ids by querying with BRCA1's bigid.
     */
    public void testGridIdExists() throws Exception {
        
        String bigId = "hdl://2500.1.PMEUQUCCL5/DXZ7ZIOFOE";
        
        call.clearOperation();
        call.setOperationName(new QName("caBIOService", "exist"));
        call.addParameter("arg1",org.apache.axis.encoding.XMLType.XSD_STRING,ParameterMode.IN);        
        call.setReturnType(org.apache.axis.encoding.XMLType.XSD_BOOLEAN);

        boolean found = ((Boolean)call.invoke(new Object[] {bigId})).booleanValue();
        assertTrue(found);
    }
    
    /**
     * Test getDataObject method for Grid Ids by querying for the Gene BRCA1
     * with its bigId.
     */
    public void testGetDataObject() throws Exception {
        
        String bigId = "hdl://2500.1.PMEUQUCCL5/DXZ7ZIOFOE";

        call.clearOperation();
        call.setOperationName(new QName("caBIOService", "getDataObject"));
        call.addParameter("arg1",org.apache.axis.encoding.XMLType.XSD_STRING,ParameterMode.IN);        
        call.setReturnType(org.apache.axis.encoding.XMLType.XSD_ANYTYPE);

        Gene dataObject = (Gene)call.invoke(new Object[] {bigId}); 
        assertNotNull(dataObject);
        assertEquals(dataObject.getBigid(), bigId);
    }
    
    /**
     * Ensure Freestyle search with a SearchQuery works.
     */
    public void testFreestyleSearch() throws Exception {

        SearchQuery query = new SearchQuery();
        query.setKeyword("Tirapazamine");
        
        call.clearOperation();
        call.setOperationName(new QName("caBIOService", "search"));
        call.addParameter("arg1",org.apache.axis.encoding.XMLType.XSD_ANYTYPE,ParameterMode.IN);     
        call.setReturnType(org.apache.axis.encoding.XMLType.SOAP_ARRAY);
        Object[] resultList = (Object[])call.invoke(new Object[] {query});
        
        assertNotNull(resultList);
        assertTrue(resultList.length>0);

        boolean agentFound = false;
        for(Object o : resultList) {
            SearchResult sr = (SearchResult)o;
            assertNotNull(sr);
            if (sr.getClassName().endsWith(".Agent")) {
                agentFound = true;
            }
        }
        
        assertTrue("No agent found in results",agentFound);
    }

}