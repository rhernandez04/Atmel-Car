<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AtmelCar._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-header">
        <h1>Control Panel</h1>
    </div>
    <form runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-6">
                    <h2>Controls</h2>
                    <asp:Button id="carIgnition" text="Start" runat="server" OnClick="carIgnition_Click" CssClass="atmelButton"></asp:Button>
                    <asp:Button ID="carThrottle" Text="Throttle" runat="server" OnClick="carThrottle_Click" CssClass="atmelButton"></asp:Button>
                    <asp:Button ID="carLeft" Text="Turn left" runat="server" OnClick="carLeft_Click" CssClass="atmelButton"></asp:Button>
                    <asp:Button ID="carRight" Text="Turn right" runat="server" OnClick="carRight_Click" CssClass="atmelButton"></asp:Button>
                </div>
                <div class="col-xs-6">
                    <h2>Car Status</h2>
                    <asp:Label id="statusText" text="Off" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </form>
    <link href="Content/css/atmel.css" rel="stylesheet" type="text/css" />
</asp:Content>