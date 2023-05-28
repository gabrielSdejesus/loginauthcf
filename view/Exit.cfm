<cfapplication name="authApp" sessionManagement="Yes">

<cfscript>
    structClear(Session);
    location(url="../index.cfm", addtoken=false);
</cfscript>