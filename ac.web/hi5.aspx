<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hi5.aspx.cs" Inherits="ac.web.Hi5CodeTest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link type="text/css" rel="stylesheet" href="hi5.css" />
    <script src="prototype.js" type="text/javascript"></script>
    <script src="hi5.js" type="text/javascript"></script>
    <title>hi5 CodeTest</title>
</head>
<body onload="crop('imgHi5', 'crop', 0, 0, 350, 60); crop('imgHi5', 'ibHi', 2, 585, 113, 36); crop('imgHi5', 'iFoot', 1, 659, 20, 20);">    
    <div id="topbackground"></div> 
    <form id="Form1" runat="server">
    <input type="hidden" id="hidHi" runat="server" />
    <ajax:ToolkitScriptManager runat="Server" ID="smHi" CombineScripts="false" />

    <img id="imgHi5" src="Images/hi5.png" alt="hi5 image" style="display: none;" />    
                                  
    <div id="crop"></div><br />
    <div id="pageWrapper">
        <div class="rules">
            <b>The Rules:</b>
            <ol>
                <li>The form to the right should be able to be filled out. When the user clicks "Say Hi!", an entry should be added to the list below the form without a page load</li>
                <li>All CSS and JS should be loaded via external files except initilization scripts (if needed).</li>
                <li><i>All</i> text on this page should be rendered in an accessible manner.</li>
                <li>The rules are part of the page.</li>
                <li>The gray box should expand to match the size of the page content as the user submits the form over and over again.</li>
                <li>The page should function in both IE6 and the latest build of Google Chrome. It can render slightly differently as needed using progressive enhancement.</li>
                <li>All fields in the form should reset upon user form submission.</li>
                <li>Validate the E-mail and Password using simple validation. Also, all fields are required. There should be some feedback to let the user know what went wrong, if something does not work.</li>
                <li>You are allowed to use one (1) image file for the entire page.</li>
            </ol>
        </div>
        <div class="formbox">
            <label>
                <asp:Label runat="server" ID="lName" Text="Name" CssClass="textForm" />        
                <asp:TextBox runat="server" ID="tbName" CssClass="input" />
                <asp:RequiredFieldValidator runat="server" ID="rfvName" CssClass="warning" ControlToValidate="tbName" Display="Dynamic" EnableClientScript="true" Text="* required" ValidationGroup="hi5Group" />    
            </label>

            <label><asp:Label runat="server" ID="lEmail" Text="E-mail" CssClass="textForm"/>
                <asp:TextBox runat="server" ID="tbEmailAddress" CssClass="input" />
                <asp:RequiredFieldValidator runat="server" ID="rfvEmailAddress" CssClass="warning" ControlToValidate="tbEmailAddress" Display="Dynamic" EnableClientScript="true" Text="* required" ValidationGroup="hi5Group" />
                <asp:RegularExpressionValidator runat="server" ID="revEmailAddress" ControlToValidate="tbEmailAddress" Text="* not valid" Display="Dynamic" EnableClientScript="true" CssClass="warning" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="hi5Group" />
            </label>

            <label><asp:Label runat="server" ID="lPassword" Text="Password" CssClass="textForm" />
                <asp:TextBox runat="server" ID="tbPassword" TextMode="Password" CssClass="input" />
                <asp:RequiredFieldValidator runat="server" ID="rfvPassword" CssClass="warning" ControlToValidate="tbPassword" Display="Dynamic" EnableClientScript="true" Text="* required" ValidationGroup="hi5Group" />      
            </label>

            <label><asp:Label runat="server" ID="lConfirmPassword" Text="Confirm Password" CssClass="textForm"/>
                <asp:TextBox runat="server" ID="tbConfirmPassword" TextMode="Password" CssClass="input" />
                <asp:RequiredFieldValidator runat="server" ID="rfvConfirmPassword" CssClass="warning" ControlToValidate="tbConfirmPassword" Display="Dynamic" EnableClientScript="true" Text="* required field" ValidationGroup="hi5Group" />        
                <asp:CompareValidator runat="server" ID="cvPassword" ControlToValidate="tbConfirmPassword" ControlToCompare="tbPassword" Display="Dynamic" EnableClientScript="true" Operator="Equal" CssClass="warning" ErrorMessage="* no match" ValidationGroup="hi5Group" />
            </label>
        
            <label><asp:Label runat="server" ID="lSubscribe" Text="Subscribe?" CssClass="textForm"/>                          
                    <asp:RadioButtonList runat="server" ID="rblSubscribe" RepeatColumns="2" RepeatDirection="Horizontal" RepeatLayout="Table" CssClass="radio" >
                        <asp:ListItem Text="Yes" Value="1" Selected="True" />
                        <asp:ListItem Text="No" Value="0" />
                    </asp:RadioButtonList>
                <asp:RequiredFieldValidator runat="server" ID="rfvSubscribe" CssClass="warning" ControlToValidate="rblSubscribe" Display="Dynamic" EnableClientScript="true" Text="* required" ValidationGroup="hi5Group" />
            </label>
        
            <label><asp:Label runat="server" ID="lSpecialMessage" Text="Special Message" CssClass="header"/>
                <asp:TextBox runat="server" ID="tbSpecialMessage" TextMode="MultiLine" CssClass="input multiline" />
                <asp:RequiredFieldValidator runat="server" ID="rfvSpecialMessage" CssClass="warning" ControlToValidate="tbSpecialMessage" Display="Dynamic" EnableClientScript="true"  Text="* required" ValidationGroup="hi5Group" />
            </label>

            <div id="ibHi"  runat="server" />
            <hr />              
            <hi5:Hi5FormExtender id="hiForm" runat="server" NameTextBoxID="tbName" TargetControlID="ibHi" HiddenFieldID="hidHi" ContentID="content" EmailTextBoxID="tbEmailAddress" SpecialMessageTextBoxID="tbSpecialMessage" SubscribeID="rblSubscribe" PasswordTextBoxID="tbPassword" ConfirmPasswordTextBoxID="tbConfirmPassword"  />
                        
            <div id="content"></div> 
            <hr />                            
            <div id="iFoot" class="footer"></div>
            <p>All data submissions should be added to the list above here.
            <br />This text should also be rendered.</p>                            
        </div>
    </div>                                 
    </form> 
</body>
</html>