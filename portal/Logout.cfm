
 <!--- terminate the user's session by deleting all session variables --->  

 <CFLOCK SCOPE="Session" TYPE="Exclusive" TIMEOUT="10">
 <CFSET StructClear(Session)>
 </CFLOCK>
 <CFLOCATION URL="Login.cfm?Message=#URLEncodedFormat(Thank you for logging out. Please visit  again soon!")#">