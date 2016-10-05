<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="game.ascx.cs" Inherits="Comp2084_Assignment1.game" %>

<div class="form-group">
    <asp:Label ID="lblGameResult" runat="server" CssClass="l">Result:</asp:Label>
    <asp:RadioButtonList ID="rblGameResult" runat="server" CssClass="form-control">
        <asp:ListItem Value="1">Win</asp:ListItem>
        <asp:ListItem Value="0">Loss</asp:ListItem>
    </asp:RadioButtonList>
    <%-- Required Validator for radiobuttons --%>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="rblGameResult" Display="Dynamic" CssClass="alert-danger"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
    <asp:Label ID="lblGameScored" runat="server">Scored:</asp:Label>
    <asp:TextBox ID="txtGameScored" runat="server" CssClass="form-control" Type="number"></asp:TextBox>
    <%-- Required and Range Validator for game score --%>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="txtGameScored" Display="Dynamic" CssClass="alert-danger"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Invalid Value" ControlToValidate="txtGameScored" Type="Integer" Display="Dynamic" MinimumValue="0" MaximumValue="99999" CssClass="alert-danger"></asp:RangeValidator>
</div>
<div class="form-group">
    <asp:Label ID="lblGameAllowed" runat="server">Allowed:</asp:Label>
    <asp:TextBox ID="txtGameAllowed" runat="server" CssClass="form-control" Type="number"></asp:TextBox>
    <%-- Required and Range Validator for game allowed --%>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="txtGameAllowed" Display="Dynamic" CssClass="alert-danger"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Invalid Value" ControlToValidate="txtGameAllowed" Type="Integer" Display="Dynamic" MinimumValue="0" MaximumValue="99999" CssClass="alert-danger"></asp:RangeValidator>

</div>
<div class="form-group">
    <asp:Label ID="lblGameSpectators" runat="server">Spectators:</asp:Label>
    <asp:TextBox ID="txtGameSpectators" runat="server" CssClass="form-control" Type="number"></asp:TextBox>
    <%-- Required and Range Validator for game spectators --%>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ControlToValidate="txtGameSpectators" Display="Dynamic" CssClass="alert-danger"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="Invalid Value" ControlToValidate="txtGameSpectators" Type="Integer" Display="Dynamic" MinimumValue="0" MaximumValue="9999999" CssClass="alert-danger"></asp:RangeValidator>
</div>
