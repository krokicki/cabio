package gov.nih.nci.maservice.util;

import gov.nih.nci.maservice.domain.Microarray;
import gov.nih.nci.iso21090.St;

import com.sun.xml.bind.CycleRecoverable;
import gov.nih.nci.system.client.util.xml.JAXBISOAdapter;
import gov.nih.nci.system.client.util.xml.JAXBISOIvlPqAdapter;
import gov.nih.nci.system.client.util.xml.JAXBISOIvlRealAdapter;
import gov.nih.nci.system.client.util.xml.JAXBISOIvlTsAdapter;
import gov.nih.nci.system.client.util.xml.JAXBISOIvlIntAdapter;
import gov.nih.nci.system.client.util.xml.JAXBISODsetAdAdapter;
import gov.nih.nci.system.client.util.xml.JAXBISODsetIiAdapter;
import gov.nih.nci.system.client.util.xml.JAXBISODsetCdAdapter;
import gov.nih.nci.system.client.util.xml.JAXBISODsetTelAdapter;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.bind.annotation.XmlTransient;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

import java.io.Serializable;


/**
	* 
	**/

@XmlAccessorType(XmlAccessType.NONE)
@XmlSeeAlso({gov.nih.nci.maservice.util.SearchCriteria.class})
@XmlType(name = "ReporterSearchCriteria", namespace="gme://caCORE.caCORE/3.2/gov.nih.nci.maservice.util", propOrder = {"reporterName", "microarray"})
@XmlRootElement(name="ReporterSearchCriteria", namespace="gme://caCORE.caCORE/3.2/gov.nih.nci.maservice.util")
public class ReporterSearchCriteria extends SearchCriteria implements Serializable, CycleRecoverable
{
	/**
	* An attribute to allow serialization of the domain objects
	*/
	private static final long serialVersionUID = 1234567890L;

	
	/**
	* 
	**/
	
	private St reporterName;
	/**
	* Retrieves the value of the reporterName attribute
	* @return reporterName
	**/
    @XmlElement(namespace="gme://caCORE.caCORE/3.2/gov.nih.nci.maservice.util")
    @XmlJavaTypeAdapter(JAXBISOAdapter.class)
	public St getReporterName(){
		return reporterName;
	}

	/**
	* Sets the value of reporterName attribute
	**/

	public void setReporterName(St reporterName){
		this.reporterName = reporterName;
	}
	
	/**
	* An associated gov.nih.nci.maservice.domain.Microarray object
	**/
	
	@XmlElement(name="microarray", 
				type=Microarray.class,
				namespace="gme://caCORE.caCORE/3.2/gov.nih.nci.maservice.domain")
	private Microarray microarray;
	/**
	* Retrieves the value of the microarray attribute
	* @return microarray
	**/
	@XmlTransient
	public Microarray getMicroarray(){
		return microarray;
	}
	/**
	* Sets the value of microarray attribute
	**/

	public void setMicroarray(Microarray microarray){
		this.microarray = microarray;
	}
			    public Object onCycleDetected(Context arg0) {
		return null;
	}

	
}