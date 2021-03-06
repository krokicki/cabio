'#####################################################################################
'#		PEDAL - Portable Event-Driven Automation Library
'#		SpeedTest, Inc. copyright 2009
'#		If you have any questions or need support,
'#		contact:
'#				SpeedTest Inc.
'#				7017 Eden Mill Road  Woodbine, MD 21797
'#				410-627-7373, info@speedtestinc.com
'#
'#      This code is the property of SpeedTest Inc. and is conveyed tas a  component
'#      of a services contract, without restrictions on its use.
'#      Use by anyone other than client personnel in support of the project for which SpeedTest is contracted
'#      is a copyright infringement.
'#      Client bears sole responsibility for the use and implementation of this code.  It is conveyed by 
'#      SpeedTest without license, warranty or support beyond the services contract period.
'#####################################################################################

'#####################################################################################		
'#		The following is the Project Function Library for the ST automated test framework
'#		It uses an event-driven approach to read data from a data table and 
'#		execute the test based upon that data.  The functions in this library
'#		perform the utility type operations that are specific tothe project or appliaction under test  and 
'# 		are not related to a GUI object.
'#
'#	Data array key:
'#	Data(0) = DataTable("Application", dtGlobalSheet)
'#	Data(1) = DataTable("Page", dtGlobalSheet)
'#	Data(2) = DataTable("Field", dtGlobalSheet)
'#	Data(3) = DataTable("Action", dtGlobalSheet)
'#	Data(4) = DataTable("Value", dtGlobalSheet)
'#	Data(5) = DataTable("ObjectNameOrKeyword", dtGlobalSheet)
'#	Data(6) = DataTable("ObjectType", dtGlobalSheet)
'#	Data(7) = DataTable("ObjPar1", dtGlobalSheet)
'#	Data(8) = DataTable("ObjPar2", dtGlobalSheet)
'#	Data(9) = DataTable("SynchPar1", dtGlobalSheet)
'#	Data(10) = DataTable("SynchPar2", dtGlobalSheet)
'#	Data(11) = DataTable("comment", dtGlobalSheet)
'#	Data(12) = DataTable("debug", dtGlobalSheet)
'# 
'#####################################################################################
'********************************************************************************************************************************************
Public Function ProjFunc_Handler (Data,CurrentRow,ResultsFileObj)
	
	GUIObjRef = "Browser(Data(0)).Page(Data(1))."
	If Data(2) <> "" Then
		GUIObjRef = GUIObjRef & "Frame(Data(2))."
	End If
	'GUIObjRef = GUIObjRef & "Link(Data(5))."
	GUIObjRef = GUIObjRef & Data(6) & "(Data(5))."

 
	Select Case LCase(Data(6))
		Case "proj_cabio_pgverify"
                	status = cabio_pgverify(Data,CurrentRow,ResultsFileObj)
		Case "proj_cabio_clkdomain_pkg"
			status = cabio_clkdomain_pkg(Data,CurrentRow,ResultsFileObj)
		Case "proj_verify_cabio_clkdomain_pkg"
			status = verify_cabio_clkdomain_pkg(Data,CurrentRow,ResultsFileObj)
		Case "proj_clk_bio_domain"
			status = clk_bio_domain(Data,CurrentRow,ResultsFileObj)
		Case "proj_clk_on_agent"
			status = clk_on_agent(Data,CurrentRow,ResultsFileObj)
		Case "proj_data_entry"
			status = data_entry(Data,CurrentRow,ResultsFileObj)
		Case "proj_clk_search_btn"
			status = Clk_Search_btn(Data,CurrentRow,ResultsFileObj)
		Case "proj_search_object"
			status = search_object(Data,CurrentRow,ResultsFileObj)
		Case "projfunc_cai_createnewstudyoverview"
			status = caIntegrator_createNewStudyOverview(Data,CurrentRow,ResultsFileObj)
		Case "projfunc_cai_addstudylogo"
			status = caIntegrator_addStudyLogo(Data,CurrentRow,ResultsFileObj)
		Case "projfunc_cai_annotationgroups"
			status = caIntegrator_AnnotationGroups(Data,CurrentRow,ResultsFileObj)
		Case "projfunc_cai_subjectannotationdatasource"
			status = caIntegrator_SubjectAnnotationDataSource(Data,CurrentRow,ResultsFileObj)
		Case "projfunc_cai_genomicdatasources"
			status = caIntegrator_GenomicDataSources (Data,CurrentRow,ResultsFileObj)
		Case "projfunc_cai_definefieldsforsubjectdata"
			status = caIntegrator_defineFieldsForSubjectData(Data,CurrentRow,ResultsFileObj)
		Case "projfunc_cai_imagingdatasources"
			status = caIntegrator_ImagingDataSources (Data,CurrentRow,ResultsFileObj)
		Case "projfunc_cai_externallinks"
			status = caIntegrator_ExternalLinks (Data,CurrentRow, ResultsFileObj)
		Case "projfunc_cai_deploystudy"
			status = caIntegrator_deployStudy(Data,CurrentRow, ResultsFileObj)
		Case "projfunc_cai_verifystudydeployment"
			status = caIntegrator_verifyStudyDeployment(Data,CurrentRow, ResultsFileObj)
		Case "projfunc_cai_survivalvalues"
			status = caIntegrator_SurvivalValues (Data,CurrentRow,ResultsFileObj)
		Case Else
			Reporter.ReportEvent micFail, Data(5), "The object type was not found!"
			'Msgbox "Something Not right !!!"

	End Select
