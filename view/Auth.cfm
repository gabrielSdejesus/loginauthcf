<cfapplication name="authApp" sessionManagement="Yes">

<cfscript>
    try{
        login = false;
        system  = createObject("java", "java.lang.System");
        envname = system.getProperty("secret.key");
        jwtToken = Session.jwtToken;

        if(len(jwtToken) GT 0){
            tokenDecode = new loginauthcf.jwtcfml.models.jwt().decode(jwtToken, envname, 'HS256', {"exp": dateAdd('n', -1, now())});

            sql = "SELECT * FROM USER u WHERE u.EMAIL = :EMAIL";
            result = queryExecute(sql, {EMAIL: tokenDecode["EMAIL"]}, {datasource = "MYSQL-LOGIN"});
            if(result.RecordCount GT 0) {
                login = true;
            }
        }
    } catch (any e) {
        StructClear(Session);
    }
</cfscript>