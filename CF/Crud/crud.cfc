<cfcomponent>
    <cffunction name="InsertData" access="public">
        <cfargument  name="firstname" type="string" required="true">
        <cfargument  name="lastname" type="string" required="true">
        <cfargument  name="email" type="string" required="true">
        <cfargument  name="gender" type="string" required="true">
        <cfargument  name="age" type="integer" required="true">
        <cfargument  name="location_name" type="string" required="true">
        <cfquery name="insertQry">
            INSERT INTO formcrudvalues(Firsrtname,Lastname,Email,Gender,Age,Location_name)
            values(<cfqueryparam value="#arguments.firstname#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.lastname#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.gender#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.age#" cfsqltype="cf_sql_integer">,
            <cfqueryparam value="#arguments.location_name#" cfsqltype="cf_sql_varchar">)
            
        </cfquery>
    </cffunction>

    <cffunction name="GetpageData" access="public" returntype="query">
        <cfquery name="getpg_qry">
            SELECT * FROM formcrudvalues
        </cfquery>   
        <cfreturn getpg_qry>
    </cffunction>

    <cffunction name="Deletedata" access="public">
        <cfargument  name="id" type="integer" required="true">
        <cfquery name="deleteqry">
            DELETE FROM formcrudvalues
            WHERE id=<cfqueryparam value="#arguments.id#" cfsqltype="cf_sql_integer">
        </cfquery>
    </cffunction>

    <cffunction  name="GetidData" access="public" returntype="query">
        <cfargument name="urlid" type="integer" required="true">
        <cfquery name="getQry">
            SELECT * FROM formcrudvalues
            WHERE id=<cfqueryparam value="#arguments.urlid#" cfsqltype="cf_sql_integer">
        </cfquery>
        <cfreturn getQry>
    </cffunction>

    <cffunction  name="UpdateData" access="public">
        <cfargument name="id" type="integer" required="true">
        <cfargument  name="firstname" type="string" required="true">
        <cfargument  name="lastname" type="string" required="true">
        <cfargument  name="email" type="string" required="true">
        <cfargument  name="gender" type="string" required="true">
        <cfargument  name="age" type="integer" required="true">
        <cfargument  name="location_name" type="string" required="true">
        
        <cfquery name="updateQry">
            UPDATE formcrudvalues
            SET Firsrtname=<cfqueryparam value="#arguments.firstname#" cfsqltype="cf_sql_varchar">,
            Lastname=<cfqueryparam value="#arguments.lastname#" cfsqltype="cf_sql_varchar">,
            Email=<cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">,
            Gender=<cfqueryparam value="#arguments.gender#" cfsqltype="cf_sql_varchar">,
            Age=<cfqueryparam value="#arguments.age#" cfsqltype="cf_sql_integer">,
            Location_name=<cfqueryparam value="#arguments.location_name#" cfsqltype="cf_sql_varchar">
            WHERE id=<cfqueryparam value="#arguments.id#" cfsqltype="cf_sql_integer">
        </cfquery>

    </cffunction>
        
</cfcomponent>