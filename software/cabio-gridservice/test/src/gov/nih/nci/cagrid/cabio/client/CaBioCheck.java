/*L
 *  Copyright SAIC
 *
 *  Distributed under the OSI-approved BSD 3-Clause License.
 *  See http://ncip.github.com/cabio/LICENSE.txt for details.
 */

package gov.nih.nci.cagrid.cabio.client;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

import gov.nih.nci.cadsr.umlproject.domain.Project;
import gov.nih.nci.cadsr.umlproject.domain.UMLClassMetadata;
import gov.nih.nci.cadsr.umlproject.domain.UMLPackageMetadata;
import org.cagrid.cadsr.client.CaDSRUMLModelService;

import org.kohsuke.args4j.CmdLineParser;
import org.kohsuke.args4j.CmdLineException;

public class CaBioCheck {
	private static String projectName = "caBIO";
	private static String projectVersion = "4.2";
	private static String beansFileName = "cabio42-beans.jar";
	//private static String cadsrDataServiceUrl = "http://cadsr-dataservice-sandbox.nci.nih.gov:80/wsrf/services/cagrid/CaDSRDataService";
	private static String cadsrDataServiceUrl = "http://cadsr-dataservice.nci.nih.gov:80/wsrf/services/cagrid/CaDSRDataService";
	
    /**
     * @param args
     */
    public static void main(String[] args) {
  	    MyOptions bean = new MyOptions();
 	    CmdLineParser parser = new CmdLineParser(bean);

    	try { 
        	parser.parseArgument(args);
        	if ( bean.caDsrServiceURL !=null)
        	{
        		cadsrDataServiceUrl = bean.caDsrServiceURL;
        	}
        	 
        	String projectName = bean.projectName;
        	String projectVersion = bean.projectVersion;
        	beansFileName = bean.beanFileName;
        	
        	CaBioCheck check = new CaBioCheck();
        	Collection<String> classList = check.getClasses();
        	        	
        	System.out.println("CaDSR URL: " + cadsrDataServiceUrl);
        	System.out.println("========================================================");
            CaDSRUMLModelService client = new CaDSRUMLModelService(cadsrDataServiceUrl);
            System.out.println("Finding projects");
            Project[] projects = client.findAllProjects();
            Project cabio = null;
            for (Project p : projects) {
                if (p.getShortName().equals(projectName) && p.getVersion().equals(projectVersion)) {
                    cabio = p;
                    System.out.println("Found project: " + projectName + projectVersion );
                    break;
                }
            }

            if ( cabio == null)
            { 
                System.out.println("No project found for: " + projectName + projectVersion );
                return;
            }

            System.out.println("Finding packages");
            UMLPackageMetadata[] packages = client.findPackagesInProject(cabio);
            String fullClassname = "";
            int totalClasses = 0;
            for (UMLPackageMetadata pack : packages) {
                System.out.println("Package " + pack.getName());
                UMLClassMetadata[] classes = client.findClassesInPackage(cabio, pack.getName());
                for (UMLClassMetadata clazz : classes) {
                	fullClassname = String.format("%s.%s", pack.getName(), clazz.getName());
                    if ( classList.contains(fullClassname) )
                    {
                      System.out.println("\t" + clazz.getName());
                    }
                    else 
                    {
                    	System.out.println("\t" + clazz.getName() + " ***NOT FOUND***");
                    }
                    totalClasses++;
                }
            }
            
            System.out.println( String.format("Total classes in caDSR: %d", totalClasses));
            System.out.println( String.format("Total classes in %s: %d", beansFileName, classList.size()));
            
            System.out.println("DONE");
            
        } catch( CmdLineException e ) {
                System.err.println(e.getMessage());
                System.err.println("java -jar myprogram.jar [options...] arguments...");
                parser.printUsage(System.err);
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

	private Collection<String> getClasses() throws Exception
	{
		//Collection<Class> list = new ArrayList<Class>();
		Collection<String> list = new ArrayList<String>();
		JarFile file = null;
		int count = 0;
		for(File f:new File("lib").listFiles())
		{
			if(f.getName().equalsIgnoreCase(beansFileName))
			{
				file = new JarFile(f);
				count++;
			}
		}
		
		if ( file == null )
		{
			for(File f:new File("test/resources").listFiles())
			{
				if(f.getName().equalsIgnoreCase(beansFileName))
				{
					file = new JarFile(f);
					count++;
				}
			}			
		}
		
		if(file == null) throw new Exception("Could not locate the bean jar");
		if(count>1) throw new Exception("Found more than one bean jar");
		
		Enumeration e = file.entries();
		while(e.hasMoreElements())
		{
			JarEntry o = (JarEntry) e.nextElement();
			if(!o.isDirectory())
			{
				String name = o.getName();
				if(name.endsWith(".class"))
				{
					String klassName = name.replace('/', '.').substring(0, name.lastIndexOf('.'));
					list.add(klassName);
				}
			}
		}
		return list;
	}    
	
	public static void usage(){
		System.out.println("No URL is provided and use default: " + cadsrDataServiceUrl);
		System.out.println(CaBioCheck.class.getName() + " -url <service url>");
	}
	
}
