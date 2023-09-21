<cfcomponent>
    <cffunction name="Getdata" access="remote" returntype="any"  returnFormat="JSON">
        <cfquery name="getpg_qry" datasource="saran_dsn">
            SELECT * FROM todovalues
        </cfquery>   
        <cfreturn  serializeJSON(getpg_qry)>
    </cffunction>

    <cffunction name="Insertdata" access="remote">
        <cfargument  name="task" type="string" required="true">
        <cfargument name="active" type="boolean" required="true"> 
        <cfargument name="date" type="date" required="true">

        <cfquery name="insertQry" datasource="saran_dsn">
            INSERT INTO todovalues(Task,isactive,created_date)
            values(<cfqueryparam value="#arguments.task#" cfsqltype="cf_sql_varchar">,
            <cfqueryparam value="#arguments.active#" cfsqltype="cf_sql_bit">,
            <cfqueryparam value="#arguments.date#" cfsqltype="cf_sql_timestamp">

            )
           
        </cfquery>
            
    </cffunction>

    <cffunction  name="UpdateData" access="remote" returntype="any" returnFormat="JSON">
        <cfargument  name="task_id" type="integer" required='true'>
        <cfargument name="active" type="boolean" required="true">
        <cfquery name="updateQry" datasource="saran_dsn">
            UPDATE todovalues
            SET isactive=<cfqueryparam value="#arguments.active#" cfsqltype="cf_sql_bit">
            WHERE id=<cfqueryparam value="#arguments.task_id#" cfsqltype="cf_sql_integer">

        </cfquery>
    </cffunction>

    <cffunction name="ActiveData" access="remote" returntype="any" returnformat="JSON">
        <cfquery name="ActiveQry" datasource="saran_dsn">
            SELECT * FROM todovalues
            WHERE isactive=1
        </cfquery>
        <cfreturn  serializeJSON(ActiveQry)>
    </cffunction>

    <cffunction name="CompletedData" access="remote" returntype="any" returnformat="JSON">
        <cfquery name="CompletedQry" datasource="saran_dsn">
            SELECT * FROM todovalues
            WHERE isactive=0
        </cfquery>
        <cfreturn  serializeJSON(CompletedQry)>
    </cffunction>

    <cffunction name="Deletedata" access="remote">
        <cfquery name="Deleteqry" datasource="saran_dsn">
            DELETE FROM todovalues
            WHERE isactive=0
        </cfquery>
      
    </cffunction>
    
   <cffunction  name="Getcount" access="remote" returntype="any" returnformat="JSON">
    <cfquery name="CountQry" datasource="saran_dsn">
        SELECT COUNT(isactive)
        FROM todovalues
        WHERE isactive=1
    </cfquery>
    <cfreturn  serializeJSON(CountQry)>
   </cffunction>

   <cffunction  name="deleteId" access="remote">
    <cfargument  name="id" type="integer" required="true">
    <cfquery name="DeleteIdQry" datasource="saran_dsn">
        DELETE FROM todovalues
        WHERE id=<cfqueryparam value="#arguments.id#" cfsqltype="cf_sql_integer">
    </cfquery>
   </cffunction>

   <cffunction  name="Updateiddata" access="remote">
    <cfargument  name="id" type="integer" required="true">
    <cfargument  name="task" type="string" required="true">
    <cfargument name="update_date" type="date" required="true">
    <cfquery name="UpdateQry" datasource="saran_dsn">
        UPDATE todovalues
        SET Task=<cfqueryparam value="#arguments.task#" cfsqltype="cf_sql_varchar">,
        updated_date=<cfqueryparam value="#arguments.update_date#" cfsqltype="cf_sql_timestamp">
        WHERE id=<cfqueryparam value="#arguments.id#" cfsqltype="cf_sql_integer">
    </cfquery>
    
   </cffunction>

   <cffunction  name="Getcountcompleted" access="remote" returntype="any" returnformat="JSON">
    <cfquery name="CountcompleteQry" datasource="saran_dsn">
        SELECT COUNT(isactive)
        FROM todovalues
        WHERE isactive=0
    </cfquery>
    <cfreturn  serializeJSON(CountcompleteQry)>
</cffunction>


   <cffunction  name="getval" access="remote" returntype="any" returnformat="JSON">
    <cfquery name="GetvalQry" datasource="saran_dsn">
        SELECT COUNT(id)
        FROM todovalues
    </cfquery>
    <cfreturn  serializeJSON(GetvalQry)>
   </cffunction>
    
     
 </cfcomponent>

            
        
        
       
            
