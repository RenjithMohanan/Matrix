<cfparam name="n" default="10">

<cfif StructKeyExists(form,"number") AND IsNumeric(form.number)>
    <cfset n = form.number>
</cfif>
<cfset dCount =ceiling(sqr(n))>
<cfoutput>
    <style>
        .greyBg{background:lightgray;padding:20px;border-radius:7px;}
        .content{width:100%;text-align:center;font-family:Calibiri;font-size:30px;}
        .content td{text-align:center;font-family:Calibiri;font-size:30px;}
    </style>
    <h1>Cool Matrix!</h1>

    <div>
       
        <div align="center">
            <form action="" method="post">
                <input name="number" value="#n#">
                <button type="submit" >Submit</button>
            </form>
        </div>
      
    </div>

    <div class="greyBg">
        <div class="content" align="center">
            <table border="1" width="50%" height="50%">
                <cfloop from="1" to="#dCount*dCount#" index="item">
                    <cfif (item MOD dCount) EQ 1></tr></cfif><td><cfif item LTE n>#item# <cfelse>0</cfif></td><cfif (item MOD dCount) EQ 0></tr></cfif>
                </cfloop>
            </table>
        </div>
    </div>
</cfoutput>