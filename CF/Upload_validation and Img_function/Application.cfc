<cfcomponent>
    <cfset this.name="7941">
    <cfset this.datasource="saran_dsn">
    <cfset this.sessionManagement="true">
    <cffunction name="onApplicationStart">
        <cfset application.Imagedata=createObject('component', 'UploadImg')>
    </cffunction>
</cfcomponent>