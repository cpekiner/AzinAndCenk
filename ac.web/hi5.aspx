<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hi5.aspx.cs" Inherits="ac.web.Hi5CodeTest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link type="text/css" rel="stylesheet" href="hi5.css" />
    <script src="prototype.js" type="text/javascript"></script>
    <script src="hi5.js" type="text/javascript"></script>
    <title>hi5 CodeTest</title>
</head>
<body onload="crop('imgHi5', 'crop', 0, 0, 478, 80); crop('imgHi5', 'ibHi', 2, 585, 113, 36); crop('imgHi5', 'iFoot', 1, 659, 20, 20);">    

    <form id="Form1" runat="server">
    <input type="hidden" id="hidHi" runat="server" />
    <ajax:ToolkitScriptManager runat="Server" ID="smHi" CombineScripts="false" />
    <img id="imgHi5" src="Images/hi5.png" alt="hi5 image" style="display: none;" />    
    <div id="pageWrapper">
        <div style="height: 200px; background: #ffe2c0; width: 1000px; text-align: center;">dd
            <div style="margin: 20px 0px 0px 0px">   
                <div style="height:300px; width: 950px; background: red;">                  
                    <div id="crop" style="float: left; width:478px; height:80px;"></div>
                    <div style="float: left; margin: 0px 0px 0px 5px; width: 500px;">
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
                    <div style="float: right;">
                        <label>
                            <span><asp:Label runat="server" ID="lName" Text="Name" /></span>        
                            <asp:TextBox runat="server" ID="tbName" CssClass="input" />
                            <asp:RequiredFieldValidator runat="server" ID="rfvName" CssClass="warning" ControlToValidate="tbName" Display="Dynamic" EnableClientScript="true" Text="* required field" ValidationGroup="hi5Group" />    
                        </label>

                        <label><span> <asp:Label runat="server" ID="lEmail" Text="E-mail" /></span>
                            <asp:TextBox runat="server" ID="tbEmailAddress" CssClass="input" />
                            <asp:RequiredFieldValidator runat="server" ID="rfvEmailAddress" CssClass="warning" ControlToValidate="tbEmailAddress" Display="Dynamic" EnableClientScript="true" Text="* required field" ValidationGroup="hi5Group" />
                            <asp:RegularExpressionValidator runat="server" ID="revEmailAddress" ControlToValidate="tbEmailAddress" Text="* not valid e-mail address" Display="Dynamic" EnableClientScript="true" CssClass="warning" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="hi5Group" />
                        </label>

                        <label><span><asp:Label runat="server" ID="lPassword" Text="Password" /></span>
                            <asp:TextBox runat="server" ID="tbPassword" TextMode="Password" CssClass="input" />
                            <asp:RequiredFieldValidator runat="server" ID="rfvPassword" CssClass="warning" ControlToValidate="tbPassword" Display="Dynamic" EnableClientScript="true" Text="* required field" ValidationGroup="hi5Group" />      
                        </label>

                        <label><span><asp:Label runat="server" ID="lConfirmPassword" Text="Confirm Password" /></span>
                            <asp:TextBox runat="server" ID="tbConfirmPassword" TextMode="Password" CssClass="input" />
                            <asp:RequiredFieldValidator runat="server" ID="rfvConfirmPassword" CssClass="warning" ControlToValidate="tbConfirmPassword" Display="Dynamic" EnableClientScript="true" Text="* required field" ValidationGroup="hi5Group" />        
                            <asp:CompareValidator runat="server" ID="cvPassword" ControlToValidate="tbConfirmPassword" ControlToCompare="tbPassword" Display="Dynamic" EnableClientScript="true" Operator="Equal" CssClass="warning" ErrorMessage="* passwords doesn't match" ValidationGroup="hi5Group" />
                        </label>
        
                        <label><span><asp:Label runat="server" ID="lSubscribe" Text="Subscribe?" /></span>                           
                                <asp:RadioButtonList runat="server" ID="rblSubscribe" RepeatColumns="2" RepeatDirection="Horizontal" RepeatLayout="Table" CssClass="radio" >
                                    <asp:ListItem Text="Yes" Value="1" Selected="True" />
                                    <asp:ListItem Text="No" Value="0" />
                                </asp:RadioButtonList>
                            <asp:RequiredFieldValidator runat="server" ID="rfvSubscribe" CssClass="warning" ControlToValidate="rblSubscribe" Display="Dynamic" EnableClientScript="true" Text="* required field" ValidationGroup="hi5Group" />
                        </label>
        
                        <label><span><asp:Label runat="server" ID="lSpecialMessage" Text="Special Message" CssClass="header" /></span>
                            <asp:TextBox runat="server" ID="tbSpecialMessage" TextMode="MultiLine" CssClass="input multiline" />
                            <asp:RequiredFieldValidator runat="server" ID="rfvSpecialMessage" CssClass="warning" ControlToValidate="tbSpecialMessage" Display="Dynamic" EnableClientScript="true"  Text="* required field" ValidationGroup="hi5Group" />
                        </label>

                        <div style="padding: 20px 0px 80px 215px">
                            <div id="ibHi" style="width:113px; height:36px;" runat="server"></div>                          
                        </div>
                       
                        <hi5:Hi5FormExtender id="hiForm" runat="server" NameTextBoxID="tbName" TargetControlID="ibHi" HiddenFieldID="hidHi" ContentID="content" EmailTextBoxID="tbEmailAddress" SpecialMessageTextBoxID="tbSpecialMessage" SubscribeID="rblSubscribe" PasswordTextBoxID="tbPassword" ConfirmPasswordTextBoxID="tbConfirmPassword"  />

                        <div style="background: black; width: 450px; height: 1px;" /><br />
                        
                        <div id="content"></div>

                        <div style="background: black; width: 450px; height: 1px; />
                        <div style="height: 10px" />  
                        
                        <div style="height: 100px; width: 450px;">
                             <div id="iFoot" class="footer"></div>
                             <div class="footerText">
                                All data submissions should be added to the list above here.
                                <br />This text should also be rendered.
                             </div>
                        </div>  
                    </div>       
                </div>        
            </div>
        </div>
    </div>
    </form>  
</body>
</html>