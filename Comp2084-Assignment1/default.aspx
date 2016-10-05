<%@ Page Title="Game Calculator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Comp2084_Assignment1._default" %>
<%@ Register tagprefix="panel" Tagname="game" src="~/game.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-3">
            <div class="well">
                <h2>Game1</h2>
                <panel:game ID="game1" runat="server" />
            </div>
        </div>
        <div class="col-md-3">
            <div class="well">
                <h2>Game2</h2>
                <panel:game ID="game2" runat="server" />
            </div>
        </div>
        <div class="col-md-3">
            <div class="well">
                <h2>Game3</h2>
                <panel:game ID="game3" runat="server" />
            </div>
        </div>
        <div class="col-md-3">
            <div class="well">
                <h2>Game4</h2>
                <panel:game ID="game4" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>
