
 <H1>Saving changes...</H1>
 <CFIF IsDefined('Form.Customize')>
 <CFSET Client.BGColor = Form.BGColor>
 <CFSET Client.FontFace = Form.FontFace>
 <CFSET Client.FontColor = Form.FontColor>
 <CFSET Client.HeaderBGColor = Form.HeaderBGColor>
 <CFSET Client.HeaderFontColor = Form.HeaderFontColor>
 
 <CFPARAM NAME="Form.Email" DEFAULT="NO">
 <CFPARAM NAME="Form.Stocks" DEFAULT="NO">
 <CFPARAM NAME="Form.Newsl" DEFAULT="NO">
 <CFPARAM NAME="Form.Bookmarks" DEFAULT="NO">
 
 <CFSET Client.Email = Form.Email>
 <CFSET Client.Stocks = Form.Stocks>
 <CFSET Client.News = Form.News>
 <CFSET Client.Bookmarks = Form.Bookmarks>
 <CFELSEIF IsDefined('URL.Action') AND URL.Action EQ "Remove">
 <CFSWITCH EXPRESSION="#Section#">
 <CFCASE VALUE="Email">
 <CFSET Client.Email = "No">
 </CFCASE>
 <CFCASE VALUE="Stocks">
 <CFSET Client.Stocks = "No">
 </CFCASE>
 <CFCASE VALUE="News">
 <CFSET Client.News = "No">
 </CFCASE>
 <CFCASE VALUE="Bookmarks">
 <CFSET Client.Bookmarks = "No">
 </CFCASE>
 </CFSWITCH>
 </CFIF>
 
 <CFHEADER NAME="Refresh" VALUE="0; URL=Index.cfm">   