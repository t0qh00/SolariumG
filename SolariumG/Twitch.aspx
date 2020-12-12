<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Twitch.aspx.cs" Inherits="SolariumG.Twitch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div id="twitch-embed"></div>

        <script src="https://embed.twitch.tv/embed/v1.js"></script>

        <script type="text/javascript">
            new Twitch.Embed("twitch-embed", {
                width: 854,
                height: 480,
                channel: "SolariumEsports",
            });
        </script>
    </div>
</asp:Content>
