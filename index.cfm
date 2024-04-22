<cfscript>
    cfparam(name="url.action", default="", pattern="");
    switch(lcase(url.action)){
        case "main":
            include "/controllers/main/mainAction.cfm";
        break;

        // The provided event could not be matched.
        default:
           // throw( type="InvalidEvent" );
           include "/controllers/welcome.cfm";
        break;
    }
</cfscript>