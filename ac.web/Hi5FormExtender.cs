using System.ComponentModel;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using AjaxControlToolkit;

[assembly: System.Web.UI.WebResource("ac.web.Hi5FormBehavior.js", "text/javascript")]

namespace ac.web
{
    [ClientScriptResource("ac.web.Hi5FormBehavior", "ac.web.Hi5FormBehavior.js")]
    [TargetControlType(typeof(HtmlGenericControl))]
    public class Hi5FormExtender
        : ExtenderControlBase
    {
        [ExtenderControlProperty]
        [DefaultValue("")]
        [IDReferenceProperty(typeof(Panel))]
        public string TargetButtonID
        {
            get
            {
                return GetPropertyValue("TargetButtonID", "");
            }
            set
            {
                SetPropertyValue("TargetButtonID", value);
            }
        }

        [RequiredProperty]
        [ExtenderControlProperty]
        [IDReferenceProperty(typeof(TextBox))]
        public string NameTextBoxID
        {
            get
            {
                return GetPropertyValue<string>("NameTextBoxID", null);
            }
            set
            {
                SetPropertyValue<string>("NameTextBoxID", value);
            }
        }

        [RequiredProperty]
        [ExtenderControlProperty]
        [IDReferenceProperty(typeof(TextBox))]
        public string EmailTextBoxID
        {
            get
            {
                return GetPropertyValue<string>("EmailTextBoxID", null);
            }
            set
            {
                SetPropertyValue<string>("EmailTextBoxID", value);
            }
        }

        [RequiredProperty]
        [ExtenderControlProperty]
        [IDReferenceProperty(typeof(TextBox))]
        public string SpecialMessageTextBoxID
        {
            get
            {
                return GetPropertyValue<string>("SpecialMessageTextBoxID", null);
            }
            set
            {
                SetPropertyValue<string>("SpecialMessageTextBoxID", value);
            }
        }

        [RequiredProperty]
        [ExtenderControlProperty]
        [IDReferenceProperty(typeof(RadioButtonList))]
        public string SubscribeID
        {
            get
            {
                return GetPropertyValue<string>("SubscribeID", null);
            }
            set
            {
                SetPropertyValue<string>("SubscribeID", value);
            }
        }

        [RequiredProperty]
        [ExtenderControlProperty]
        [IDReferenceProperty(typeof(TextBox))]
        public string PasswordTextBoxID
        {
            get
            {
                return GetPropertyValue<string>("PasswordTextBoxID", null);
            }
            set
            {
                SetPropertyValue<string>("PasswordTextBoxID", value);
            }
        }

        [RequiredProperty]
        [ExtenderControlProperty]
        [IDReferenceProperty(typeof(TextBox))]
        public string ConfirmPasswordTextBoxID
        {
            get
            {
                return GetPropertyValue<string>("ConfirmPasswordTextBoxID", null);
            }
            set
            {
                SetPropertyValue<string>("ConfirmPasswordTextBoxID", value);
            }
        }

        [RequiredProperty]
        [ExtenderControlProperty]
        [IDReferenceProperty(typeof(HiddenField))]
        public string HiddenFieldID
        {
            get
            {
                return GetPropertyValue<string>("HiddenFieldID", null);
            }
            set
            {
                SetPropertyValue<string>("HiddenFieldID", value);
            }
        }

        [RequiredProperty]
        [ExtenderControlProperty]
        [IDReferenceProperty(typeof(HtmlControl))]
        public string ContentID
        {
            get
            {
                return GetPropertyValue<string>("ContentID", null);
            }
            set
            {
                SetPropertyValue<string>("ContentID", value);
            }
        }
    }
}
