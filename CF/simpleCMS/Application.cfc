<cfcomponent>
    <cfset this.name="4545225">
    <cfset this.datasource="saran_dsn">
    <cfset this.sessionManagement="true">

    <cffunction name="onApplicationStart">
        <cfset application.pagedata=createobject('component', 'simplecms')>
    </cffunction>

    <cffunction name="onRequestStart">
        <cfparam name="session.role" default="">
        <cfscript>
            script_name=listLast("#cgi.script_name#", "/");
        </cfscript>

        <cfif( NOT(isDefined("session.username")) AND ((script_name EQ "logout.cfm") OR (script_name EQ "form.cfm")))> 
            <cflocation url="index.cfm" addtoken="false">
        </cfif>
        
       <cfif (isDefined("session.username") AND (script_name EQ "index.cfm"))> 
            <cflocation url="logout.cfm" addtoken="false">
        </cfif> 

        <cfif (isDefined("session.username") AND (script_name EQ "index.cfm"))> 
            <cflocation url="form.cfm" addtoken="false">
        </cfif> 
         
        <cfif ("#session.role#" EQ "user")> 
             <cfif (isDefined("session.username") AND (script_name EQ "form.cfm"))>  
                 <cflocation url="logout.cfm" addtoken="false"> 
             </cfif> 
        </cfif>
        
    </cffunction>   
</cfcomponent>
       

            
            
            

