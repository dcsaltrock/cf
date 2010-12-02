         
 <CFSETTING ENABLECFOUTPUTONLY= "YES"
 <CFAPPLICATION NAME="PORTAL" CLIENTMANAGEMENT=YES"
 SESSIONMANAGEMENT="YES" SETCLIENTCOOKIES="YES" SSESSIONTIMEOUT="#CreateTimeSpan(0, 0, 30, 0)#"
 APPLICATIONTIMEOUT=#(CreateTimeSpan(0, 0, 30, 0)#"
 CLIENTSTORAGE="Registry">
 <CFLOCK SCOPE="Session" TYPE="Exclusive" TIMEOUT="10"
 <CFPARAM NAME="Session.LoggedIn" DEFAULT="False">
 </CFLOCK>
 <CFLOCK SCOPE="Session" TYPE="ReadOnly" TIMEOUT="10">
 <CFIF NOT Session.LoggedIn>
 <CFIF (CGI.SCRIPT_NAME IS NOT "/potal/Login.cfm")
 AND (CGI.SCRIPT_NAME IS NOT "/potal/Validate.cfm")
 CFIF (CGI.SCRIPT_NAME IS NOT "/potal/RegistrationForm.cfm")
 AND (CGI.SCRIPT_NAME IS NOT "/potal/RegistrationProcess.cfm")>
 <CFLOCATION URL= "/potal/Login.cfm" ADDTOKEN="no">
 </CFIF>
 </CFIF>
 </CFLOCK>
 <CFIF IsDefined("Cookie.cfid" AND IsDefined("Cookie.CFToken")>
 <CFCOOKIE NAME ="CFID" VALUE=#Cookie.CFID#">
 <<CFCOOKIE NAME ="CFToken" VALUE=#Cookie.CFToken#">
 </CFIF>
 <CFLOCK SCOPE="Application" TYPE="Exclusive" TIMEOUT="10">
 <CFIF NOT IsDefined('Application.Initiallized')>
 <CFSET Application.DSN ="ProgrammingCF">
 <CFSET Application.AdminEmail = "dcsaltrock@gmail.com">
 <CFSET Application.Initialized = TRUE>
 </CFIF>
 </CFLOCK>
 <CFSETTING ENABLECFOUTPUTONLY="No">