<%@ Page Title="Game Calculator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Comp2084_Assignment1._default" %>
<%@ Register tagprefix="panel" Tagname="game" src="~/game.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-3">
            <div class="jumbotron">
                <h2>Game1</h2>
                <panel:game ID="game1" runat="server" />
            </div>
        </div>
        <div class="col-md-3">
            <div class="jumbotron">
                <h2>Game2</h2>
                <panel:game ID="game2" runat="server" />
            </div>
        </div>
        <div class="col-md-3">
            <div class="jumbotron">
                <h2>Game3</h2>
                <panel:game ID="game3" runat="server" />
            </div>
        </div>
        <div class="col-md-3">
            <div class="jumbotron">
                <h2>Game4</h2>
                <panel:game ID="game4" runat="server" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="offset-md-5 col-md-2">
            <asp:Button ID="btnSubmit" runat="server" Text="Calculate" CssClass="btn btn-outline-success marginBottom" OnClick="btnSubmit_Click"/>
        </div>
    </div>

    <div class="row">
        <asp:Panel ID="summary" runat="server" CssClass="visible-print-block">
         <div class="jumbotron">
            <asp:Label ID="finalWin" runat="server" ></asp:Label>
             <br />
            <asp:Label ID="finalLoss" runat="server" ></asp:Label>
             <br />
            <asp:Label ID="finalWinningPerc" runat="server" ></asp:Label>
             <br />
            <asp:Label ID="finalScored" runat="server" ></asp:Label>
             <br />
            <asp:Label ID="finalAllowed" runat="server" ></asp:Label>
             <br />
            <asp:Label ID="finalDiff" runat="server" ></asp:Label>
             <br />
            <asp:Label ID="finalAttandance" runat="server" ></asp:Label>
             <br />
            <asp:Label ID="finalAverageAttandance" runat="server" ></asp:Label>
             <br />
          </div>
        </asp:Panel>
    </div>
</asp:Content>
