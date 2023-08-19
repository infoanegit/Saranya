<cfcomponent>
    <cffunction  name="InsertData" access="public">
        <cfargument  name="page_name" type="string" required="true">
        <cfargument  name="page_des" type="string" required="true">
        <cfquery name="insert_qry">
            INSERT INTO pageval(Page,Description)
            values(<cfqueryparam value="#arguments.page_name#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.page_des#" cfsqltype="cf_sql_varchar">)
        </cfquery>
    </cffunction>
        
    <cffunction name="GetpageData" access="public" returntype="query">
        <cfquery name="getpg_qry">
            SELECT * FROM pageval
        </cfquery>   
        <cfreturn getpg_qry>
    </cffunction>
        
    <cffunction name="GetData" access="public" returntype="query">
        <cfargument name="user_name" type="string" required="true">
        <cfargument  name="password" type="string" required="true">
        <cfquery name="get_qry">
            SELECT * FROM formvalues
            WHERE (Username=<cfqueryparam value="#arguments.user_name#" cfsqltype="cf_sql_varchar"> 
            AND Pwd=<cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar">)
        </cfquery>
        <cfreturn get_qry>
    </cffunction>

    <cffunction name="Updatedata" access="public">
        <cfargument  name="c_id" type="integer" required="true">
        <cfargument  name="page" type="string" required="true">
        <cfargument  name="desc" type="string" required="true">
        <cfquery name="getIdQry">
            UPDATE pageval
            SET Page=<cfqueryparam value="#arguments.page#" cfsqltype="cf_sql_varchar">,
            Description=<cfqueryparam value="#arguments.desc#" cfsqltype="cf_sql_varchar">
            WHERE id=<cfqueryparam value="#arguments.c_id#" cfsqltype="cf_sql_integer">
        </cfquery>
    </cffunction>
        
    <cffunction name="GetIddata" access="public" returntype="query">
        <cfargument  name="id" type="integer" required="true">
        <cfquery name="getIdvalueQry">
            SELECT * FROM pageval
            WHERE id=<cfqueryparam value="#arguments.id#" cfsqltype="cf_sql_integer">
        </cfquery>
        <cfreturn getIdvalueQry>
    </cffunction>

    <cffunction name="Deletecolumn" access="public" >
        <cfargument name="id" type="integer" required="true">
        <cfquery name="DeleteQry">
            DELETE  FROM pageval
            WHERE id=<cfqueryparam value="#arguments.id#" cfsqltype="cf_sql_integer">
        </cfquery>
    </cffunction>

</cfcomponent>