'msgbox status
	ProjFunc_Handler = status
End Function
'**********************************************************************************************************************************************************
'					caBio PROJECT SPECIFIC FUNCTIONS										  '
'						Laxmi 	Prerepa											  '
'**********************************************************************************************************************************************************



Public Function cabio_pgverify(Data,CurrentRow,ResultsFileObj) 
	'********************************************************************************************
	'This function to Verify if the page is displayed after the continue clk on the Home page
	'Validating the Webelement Domain Class Browser with Inner text property
	'********************************************************************************************
	Browser(Data(0)).Page(Data(1)).Sync
	Data(6) = "WebElement"
	Data(5) = "Innertext:=Domain Class Browser"
	Data(4) = "Domain Class Browser"
	Data(3) = "verify"
	var_Exist = ST_ObjectHandler(Data,CurrentRow,ResultsFileObj)
	If (var_Exist = "Pass") Then
		ST_CustomReporting Data,"Pass",CurrentRow,ResultsFileObj
		Reporter.ReportEvent micPass,"cabio_pgverify","Contiue Click On HomePage successful"
		cabio_pgverify = "Pass"
	Else
		cabio_pgverify = "Fail"
	End If
End Function
'*******************************************************************************************************************


public Function cabio_clkdomain_pkg(Data ,CurrentRow,ResultsFileObj)
	
	
		'*********************************************************************************
		'This function is to click the First PLus sign on the Content page  called DOmain Packages
		'This will click on the object Domain_pkgs whic is a image
		'*********************************************************************************
	Browser(Data(0)).Page(Data(1)).Sync
	Data(6) = "Image"
	Data(1) = "Content"
	Data(3)="click"	
	Data(5) ="Domain_pkgs"
		var_Exist = ST_ObjectHandler(Data,CurrentRow,ResultsFileObj)
  	If (var_Exist = "Pass") Then
		ST_CustomReporting Data,"Pass",CurrentRow,ResultsFileObj
		Reporter.ReportEvent micPass,"Domain Pakage","Domain Package Click successful"
		cabio_clkdomain_pkg = "Pass"
	Else
		cabio_clkdomain_pkg = "Fail"
	End If

End Function 



'*******************************************************************************************************************
Public function Res_str (Data)

			'**********************************************************
			'This function will output all the data values in a string for the results  easy yo debug.
			'***********************************************************	

		Res_str = "Data(0): " & Data(0) & " Data(1): " & Data(1) & " Data(2): " & Data(2) & " Data(3): " & 			           Data(3) & " Data(4): " & Data(4) & " Data(5): " & Data(5) & " Data(6): " & Data(6) & 			                   " Data(7): " & Data(7) & " Data(8): " & Data(8) & " Data(9): " & Data(9) & "Data(10): " & 			           Data(10) & " Data(11): " & Data(11) & " Data(12): " & Data(12)
