<cfcomponent>
    <cfset this.name="45445">
    <cfset this.datasource="saran_dsn">
    <cfset this.sessionManagement="true">

    <cffunction name="onApplicationStart">
        <cfset application.formdata=createobject('component', 'crud')>
    </cffunction>

</cfcomponent>