<CFPARAM NAME="FullName" DEFAULT="">

<SCRIPT LANGUAGE="Javascript">
function formCheck()
{
if (document.PortalRegistration.Password.value !=
document.PortalRegistration.Password2.value) {
alert("The passwords you entered do not match. Please reenter them.");
document.PortalRegistration.Password.value ='';
document.PortalRegistration.Password2.value ='';
return false;
}
if (document.PortalRegistration.Password.value ==""(need two straight lines)
document.PortalRegistration.Password2.value =="") {
alert("You can not leave either password field blank.");
return false;
}
}
</SCRIPT>

<CENTER>
<h2>Portal Account Registration</h2>
<CFIF IsDefined('URL.Message')>
<CFOUTPUT>
<FONT COLOR=RED>#URL.Message#</FONT>
</CFOUTPUT>
<p>
</CFIF>

<FORM NAME="PortalRegistration" ACTION="RegistrationProcess.cfm" METHOD="POST"
onSubmit="return formCheck()">
<INPUT TYPE="hidden" NAME="FullName_required" VALUE="You must supply a namename for the user">
<INPUT TYPE="hidden" NAME="Username_required" VALUE="You must supply a username">
<INPUT TYPE="hidden" NAME="Password_required" VALUE="You must supply a password">

<TABLE BORDER="0">
<TR>
<TD>Full name:</TD>
<TD>
<CFOUTPUT>
<INPUT TYPE="text" NAME="FullName" SIZE="15" MAXLENGTH="255"
VALUE="#FullName#">
</CFOUTPUT>
</TD>
</TR>
<TR>
<TD>Username:</TD>
<TD>
<INPUT TYPE="text" NAME="Username" SIZE="15" MAXLENGTH="50">
</TD>
</TR>
<TR>
<TD>Password:</TD>
<TD>
<INPUT TYPE="password" NAME="password" SIZE="15" MAXLENGTH="50">
</TD>
</TR>
<TR>
<TD>Confirm Password:</TD>
<TD>
<INPUT TYPE="password" NAME="Password2" SIZE="15" MAXLENGTH="50">
</TD>
</TR>
<TR>
<TD COLSPAN="2" ALIGN="center">
<INPUT TYPE="SUBMIT" NAME="Submit" VALUE="Submit">
</TD>
</TR>
</TABLE>
</FORM>
</p>
</CENTER>