End function 
'*****************************************************************************************************************

public Function Verify_cabio_clkdomain_pkg(Data ,CurrentRow,ResultsFileObj)
		'*********************************************************************************
		'This function is to Verify after "click the First PLus sign" on the Content page  called DOmain                   Packages
		'This Function will validate all the Five subtrees are presnt on page or not if not abort.
		'*********************************************************************************

		'First   webelement = "gov.nih.nci.cabio.domain"
		'Second  webelement = "gov.nih.nci.cabio.pathways"
		'Third   webelement = "gov.nih.nci.common.domain"
		'Fourth  webelement = "gov.nih.nci.common.provenance.domain"
		'Fifth   webelement = "gov.nih.nci.search"


	Browser(Data(0)).Page(Data(1)).Sync
	wait(3)
	Data(6) = "webelement"
	Data(5) ="lbl_cabio.domain"
	Data(4) = "gov.nih.nci.cabio.domain"
	Data(3)="verify"
	Data(1) = "Content"
	var_Exist = ST_ObjectHandler(Data,CurrentRow,ResultsFileObj)
       
	If (var_Exist = "Pass") Then
		ST_CustomReporting Data,"Pass",CurrentRow,ResultsFileObj
		Reporter.ReportEvent micPass,"Verify_cabio_clkdomain_pkg","Link for gov.nih.nci.cabio.domain verified"
	Else
		cabio_clkdomain_pkg = "Fail"
	End If

	Browser(Data(0)).Page(Data(1)).Sync
	Data(6) = "webelement"
	Data(5) ="lbl_cabio.pathways"
	Data(4) = "gov.nih.nci.cabio.pathways"
	Data(3)="verify"
	Data(1) = "Content"
	var_Exist = ST_ObjectHandler(Data,CurrentRow,ResultsFileObj)
       
	If (var_Exist = "Pass") Then
		ST_CustomReporting Data,"Pass",CurrentRow,ResultsFileObj
		Reporter.ReportEvent micPass,"Verify_cabio_clkdomain_pkg","Link for gov.nih.nci.cabio.pathways verified"
	Else		
		cabio_clkdomain_pkg = "Fail"
	End If

	Browser(Data(0)).Page(Data(1)).Sync
	Data(6) = "webelement"
	Data(5) ="lbl_common.domain"
	Data(4) = "gov.nih.nci.common.domain"
	Data(3)="verify"
	Data(1) = "Content"
	var_Exist = ST_ObjectHandler(Data,CurrentRow,ResultsFileObj)
        
	If (var_Exist = "Pass") Then
		ST_CustomReporting Data,"Pass",CurrentRow,ResultsFileObj
		Reporter.ReportEvent micPass,"Verify_cabio_clkdomain_pkg","Link for gov.nih.nci.common.domain verified"
	Else		
		cabio_clkdomain_pkg = "Fail"
	End If

	Browser(Data(0)).Page(Data(1)).Sync
	Data(6) = "webelement"
	Data(5) ="lbl_common.provenance"
	Data(4) = "gov.nih.nci.common.provenance.domain"
	Data(3)="verify"
	Data(1) = "Content"
	var_Exist = ST_ObjectHandler(Data,CurrentRow,ResultsFileObj)
        
	If (var_Exist = "Pass") Then
		ST_CustomReporting Data,"Pass",CurrentRow,ResultsFileObj
		Reporter.ReportEvent micPass,"Verify_cabio_clkdomain_pkg","Link for gov.nih.nci.common.provenance.domain verified"
	Else		
		cabio_clkdomain_pkg = "Fail"
	End If



	Browser(Data(0)).Page(Data(1)).Sync
	wait(2)
	Data(6) = "webelement"
	Data(5) ="lbl_search"
	Data(4) = "gov.nih.nci.search"
	Data(3)="verify"
	Data(1) = "Content"
	var_Exist = ST_ObjectHandler(Data,CurrentRow,ResultsFileObj)
        
	If (var_Exist = "Pass") Then
		ST_CustomReporting Data,"Pass",CurrentRow,ResultsFileObj
		Reporter.ReportEvent micPass,"Verify_cabio_clkdomain_pkg","Link for gov.nih.nci.search verified"
	Else		
		cabio_clkdomain_pkg = "Fail"
	End If

