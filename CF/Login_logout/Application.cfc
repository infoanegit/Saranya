<cfcomponent>
    <cfset this.name='12'>
    <cfset this.datasource='saran_dsn'>
    <cfset this.sessionManagement='true'>

    <cffunction  name="onApplicationStart">
        <cfset  application.Formvalues= createobject('component', 'form')>
    </cffunction>

    <cffunction  name="onRequestStart">
        <cfscript>
            s_name=listLast("#cgi.script_name#", "/");
        </cfscript>
    
        <cfif( NOT(isDefined("session.username")) AND (s_name EQ "welcome.cfm"))>
            <cflocation url="index.cfm" addtoken="false">
        </cfif>

        <cfif (isDefined("session.username") AND (s_name EQ "index.cfm" OR s_name EQ "signup.cfm"))>
            <cflocation url="welcome.cfm" addtoken="false">
        </cfif>
    </cffunction>
    
</cfcomponent>
        


