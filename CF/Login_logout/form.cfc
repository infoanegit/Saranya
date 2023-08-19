<cfcomponent>
    
    <cffunction name="insertFormData" access="public">
        <cfargument  name="username" type="string" required="true">
        <cfargument  name="password" type="string" required="true">
        <cfquery name="dataQry">
            INSERT INTO login(Username,Password)
            values(<cfqueryparam value="#arguments.username#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar">)
        </cfquery>
    </cffunction>

    <cffunction name="getFormData" access="public" returntype="query">
        <cfargument  name="username" type="string" required="true">
        <cfargument  name="password" type="string" required="true">
        <cfquery name="getQry">
            SELECT * FROM login
            WHERE (Username = <cfqueryparam value="#arguments.username#" cfsqltype="cf_sql_varchar" > 
            AND Password= <cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar" >)
        </cfquery>
        <cfreturn getQry>
    </cffunction>

</cfcomponent>

        
    