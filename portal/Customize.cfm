
 <CFPARAM NAME="Client.Email" DEFAULT="No">
 <CFPARAM NAME="Client.Stocks" DEFAULT="No">
 <CFPARAM NAME="Client.Newsl" DEFAULT="No">
 <CFPARAM NAME="Client.Bookmarks" DEFAULT="No">
 <H1>Customize your portal</H1>
 <CFOUTPUT>
 <FORM ACTION="SetCustomization.cfm" METHOD="Post">
 </CFOUTPUT>
 <TABLE>
 <CFOUTPUT>
 <TR>
 <TD>Background colour:</TD>
 <TD><INPUT TYPE="text" NAME="BGColour" SIZE="6" MAXLENGTH="6" 
 VALUE="#Client.BGColour#"></TD>
 </TR>
 <TR>
 <TD>Font Face:</TD>
 <TD><SELECT NAME="Fontface">
 <OPTION VALUE="Ariel" <CFIF Client.FontFace EQ 
 "Ariel">SELECTED</CFIF>>Ariel</OPTION>
 <OPTION VALUE="Helveical" <CFIF Client.FontFace EQ 
 "Helvetical">SELECTED</CFIF>>Helveica</OPTION>
 <OPTION VALUE="Sans-serif" <CFIF Client.FontFace EQ 
 "Sans-serif">SELECTED</CFIF>>Sans-serif</OPTION>
 <OPTION VALUE="Comic Sans" <CFIF Client.FontFace EQ 
 "Comic Sans">SELECTED</CFIF>>Comic Sans</OPTION>
 </SELECT>
 </TD>
 </TR>
 <TR>
 <TD>Header font colour:</TD>
 <TD><INPUT TYPE="text" NAME="HeaderFontColor" SIZE="6" MAXLENGTH="6"
  VALUE="#Client.HeaderFontColor#"></TD>
  </TR>
  <TR>
 <TD>Header Background Colour</TD>
 <TD><INPUT TYPE="text" NAME="HeaderBGColor" SIZE="6" MAXLENGTH="6"
  VALUE="#Client.HeaderBGColor#"></TD>
 </TR>
 <TR>
 <TD>Font colour:</TD>
 <TD><INPUT TYPE="text" NAME="FontColor" SIZE="6" MAXLENGTH="6"
  VALUE="#Client.FontColor#"></TD>
 </TR>
 </CFOUTPUT>
   <TD COLSPAN="2">Content:</TD>
 </TR>
 <TR>
 <TD COLSPAN="2">
 <TABLE>
 <TR>
 <TD><Input Type="checkbox" name="Email" value="Yes"
 <CFIF Client.Email>CHECKED</CFIF>>Email</TD>
 <TD><Input Type="checkbox" name="News" value="Yes"
 <CFIF Client.News>CHECKED</CFIF>>News</TD>
 </TR>
 </TR>
 <TD><Input Type="checkbox" name="Stocks" value="Yes"
 <CFIF Client.Stocks>CHECKED</CFIF>>Stocks</TD>
 <TD><Input Type="checkbox" name="Bookmarks" value="Yes"
 <CFIF Client.Bookmarks>CHECKED</CFIF>>Bookmarks</TD>
 </TR>
 </TABLE>
 </TD>
 <TR>
 <TD COLSPAN="2"><INPUT TYPE="submit" Name="Customize" Value="Save"></TD>
 </TR>
 </TABLE>
 </FORM>