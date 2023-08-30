<cfcomponent persistent="true" table="crud">
    <cfproperty  name="Id" fieldtype="id" type="numeric" generator="increment">
    <cfproperty  name="Firstname" type="string">
    <cfproperty  name="Lastname" type="string">
    <cfproperty  name="Email" type="string">
    <cfproperty  name="Gender" type="string">
    <cfproperty  name="Age" type="numeric">
    <cfproperty  name="Location" type="string"> 
</cfcomponent>