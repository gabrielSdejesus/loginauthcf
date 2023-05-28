<cfinclude template="Auth.cfm">

<cfif #login# EQ true>
    <cflocation url="../home.cfm" addtoken="false">
</cfif>

<cfif !structKeyExists(form, "FIELDNAMES") OR
         !structKeyExists(form, "EMAIL_ADRESS_LOGIN") OR
            !structKeyExists(form, "PASSWORD_LOGIN")>
    <cflocation url="../index.cfm" addtoken="false">
</cfif>

<cftry>
    <cfscript>
        sql = "SELECT u.* FROM USER u WHERE u.EMAIL = :EMAIL";
        result = queryExecute(sql, {EMAIL: "#form.EMAIL_ADRESS_LOGIN#"}, {datasource = "MYSQL-LOGIN"});
        pass = result["PASSWORD"];

        if(result.RecordCount LTE 0){
            location(url="../index.cfm?message=3", addtoken=false);
        }

        if(!verifyBCryptHash(#form.PASSWORD_LOGIN#, pass)){
            location(url="../index.cfm?message=3", addtoken=false);
        }

        payload = {'email': #form.EMAIL_ADRESS_LOGIN#,
            "exp": dateAdd('n', 60*24*2, now())
        };
        token = new loginauthcf.jwtcfml.models.jwt().encode(payload, envname, 'HS256');

        Session.jwtToken = token;
        location(url="../home.cfm");
    </cfscript>
    <cfcatch type="any">
        <cflocation url="../index.cfm?message=4"  addtoken="false"/>
    </cfcatch>
</cftry>