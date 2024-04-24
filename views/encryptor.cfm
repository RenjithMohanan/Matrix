<cfoutput>
<!DOCTYPE html>
<HTML>
<HEAD>
    <TITLE>Encryptor</TITLE>
    <style>
    body{font-family:monospace;font-size:24px;}
    textarea{width:100%;}
    .greyBox{background:lightgray; padding: 20px; border-radius: 7px;}
    .whiteBox{background:white;padding: 20px; border-radius: 7px;height: 30px;}
    .row{margin-bottom:10px;}
    .col{display: inline-block;}
    .btn{font-family: san-serif; font-size: 24px; background-color: white; border-color: darkslategrey; border-radius: 7px;}
    .center{text-align:center;}
    ##btnSubmit{background:skyblue;}
    ##btnCopyToClipBoard{float:right;}
    ##cipherTextContainer{float:left;width:90%;}
    ##cipherTextHolder{width: 100%; background: none; border: none; font-size: 24px; font-family: monospace;}]
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
        $(document).ready(function(){
            $('##btnClear').click(function(){
                $('input,select').val('');
            });
        });
        function copyToClipBoard() {
            // Get the text field
            var copyText = document.getElementById("cipherTextHolder");

            // Select the text field
            copyText.select();
            copyText.setSelectionRange(0, 99999); // For mobile devices

            // Copy the text inside the text field
            navigator.clipboard.writeText(copyText.value);

            // Alert the copied text
            if(copyText.value.length)
                alert("Copied the text: " + copyText.value); 
        }
    </script>
</HEAD>
<BODY>
    <div>
        <h1>Encryptor</h1>
        <div class="greyBox">
            <form action="" method="post">
                <div class="row"><input name="plaintext" type="text" value="#variables.plaintext#" placeholder="Enter text here..." size="100%"></div>
                <div class="row"><select name="algorithm">
                    <option value="">Select Algorithm</option>
                    <option value="AES" <cfif variables.algorithm EQ 'AES'> selected</cfif>>AES</option>
                    <option value="DES"<cfif variables.algorithm EQ 'DES'> selected</cfif>>DES</option>
                    <option value="BLOWFISH"<cfif variables.algorithm EQ 'BLOWFISH'> selected</cfif>>BLOWFISH</option>
                </select></div>
                <!---<div class="row"><input name="key" type="text" value="" placeholder="Enter key here..."></div>--->
                <div class="row"><button type="button" id="btnClear">Clear</button> &nbsp;<button type="submit" id="btnSubmit">Encrypt</button></div>
           </form>

           <div class="whiteBox"><div id="cipherTextContainer"><input type="text" value="#variables.cipherText#" id="cipherTextHolder"></div> <button type="button" id="btnCopyToClipBoard" onclick="copyToClipBoard()">Copy</button></div>
        </div>
    </div>
</BODY>
</HTML>
</cfoutput>