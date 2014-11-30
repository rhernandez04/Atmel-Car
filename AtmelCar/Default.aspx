<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AtmelCar._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="container">
            <h1>Control Panel</h1>
            <div class="row">
                <div class="col-md-6">
                    <h2>Controls</h2>
                    <p><asp:Button id="carIgnition" text="Start" runat="server" OnClick="carIgnition_Click"></asp:Button></p>
                </div>
                <div class="col-md-6">
                    <h2>Car Status</h2>
                    <p><asp:Label id="randomText" text="Off" runat="server"></asp:Label></p>
                </div>
            </div>
        </div>
    </form>
    <link href="Content/css/atmel.css" rel="stylesheet" type="text/css" />
</asp:Content>