End Function 

'******************************************************************************************************************************************************






public Function  clk_bio_domain(Data ,CurrentRow,ResultsFileObj)
		'*********************************************************************************
		'This function is to click the First PLus sign on the Content page  called gov.nih.nci.cabio.domain
		'This will click on the object Domain_pkgs which is a image
		'*********************************************************************************
	'Verify 
	'Browser(Data(0)).Page(Data(1)).Sync
	'Data(6) = "Image"
	'Data(5) ="caBio_domain"
	'Data(4) ="index:=5"
	'Data(3)="verify"	
	'Data(1) = "Content"

'		var_Exist = ST_ObjectHandler(Data,CurrentRow,ResultsFileObj)
 ' 	If (var_Exist = "Pass") Then
'		ST_CustomReporting Data,"Pass",CurrentRow,ResultsFileObj
'		Reporter.ReportEvent micPass,"clk_bio_domain","Cabio Domain Package Verify successful"
'		clk_bio_domain = "Pass"
'	Else
'		clk_bio_domain = "Fail"
'nd If

	Browser(Data(0)).Page(Data(1)).Sync
	Data(6) = "Image"
	Data(1) = "Content"
	Data(3)="click"	
	Data(5) ="caBio_domain"
		var_Exist = ST_ObjectHandler(Data,CurrentRow,ResultsFileObj)
  	If (var_Exist = "Pass") Then
		ST_CustomReporting Data,"Pass",CurrentRow,ResultsFileObj
		Reporter.ReportEvent micPass,"clk_bio_domain","Cabio Domain Package Click successful"
		clk_bio_domain = "Pass"
	Else
		clk_bio_domain = "Fail"
	End If

End Function 







'************************************************************************************************************

public Function  clk_on_agent(Data ,CurrentRow,ResultsFileObj)
		'*********************************************************************************
		'This function is to click the Webelement Agent on the content page 
		
	
	Browser(Data(0)).Page(Data(1)).Sync
	Data(6) = "webelement"
	Data(5) ="Agent"
	Data(3)="click"	
	Data(1) = "Content"

		var_Exist = ST_ObjectHandler(Data,CurrentRow,ResultsFileObj)
  	If (var_Exist = "Pass") Then
		ST_CustomReporting Data,"Pass",CurrentRow,ResultsFileObj
		Reporter.ReportEvent micPass,"clk_bio_domain","Cabio Domain Package Click successful"
		clk_bio_domain = "Pass"
	Else
		clk_bio_domain = "Fail"
	End If
	
End Function 

'************************************************************************************************************


public Function  data_entry(Data ,CurrentRow,ResultsFileObj)
		'*********************************************************************************
		'This function is to Enter the data from the varible to the search page.
		'***********************************************************************
	myval=	parseData4(Data(4))
	Browser(Data(0)).Page(Data(1)).Sync
	Data(6) = "webedit"
	Data(5) = myval(0)
	Data(3)="enter"
	 
	Data(1) = "Content"
	 

	If  EditBX_exist(Data,CurrentRow,ResultsFileObj,myval(0)) then 
		
	Data(4) =  myval(1)	

		var_Exist = ST_ObjectHandler(Data,CurrentRow,ResultsFileObj)
	Else 
		
	End if 

  	If (var_Exist = "Pass") Then
		ST_CustomReporting Data,"Pass",CurrentRow,ResultsFileObj
		Reporter.ReportEvent micPass,"clk_bio_domain","Cabio Domain Package Click successful"
		clk_bio_domain = "Pass"
	Else
		clk_bio_domain = "Fail"
	End If
	
End Function 

'******************************************************************************************************************


