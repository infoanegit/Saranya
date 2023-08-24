<cfcomponent>
    <cffunction  name="InsertData" access="public">
        <cfargument  name="Imgname" type="string" required="true">
        <cfargument  name="Imgdescription" type="string" required="true">
        <cfargument  name="image" type="string" required="true">
        <cfquery name="InserQry">
            INSERT INTO uploadImage(Imagename,ImageDescription,Img )
            values(<cfqueryparam value="#arguments.Imgname#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.Imgdescription#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.image#" cfsqltype="cf_sql_varchar">)
        </cfquery>
    </cffunction>

    <cffunction name="GetData" access="public" returntype="query">
        <cfquery name="getQry">
            SELECT * FROM uploadImage
        </cfquery>
        <cfreturn getQry>
    </cffunction>

    <cffunction name="GetIddata" access="public" returntype="query">
        <cfargument  name="Id" type="integer" required="true">
        <cfquery name="IdQry">
            SELECT * FROM uploadImage
            WHERE id=<cfqueryparam value="#arguments.Id#" cfsqltype="cf_sql_integer">
        </cfquery>
        <cfreturn IdQry>
    </cffunction>

</cfcomponent>

    
   