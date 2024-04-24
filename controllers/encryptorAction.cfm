<cfscript>
cfparam( name="variables.plaintext", default="");
cfparam( name="variables.algorithm", default="");
cfparam( name="variables.key", default="");
cfparam( name="variables.cipherText", default="");
/*
myAESKey=generateSecretKey(("BLOWFISH"),256)
writeOutput(myAESKey)
abort;
*/
if(structKeyExists(form,'plaintext') AND len(form.plaintext) GT 0 AND len(form.algorithm) GT 0) {
   
    variables.plainText = form.plainText;
    variables.algorithm = form.algorithm;
    //variables.key = form.key;

    if(variables.algorithm EQ 'AES')
        variables.key = 'Dtvqo75I3IX/e0SU/2vdNg==';
    else if (variables.algorithm EQ 'DES')
        variables.key = 'mA4aN6QpZFg=';
    else if(variables.algorithm EQ 'BLOWFISH')
        variables.key = 'qb01bwxzfYWa3mh16O3MCNk5/zoXc9qaaR32MdFpG/8=';
    variables.cipherText = encrypt(variables.plainText,variables.key,variables.algorithm,'Hex')
    
}

include "/views/encryptor.cfm";
</cfscript>