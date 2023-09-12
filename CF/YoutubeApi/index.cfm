<cfoutput>
    <cfset Api_key="AIzaSyAqnddqWUsPKRwdlrE8didFZybdjnhy7DU">
    <cfset Channel_id="UCEwIUtFBhaI2L2PuKv0KL2g">
    <cfhttp  result="result" method="GET" url='https://youtube.googleapis.com/youtube/v3/search?key=#Api_key#&channelId=#Channel_id#'>
        <cfhttpparam  type="url" name="part" value="snippet">
        <cfhttpparam  type="url" name="ChannelId" value="#Channel_id#">
        <cfhttpparam  type="url" name="maxResults" value="25">
        <cfhttpparam  type="url" name="Key" value="#Api_key#">
    </cfhttp>
   
    <cfset record=deserializeJSON('#result.filecontent#')>
    <cfif structKeyExists(record, "items")>
        <cfset videoid="#record.items[2].id.videoId#">
        <iframe src="https://www.youtube.com/embed/#videoid#"></iframe> 
    </cfif>
</cfoutput>

