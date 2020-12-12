<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Equipo.aspx.cs" Inherits="SolariumG.Equipo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="team-section" style="background-color: white">
        <%-- #card section--%>
        <div class="cgrid">
            <%--#grid limitante--%>
            <a class="card" href="CSGO.aspx">
                <div class="cardbg" style="background-image: url(css/img/counter-strike-global-offensive-1892489.jpg)"></div>
                <div class="ccontent">
                </div>
            </a>
            <a class="card" href="Brawlhalla.aspx">
                <div class="cardbg" style="background-image: url(css/img/Brawlhalla.jpeg)"></div>
                <div class="ccontent">
                </div>
            </a>
            <a class="card" href="Dota2.aspx">
                <div class="cardbg" style="background-image: url(css/img/Dota.jpg)"></div>
                <div class="ccontent">
                </div>
            </a>
            <a class="card" href="Fifa.aspx">
                <div class="cardbg" style="background-image: url(css/img/fifa-21.jpg)"></div>
                <div class="ccontent">
                </div>
            </a>
        </div>
    </section>

    <section class="team-section" style="background-color: white">
        <%-- #card section--%>
        <div class="cgrid">
            <%--#grid limitante--%>
            <a class="card" href="LeagueOfLegends.aspx">
                <div class="cardbg" style="background-image: url(css/img/League-of-Legends.jpg)"></div>
                <div class="ccontent">
                </div>
            </a>
            <a class="card" href="Paladins.aspx">
                <div class="cardbg" style="background-image: url(css/img/Paladins.jpg)"></div>
                <div class="ccontent">
                </div>
            </a>
            <a class="card" href="RainbowSix.aspx">
                <div class="cardbg" style="background-image: url(css/img/Rainbow.jpeg)"></div>
                <div class="ccontent">
                </div>
            </a>
            <a class="card" href="RocketLeague.aspx">
                <div class="cardbg" style="background-image: url(css/img/Rocket-League.jpg)"></div>
                <div class="ccontent">
                </div>
            </a>
        </div>
    </section>

    <section class="team-section" style="background-color: white">
        <%-- #card section--%>
        <div class="cgrid">
            <%--#grid limitante--%>
            <a class="card" href="Valorant.aspx">
                <div class="cardbg" style="background-image: url(css/img/Valorant.jpg)"></div>
                <div class="ccontent">
                </div>
            </a>
            <a class="card" href="Fortnite.aspx">
                <div class="cardbg" style="background-image: url(css/img/Fortnite.jpg)"></div>
                <div class="ccontent">
                </div>
            </a>
        </div>
    </section>

</asp:Content>
