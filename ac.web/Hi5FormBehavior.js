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

        // Initalization code
        $addHandler(this.get_element(), 'click',
        Function.createDelegate(this, this._click));
        this._click();
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

    _click: function () {
        var name = $get(this._nameTextBoxID);
        var email = $get(this._emailTextBoxID);
        var specialMessage = $get(this._specialMessageTextBoxID);
        var hiddenField = $get(this._hiddenFieldID);
        var content = $get(this._contentID);
        var password = $get(this._passwordTextBoxID);
        var confirmPassword = $get(this._confirmPasswordTextBoxID);

        var rbl = document.getElementsByName(this._subscribeID);

        if (rbl[1].checked) {
            var subscribe = "Yes";
        }
        else {
            var subscribe = "No";
        }

        hiddenField.value = hiddenField.value + ":::" + name.value + "_" + email.value + "_" + subscribe + "_" + specialMessage.value;

        var contents = hiddenField.value.split(":::");

        for (i = 0; i < contents.length; i++) {
            var details = contents[i].split('_');
            if (details[2] == "Yes") {
                var subscribeClass = "box subscribedSuccess";
                var subscribeTex = "Subscribed!";
            }
            else {
                var subscribeClass = "box subscribedFailure";
                var subscribeTex = "Not Subscribed!";
            }
            var message = "<table border=0 cellpadding=0 cellspacing=0 class=detailBox><tr><td class='box text column1'><b>" + details[0] + "</b></td><td rowspan=3 class='box text column2'>" + details[3] + "</tr><tr><td class='box email'><a href=mailto:" + details[1] + ">" + details[1] + "</a></td></tr><tr><td class='" + subscribeClass + "'><div id='iFailure' style='width:9px; height:11px;'></div>" + subscribeTex + "</td></tr></table>";
        }
        content.innerHTML = content.innerHTML + message;
        name.value = "";
        email.value = "";
        specialMessage.value = "";
        password.value = "";
        confirmPassword.value = "";
    }
}

ac.web.Hi5FormBehavior.registerClass('ac.web.Hi5FormBehavior', Sys.Extended.UI.BehaviorBase);


