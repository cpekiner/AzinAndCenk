<%@ Page Title="" Language="C#" MasterPageFile="~/Master/ac.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ac.web.Content.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" runat="server">
    <title>Azin and Cenk - Home Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpBody" runat="server">
   <div id="mainbody">
        <ul class="nav">
            <li class="current"><a title="home" href="default.htm"><span>Home</span></a></li>
            <li><a title="engagement" href="default.htm#tab=2"><span>Engagement</span></a></li>
            <li><a title="reception" href="default.htm#tab=3"><span>Reception</span></a></li>
            <li><a title="recommendations" href="default.htm#tab=4"><span>Recommendations</span></a></li>
            <li><a title="honeymoon" href="default.htm#tab=5"><span>Future Plans</span></a></li>
            <li><a title="photos" href="default.htm#tab=6"><span>Photo Gallery</span></a></li>
        </ul>
   
        <div class="tabcontainer">
            <div class="tab current">
            We decided on a small wdding in Turkey because majority of Cenk's freinds and family are living over there,
            it's close to Iran, and also what is more fun than giving all of our friends and family
            who live around the world (Tehran, London, Paris, Milan, Hamburg, Budapest, Santa Marta, San Francisco, LA, New York, Torento, and Monreal )<br />
            a reason to get together in Fabulous Istanbul?<br />
            To all the guests who are traveling to Turkey, to join our celebration:<br />
            We hope the adventure will bae as memorable for you as it will be for us.<br /><br />
            With Love and Appreciation,<br /><br />
            Azin & Cenk
            </div>
            <div class="tab">Where?Araxi Restaurant <br />Which city? Whistler village</div>
            <div class="tab">KIZKULEST</div>
            <div class="tab">hotels:&hellip;<br />Restaurants:&hellip;<br />Night life:&hellip;<br />Shopping:&hellip;<br />Beauty Salons:&hellip;</div>
            <div class="tab">Santorini & Amalfi Coast</div>
            <div class="tab">Vacations<br />Parties<br />Engagement<br />Our Pet<br /></div>
        </div>
    </div>
</asp:Content>
