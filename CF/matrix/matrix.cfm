<cfoutput>
    <cfloop index="i" from="1" to="3">
         <cfloop index="j" from="0" to="6" step="3">
             #j+i#
         </cfloop>
         <br>
     </cfloop>
 </cfoutput>
 
 <cfscript>
     for(i=1;i<=3;i++){
         for(j=0;j<=6;j+=3){
             writeOutput(i+j);
         }
         writeOutput("<br>");
     }
 </cfscript>
    
    
     
 
     
     
     
         
    
 
 