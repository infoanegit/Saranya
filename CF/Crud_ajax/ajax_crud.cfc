<cfcomponent>
    <cffunction  name="Insertdata" access="remote">
        <cfargument  name="firstname" type="string" required="true">
        <cfargument  name="lastname" type="string" required="true">
        <cfargument  name="email" type="string" required="true">
        <cfargument  name="gender" type="string" required="true">
        <cfargument  name="age" type="integer" required="true">
        <cfargument  name="location_name" type="string" required="true">
        <cfquery name="insertQry" datasource="saran_dsn">
            INSERT INTO form(firstname,lastname,email,gender,age,location_name)
            values(<cfqueryparam value="#arguments.firstname#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.lastname#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.gender#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.age#" cfsqltype="cf_sql_integer">,
            <cfqueryparam value="#arguments.location_name#" cfsqltype="cf_sql_varchar">)
            
        </cfquery>
    </cffunction>
    <cffunction name="Getdata" access="remote" returntype="any"  returnFormat="JSON">
        <cfquery name="getpg_qry">
            SELECT * FROM form
        </cfquery>   
        <cfreturn  serializeJSON(getpg_qry)>
    </cffunction>

    <cffunction name="Deletedata" access="remote">
        <cfargument  name="id" type="integer" required="true">
        <cfquery name="deleteqry">
            DELETE FROM form
            WHERE id=<cfqueryparam value="#arguments.id#" cfsqltype="cf_sql_integer">
        </cfquery>
    </cffunction>

    <cffunction  name="GetidData" access="remote" returntype="any"  returnFormat="JSON">
        <cfargument name="urlid" type="integer" required="true">
        <cfquery name="getQry">
            SELECT * FROM form
            WHERE id=<cfqueryparam value="#arguments.urlid#" cfsqltype="cf_sql_integer">
        </cfquery>
        <cfreturn serializeJSON(getQry)>
    </cffunction>

    <cffunction  name="UpdateData" access="remote">
        <cfargument name="id" type="integer" required="true">
        <cfargument  name="firstname" type="string" required="true">
        <cfargument  name="lastname" type="string" required="true">
        <cfargument  name="email" type="string" required="true">
        <cfargument  name="gender" type="string" required="true">
        <cfargument  name="age" type="integer" required="true">
        <cfargument  name="location_name" type="string" required="true">
        
        <cfquery name="updateQry">
            UPDATE form
            SET firstname=<cfqueryparam value="#arguments.firstname#" cfsqltype="cf_sql_varchar">,
            lastname=<cfqueryparam value="#arguments.lastname#" cfsqltype="cf_sql_varchar">,
            email=<cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">,
            gender=<cfqueryparam value="#arguments.gender#" cfsqltype="cf_sql_varchar">,
            age=<cfqueryparam value="#arguments.age#" cfsqltype="cf_sql_integer">,
            location_name=<cfqueryparam value="#arguments.location_name#" cfsqltype="cf_sql_varchar">
            WHERE id=<cfqueryparam value="#arguments.id#" cfsqltype="cf_sql_integer">
        </cfquery>

    </cffunction>
</cfcomponent>