public Function EditBX_exist(Data ,CurrentRow,ResultsFileObj ,Name)
		'*********************************************************************************
		'This function is to Enter the data from the varible to the search page.
		'***********************************************************************

	Browser(Data(0)).Page(Data(1)).Sync
	Data(6) = "webedit"
	Data(5) = lcase(name)
	Data(4) =name
	Data(1) = "Content"

		

		If   browser(data(0)).page(data(1)).webedit(data(5)).exist  then 
			EditBX_exist= "True"
		Else
			Reporter.ReportEvent micfail,"EditBX_exist","The first qualifier name" & Data(5) & "is not a valid label nameof editbox,please check ."
			EditBX_exist= "False"

		End If 
 	
End Function 

'*************************************************************************************************************

'click the search button 

'**************************************************************************************************************

 




public Function Clk_Search_btn(Data ,CurrentRow,ResultsFileObj)

	Browser(Data(0)).Page(Data(1)).Sync
	Data(6) = "webButton"
	Data(5) =  "Submit"
	Data(3) = "enter" 
	Data(1) = "Content"
	wait(2)
	var_Exist = ST_ObjectHandler(Data,CurrentRow,ResultsFileObj)
		
	var_Exist =Verify_result_rows(Data ,CurrentRow,ResultsFileObj)
	 
	var_Exist  Verify_result_data(Data ,CurrentRow,ResultsFileObj)

	If (var_Exist = "Pass") Then
		ST_CustomReporting Data,"Pass",CurrentRow,ResultsFileObj
		Reporter.ReportEvent micPass,"clk_bio_domain","Cabio Domain Package Click successful"
		Clk_Search_btn= "Pass"
	Else
		Clk_Search_btn= "Fail"
	End If

End Function

'*********************************************************************************************************************************************************
'Function to verify the results have the same number of rows as expected
'*********************************************************************************************************************************************************

Function Verify_result_rows(Data ,CurrentRow,ResultsFileObj)
	

	morePages="False"
	
	rowarr=parseData4(Data(4))
	data(0) ="ResultData"
	Data(1)= "Result"
	Data(6)="webtable"
	Data(5)= "AgentResult"
	'resltrows=Browser(Data(0)).Page(Data(1)).webtable(data(5)).rowcount-2

	rct=0
	
	if cstr(rowarr(2)) = "NA" then 
		
		Reporter.ReportEvent micPass,"Verify_result_rows","Verify_result_rows successful expected rows =" & rowarr(2)
		Verify_result_rows= "pass" 
		exit function
	end if 
	
	do   

		if morepages = "True" then 
			morePages = Browser(Data(0)).Page(Data(1)).Link("more").click
		end if 
		morePages = Browser(Data(0)).Page(Data(1)).Link("more").Exist(0)
				
		rct= rct+Browser(Data(0)).Page(Data(1)).webtable(data(5)).rowcount-2	
		
	loop until morePages=False 

	resltrows=rct
	 
	if cint(resltrows)= cint(rowarr(2)) then 
		Verify_result_rows= "pass"
		Reporter.ReportEvent micPass,"Verify_result_rows","Verify_result_rows successful. Actual Rows = " & resltrows & "Excepted rows = " &  rowarr(2) 
		
	else 
		Verify_result_rows="fail"
		Reporter.ReportEvent micfail,"Verify_result_rows","Verify_result_rows failure.  Actual Rows = " & resltrows & "Excepted rows = " &  rowarr(2) 
	end if 


End Function

'*********************************************************************************************************************************************************
'Function to verify the results have the search name mentioned.
'*********************************************************************************************************************************************************




