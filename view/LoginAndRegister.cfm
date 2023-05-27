<cftry>
    <cfquery datasource="MYSQL-LOGIN" name="findByEmail">
        SELECT u.EMAIL FROM USER u WHERE u.EMAIL = <cfqueryparam value = #form.EMAIL_ADRESS_REGISTER#>
    </cfquery>

    <cfif findByEmail.EMAIL EQ #form.EMAIL_ADRESS_REGISTER#>
        <cflocation url="../index.cfm?message=2" addtoken="false"/>
    </cfif>

    <cfif isDefined("form.your_name")>
        <cfset email = #form.EMAIL_ADRESS_REGISTER#>
        <cfset password = GenerateBCryptHash(#form.PASSWORD#)>
        <cfset name = #form.YOUR_NAME#>

        <cfquery datasource="MYSQL-LOGIN">
            INSERT INTO USER (EMAIL, NAME, PASSWORD)
            VALUES (
            <cfqueryparam value = #email#>,
            <cfqueryparam value = #name#>,
            <cfqueryparam value = #password#>)
        </cfquery>

        <cflocation url="../index.cfm?message=1" addtoken="false"/>
    </cfif>
    <cfcatch type="any">
        <cflocation url="../index.cfm?message=0"  addtoken="false"/>
    </cfcatch>
</cftry>