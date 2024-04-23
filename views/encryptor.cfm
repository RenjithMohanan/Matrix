<!DOCTYPE>
<HTML>
<HEAD>
    <TITLE>Encryptor</TITLE>
    <style>
    textarea{width:100%;}
    .greyBox{background:lightgray; padding: 20px; border-radius: 7px;}
    .row{margin-bottom:10px;}
    .col{display: inline-block;}
    .btn{font-family: san-serif; font-size: 24px; background-color: white; border-color: darkslategrey; border-radius: 7px;}
    .center{text-align:center;}
    </style>
</HEAD>
<BODY>
    <div>
        <h1>Encryptor</h1>
        <div class="greyBox">
            <div class="row"><input name="text" type="text" value="" placeholder="Enter text here..."></div>
            <div class="row"><select name="algorithm">
                <option value="AES">AES</option>
                <option value="DES">AES</option>
                <option value="SHA5">AES</option>
            </select></div>
           <div class="row"><button type="submit">Encrypt</button></div>
        </div>
    </div>
</BODY>
</HTML>