Function Verify_result_data(Data ,CurrentRow,ResultsFileObj)

	
	
	rowarr=parseData4(Data(4))
	data(0) ="ResultData"
	Data(1)= "Result"
	Data(6)="webtable"
	Data(5)= "AgentResult"
	searchterm=lcase(rowarr(4))
	clk_ag= rowarr(3)
	col=data(7)
	morePages = Browser(Data(0)).Page(Data(1)).Link("more").Exist(3)
	


	select case clk_ag
		wait(2)
		case "clk_agent"
			str=clk_agent(Data ,CurrentRow,ResultsFileObj ,3,col )
		case "clkAgentcol"
			str=clk_agent(Data ,CurrentRow,ResultsFileObj ,3,col )
		
	end select 




		
        GUIObjRef ="Browser(Data(0)).Page(Data(1)).webtable(Data(5))."
	resultvalue= Get_Tble_col_data(Data ,CurrentRow,ResultsFileObj ,searchterm)
			
	
	wait(5)
	browser(data(0)).close
	wait ( 3) 
	data(0)="caBIO"
	data(1)= "Content"
	
	if resultvalue="pass" then 
		Verify_result_data= "pass"

		Reporter.ReportEvent micPass,"Verify_result_data","Verify_result_data successful."
		
	else 
		Verify_result_data="fail"
		msgbox "waiting Fail"
		wait(5)
		Reporter.ReportEvent micfail,"Verify_result_data","Verify_result_data failure. The term  "  & searchterm & " not found in results."
	end if 


end function 

'****************************************************************************************************************

'Cell data verification

'***************************************************************************************************************
Public Function Get_Tble_col_data(Data ,CurrentRow,ResultsFileObj ,searchtrm)

  
Init Data ,CurrentRow,ResultsFileObj

rcount =Browser(Data(0)).Page(Data(1)).webtable(data(5)).rowcount

morePages = True

do while morePages
for r=1 to rcount 
	colcount= Browser(Data(0)).Page(Data(1)).webtable(data(5)).ColumnCount(r)
	for j= 1 to colcount
	pos= instr( 1,lcase(cstr(trim(Browser(Data(0)).Page(Data(1)).webtable(data(5)).GetCellData(r,j)))),lcase(cstr(trim(searchtrm))),1)

 
		if pos>0 then 
	 
			 
			Get_Tble_col_data="pass"          '         r 'Returning the row of the search in the success event
			
			exit Function
		else
							
			if Browser(Data(0)).Page(Data(1)).Link("more").Exist(0) then 
				 Browser(Data(0)).Page(Data(1)).Link("more").click
			else 
			
				Get_Tble_col_data="fail"
			end if	
			 morePages = Browser(Data(0)).Page(Data(1)).Link("more").Exist(0)
		end if 
	Next 
			
Next
rcount =Browser(Data(0)).Page(Data(1)).webtable(data(5)).rowcount

			

loop
	
End function
'*****************************************************************************************************************************************************
'Function to enter the search object
'***************************************************************************************************************************************************
public function search_object(Data ,CurrentRow,ResultsFileObj )
		Data(6) = "weblist"
		Data(5) =  "searchObj"
		Data(3) = "select"
		Data(0) =  "caBIO"
		Data(1) =  "Content"	
		st = ST_ObjectHandler(Data,CurrentRow,ResultsFileObj)
	if st= "pass" then 
		search_object="pass"
	else 
		search_object="fail"
	end if 	
	
End Function 






'******************************************************************************************************************
'Function to click to Agent in the result and validate a text
'******************************************************************************************************************



function clk_agent(Data ,CurrentRow,ResultsFileObj ,rownum,col )
	rowarr=parseData4(Data(4))
	data(0) ="ResultData"
	Data(1)= "Result"
	Data(6)="webtable"
	Data(5)= "AgentResult"
	searchterm=lcase(rowarr(4))
	if col= 0 then 
	Msgbox " col Is empty"
	end if 
	
	 
        if Browser(Data(0)).Page(Data(1)).webtable(Data(5)).childitem(rownum,col,"Link",0).exist then 
		Browser(Data(0)).Page(Data(1)).webtable(Data(5)).childitem(rownum,col,"Link",0).click
	
	clk_agent= "pass"
	Else 
	clk_agent="fail"
	End if 
	
	
end function 
'*******************************************************************************************************************************************************
'Function to initialize the page for ddata search 
'*******************************************************************************************************************************************************
Sub Init(Data ,CurrentRow,ResultsFileObj)


do while(  Browser(Data(0)).Page(Data(1)).Link("back").Exist(3))
	msgbox "back"

	Browser(Data(0)).Page(Data(1)).Link("back").click
loop
end sub













































