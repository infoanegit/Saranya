<cfcomponent>
    <cfset this.name="587885">
    <cfset this.datasource="saran_dsn">
    <cfset this.sessionManagement="true">
    <cffunction name="onApplicationStart">
        <cfset application.captchaData=createObject('component','captchavalidation')>
    </cffunction>
</cfcomponent>

