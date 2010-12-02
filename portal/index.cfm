
 <CFPARAM NAME="CLIENT.Email" DEFAULT="Yes">
 <CFPARAM NAME="CLIENT.Stocks" DEFAULT="Yes">
 <CFPARAM NAME="CLIENT.News" DEFAULT="Yes">
 <CFPARAM NAME="CLIENT.Bookmarks" DEFAULT="Yes">
 <CFPARAM NAME="CLIENT.BGColour" DEFAULT="FFFFFF">
 <CFPARAM NAME="CLIENT.FontFacel" DEFAULT="Ariel">
 <CFPARAM NAME="CLIENT.HeaderFontColour" DEFAULT="000000">
 <CFPARAM NAME="CLIENT.HeaderBGColourl" DEFAULT="6666FF">
 <CFPARAM NAME="CLIENT.FontColour" DEFAULT="000000">
 <HTML>
 <head>
 <title>My Portal</title>
 <CFINCLUDE TEMPLATE="_StyleSheet">
 </head>
 <body>
 <CFOUTPUT><H1>Welcome #ListFirst(Session.FullName, " ")#</H1></CFOUTPUT>
 <TABLE WIDTH="100%" BORDER="0" CELLPADDING="0" CELLSPACING="5">
 <TR>
 <CFOUTPUT>
 <TD CLASS="Customizelink"><A HREF="Customize.cfm">Customise</A></TD>
 <TD CLASS="Customizelink" ALIGN="right"><A HREF="logout.cfm">logout</A></TD>
 </CFOUTPUT>
 </TR>
 <TR>
 <TD WIDTH="19%" VALIGN="top">
 <TABLE WIDTH="100%" BORDER="0" CELLSPACING="0" CELLSPACING="5">
       <CFIF Client.Email>
 <CFINCLUDE TEMPLATE="_Email.cfm">
            </CFIF>
         <CFIF Client.Stocks>
 <CFINCLUDE TEMPLATE="_Stock.cfm">
           </CFIF>
 </TABLE>
 </TD><TD WIDTH="81%" VALIGN="top">
 <TABLE WIDTH="100%" BORDER="0" CELLSPACING="0" CELLSPACING="5">
       <CFIF Client.News>
 <CFINCLUDE TEMPLATE="_News.cfm">
            </CFIF>
         <CFIF Client.Bookmarks>
 <CFINCLUDE TEMPLATE="_Bookmarks.cfm">
           </CFIF>
 
 </TABLE>
 </TD>
 </TR>
 </TABLE>
 <HR>
 <CFLOCK SCOPE="Application" TYPE="Readonly" TIMEOUT="10">
 <CFOUTPUT>
 <DIV CLASS="Footer">Please email all questions or concerns to <A HREF="mailto:#Application.AdminEmail#">#Application.AdminEmail#</A>.</DIV>

 </CFOUTPUT>
 </CFLOCK>
 </BODY>
 </HTML>