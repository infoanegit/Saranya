<cfoutput>
    <cfset auth_token='26e9696b7075a053ffef78b031dd8cc8'>
    <cfset sid="AC641bfaaaa9cf7e5716e5ac59772a1baa">
    <cfset Message="Hi Saranya!">
        <cfhttp result="result" method="POST" url="https://api.twilio.com/2010-04-01/Accounts/#sid#/Messages.json">
            <cfhttpparam name="authorization" type="header" value="basic #tobase64('#sid#:'& auth_token)#">
            <cfhttpparam name="To" type="formfield" value="whatsapp:+919790489344">
            <cfhttpparam name="From" type="formfield" value="whatsapp:+14155238886">
            <cfhttpparam name="Body" type="formfield" value="#Message#"> 
        </cfhttp>
           
    <cfset status_code="#result.Statuscode#">
    <cfif status_code EQ "201 Created">
        <p style="text-align: center; background-color: beige;">Message Send</p>
    <cfelse>
        <p style="text-align: center; background-color: beige;">Error</p>
    </cfif>       
</cfoutput>       
        

        
