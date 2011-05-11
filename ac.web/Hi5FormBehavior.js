Type.registerNamespace('ac.web');

ac.web.Hi5FormBehavior = function (element) {

    ac.web.Hi5FormBehavior.initializeBase(this, [element]);

    this._targetButtonIDValue = null;
    this._nameTextBoxID = null;
    this._hiddenFieldID = null;
    this._contentID = null;
    this._subscribeID = null;
    this._emailTextBoxID = null;
    this._passwordTextBoxID = null;
    this._confirmPasswordTextBoxID = null;
    this._specialMessageTextBoxID = null;
}

ac.web.Hi5FormBehavior.prototype = {

    initialize: function () {
        ac.web.Hi5FormBehavior.callBaseMethod(this, 'initialize');
        $addHandler(this.get_element(), 'click',
        Function.createDelegate(this, this._click));
    },

    dispose: function () {
        ac.web.Hi5FormBehavior.callBaseMethod(this, 'dispose');
    },

    // Property accessors 
    //
    get_TargetButtonID: function () {
        return this._targetButtonIDValue;
    },

    set_TargetButtonID: function (value) {
        this._targetButtonIDValue = value;
    },

    get_NameTextBoxID: function () {
        return this._nameTextBoxID;
    },

    set_NameTextBoxID: function (value) {
        this._nameTextBoxID = value;
    },

    get_HiddenFieldID: function () {
        return this._hiddenFieldID;
    },

    set_HiddenFieldID: function (value) {
        this._hiddenFieldID = value;
    },

    get_ContentID: function () {
        return this._contentID;
    },

    set_ContentID: function (value) {
        this._contentID = value;
    },

    get_SubscribeID: function () {
        return this._subscribeID;
    },

    set_SubscribeID: function (value) {
        this._subscribeID = value;
    },

    get_EmailTextBoxID: function () {
        return this._emailTextBoxID;
    },

    set_EmailTextBoxID: function (value) {
        this._emailTextBoxID = value;
    },

    get_SpecialMessageTextBoxID: function () {
        return this._specialMessageTextBoxID;
    },

    set_SpecialMessageTextBoxID: function (value) {
        this._specialMessageTextBoxID = value;
    },

    get_PasswordTextBoxID: function () {
        return this._passwordTextBoxID;
    },

    set_PasswordTextBoxID: function (value) {
        this._passwordTextBoxID = value;
    },

    get_ConfirmPasswordTextBoxID: function () {
        return this._confirmPasswordTextBoxID;
    },

    set_ConfirmPasswordTextBoxID: function (value) {
        this._confirmPasswordTextBoxID = value;
    },

    validate: function (validatorID, value) {
        if (value == "") {
            var validator = $get(validatorID);
            if (validator != null) {
                validator.style.display = "block";
            }
            return false;
        }
        return true;
    },

    _click: function () {
        var isValid = true;
        var name = $get(this._nameTextBoxID);
        var email = $get(this._emailTextBoxID);
        var password = $get(this._passwordTextBoxID);
        var confirmPassword = $get(this._confirmPasswordTextBoxID);
        var specialMessage = $get(this._specialMessageTextBoxID);

        isValid = this.validate("rfvName", name.value);
        isValid = this.validate("rfvEmailAddress", email.value);
        isValid = this.validate("rfvPassword", password.value);
        isValid = this.validate("rfvConfirmPassword", confirmPassword.value);
        isValid = this.validate("rfvSpecialMessage", specialMessage.value);

        if (isValid) {
            var hiddenField = $get(this._hiddenFieldID);
            var content = $get(this._contentID);

            var rbl = document.getElementsByName(this._subscribeID);

            if (rbl[1].checked) {
                var subscribe = "Yes";
            }
            else {
                var subscribe = "No";
            }

            hiddenField.value = hiddenField.value + ":::" + name.value + "___" + email.value + "___" + subscribe + "___" + specialMessage.value;

            var contents = hiddenField.value.split(":::");

            for (i = 0; i < contents.length; i++) {
                var details = contents[i].split("___");
                if (details[2] == "Yes") {
                    var subscribeClass = "box subscribedSuccess";
                    var subscribeTex = "Subscribed!";
                    var image = "<div style=position:relative;height:14px;width:14px;><img src=Images/hi5.png style='position:absolute;top:0px;left:0px;clip:rect(630px 12px 640px 3px);top:-630px;left:-3px;' /></div>";
                }
                else {
                    var subscribeClass = "box subscribedFailure";
                    var subscribeTex = "Not Subscribed!";
                    var image = "<div style=position:relative;height:14px;width:14px;><img src=Images/hi5.png style='position:absolute;top:0px;left:0px;clip:rect(642px 12px 653px 3px);top:-642px;left:-3px;' /></div>";
                }
                var message = "<table border=0 cellpadding=0 cellspacing=0 class=detailBox><tr><td class='box text column1'><b>" + details[0] + "</b></td><td rowspan=3 class='box text column2'>" + details[3] + "</tr><tr><td class='box email'><a href=mailto:" + details[1] + ">" + details[1] + "</a></td></tr><tr><td class='" + subscribeClass + "'>" + image + "&nbsp;&nbsp;" + subscribeTex + "</td></tr></table>";                
            }
            content.innerHTML = content.innerHTML + message;
            name.value = "";
            email.value = "";
            specialMessage.value = "";
            password.value = "";
            confirmPassword.value = "";
        }
    }
}

ac.web.Hi5FormBehavior.registerClass('ac.web.Hi5FormBehavior', Sys.Extended.UI.BehaviorBase);


