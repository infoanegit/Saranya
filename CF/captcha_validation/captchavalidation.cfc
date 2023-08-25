<cfcomponent>

    <cffunction name="randomcaptcha" access="public" returntype="string">
        <cfargument name="length" type="integer" required="true">
        <cfset var chars="1234567890ABCDEFGHJKMNPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz">
        <cfset var captcha="">
        <cfloop index="i" from="1" to="#length#">
            <cfset captcha&=mid(chars, randRange(1, len(chars)),1)>
        </cfloop>
        <cfreturn captcha>
    </cffunction>
    
</cfcomponent>