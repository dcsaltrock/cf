<CFPARAM NAME="Username" DEFAULT="">

<CFIF Isdefined('Cookie.Username')>
<CFSET Username = Cookie.Username>
</CFIF>

<CENTER>
<h2>Portal Login</h2>

<CFIF Isdefined('URL.Message')>
<CFOUTPUT>
<FONT COLOR=RED>#URL.Message#</FONT>
</CFOUTPUT>
<p>
</CFIF>

<FORM NAME="ValidateUser" ACTION="Validate.cfm" METHOD="POST">
<INPUT TYPE="hidden" NAME="Username_required" VALUE="You must supply a username">
<INPUT TYPE="hidden" NAME="Password_required" VALUE="You must supply a password">
<TABLE BORDER="0">
<TR>
<TD>Username:</TD>
<TD>
<CFOUTPUT>
<INPUT TYPE="text" NAME="Username" SIZE="15" 
MAXLENGTH="255" VALUE="#Username#">
</CFOUTPUT>
</TD>
</TR>
<TR>
<TD>Password:</TD>
<TD><INPUT TYPE="password" NAME="password" SIZE="15" MAXLENGTH="255"></TD>
</TR>
<TR>
<TD COLSPAN="2">
<INPUT TYPE="checkbox" NAME="SaveUsername" VALUE="Yes">Remember my username for future logins</TD>
</TR>
<TR>
<TD COLSPAN="2" ALIGN="center">
<INPUT TYPE="SUBMIT" NAME="Submit" VALUE="Submit">
</TD>
</TR>
</TABLE>
</FORM>*THIS SITE IS FOR REGISTERED USER  . IF YOU ARE CURRENTLY NOT A MEMBER , YOU MAY
<A HREF="RegistrationForm.cfm">register here</A>
</p>
</CENTER>