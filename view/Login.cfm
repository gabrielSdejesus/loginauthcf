<cfapplication name="authApp" sessionManagement="Yes">
<cfscript>
    jwt = new loginauthcf.jwtcfml.models.jwt();
    payload = {'email': 'email@email.com',
        'name' : 'Gabriel de Jesus',
        "exp": dateAdd('n', 60*24*2, now())
    };
    secret = 'emailLoginAuthLog';
    token = jwt.init().encode(payload, secret, 'HS256');
</cfscript>
<cfdump var=#token#>
<cfscript>
    tokenDecode = jwt.decode(token, secret, 'HS256');
</cfscript>
<cfdump var=#tokenDecode#>
<cfset session.jwtToken = token>
<cfdump var=#session.jwtToken#>