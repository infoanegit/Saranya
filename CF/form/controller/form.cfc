<cfcomponent>
    <cffunction name="insertFormData" access="public" returntype="void">
        <cfargument  name="fname" type="string" required="true">
        <cfargument  name="lname" type="string" required="true">
        <cfargument  name="email" type="string" required="true">
        <cfargument  name="age" type="integer" required="true">

        <cfquery name="dataQry" datasource="saran_dsn">
            INSERT INTO data(firstname,lastname,email,age)
            values(<cfqueryparam value="#arguments.fname#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.lname#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.age#" cfsqltype="cf_sql_integer">);
        </cfquery>
    </cffunction>
        
</cfcomponent>