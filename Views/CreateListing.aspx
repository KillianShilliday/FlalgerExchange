﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateListing.aspx.cs" Inherits="FlaglerExchange.Views.CreateListing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        html {
  font-size: 14px;
}

@media (min-width: 768px) {
  html {
    font-size: 16px;
  }
}

html {
  font-size: 14px;
}


.btn:focus, .btn:active:focus, .btn-link.nav-link:focus, .form-control:focus, .form-check-input:focus {
  box-shadow: 0 0 0 0.1rem white, 0 0 0 0.25rem #258cfb;
}

html {
  position: relative;
  min-height: 100%;
  background-color: #fdb924;
}

body {
  margin-bottom: 60px;
  background-color: #9e2339;
  
}
 .title{
    font-family: 'Times New Roman', Times, serif;
    font-size: 55px;

       }
.slogan{
    font-family: 'Times New Roman', Times, serif;
    font-size: 25px;
}
nav.indexNav{
    background-color: #fdb924;
    overflow: hidden;
    font-family: 'Times New Roman', Times, serif;
    font-size: 24px;
}

nav ul.indexNavUL {
    list-style-type: none;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: space-around;
}

nav li.indexNavList{
    float: left;
}

nav li a.indexNava {
    display: block;
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

nav li a.indexNava:hover{
    background-color: #9e2339;
    color: white;
}
/*--------------------------------Form stuff--------------------------------*/

.create-listing-container {
    background-color: #fff;
    padding: 50px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    max-width: 400px;
    width: 100%;

    justify-content:center;
    align-items: center;

    background-color: white;
}


label.create-account {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
}

input[type="text"],
input[type="email"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}



.create-listing-button {
    margin-top: 20px;
    padding: 10px;
    background-color: #fdb924;
    color: black;
    border:solid;
    border-radius: 10px;
    cursor: pointer;
    font-family: 'Times New Roman';
    
}
.create-listing-button:hover {
        background-color: #9e2339;
        color: white;
        
}
    </style>


    <div class="text-center">
    <h1 class="title" style="color:white">Flagler Exchange</h1>
    <img src="/Images/Flagler.jpeg" alt="Flagler Logo"/>
    <p class="slogan"style="color:white">An easy platform to trade your items!</p>
</div>

<!--Basic Nav bar allowing for the navigation to different parts of the site (THIS WILL BE CHANGED OBVIOUSLY)-->
<nav class="indexNav">
    <ul class="indexNavUL">
        <li class="indexNavList">
            <a href="/Views/Home.aspx">
            <img src="/Images/FlaglerExchangeLogo.png" style="border-style:groove" width="80" height="75" alt="Home">
            </a>
        </li>
        <li class="indexNavList" style="border-style:double; border-color:#9e2339; border-width:thick"><a class="indexNava" href="/Views/Listing.aspx">My Listings</a></li>
        <li class="indexNavList" style="border-style:double; border-color:#9e2339; border-width:thick"><a class="indexNava" href="/Views/Profile.aspx">Profile</a></li>
        <li class="indexNavList" style="border-style:double; border-color:#9e2339; border-width:thick"><a class="indexNava" href="/Views/Login.aspx">Logout</a></li>
    </ul>
</nav>

<!---------------------------------------------- Main Body Content for this page--------------------------------------->
    <body>
        <div class="create-listing-container" style="margin: 0 auto">
<table class="w-100" style="margin: 0 auto;">
    <tr>
        <td style="width: 50px">&nbsp;</td>
        <td style="width: 1038px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 50px; height: 30px"></td>
        <td style="width: 1038px; height: 30px">
            <asp:Label ID="Label4" runat="server" Font-Names="Times New Roman" Text="Item Title"></asp:Label>
        </td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
    </tr>
    <tr>
        <td style="width: 50px; height: 30px"></td>
        <td style="width: 1038px; height: 30px">
            <asp:TextBox class="input" ID="TextBox1" runat="server" Width="258px"></asp:TextBox>
        </td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
    </tr>
    <tr>
        <td style="width: 50px; height: 30px"></td>
        <td style="width: 1038px; height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
    </tr>
    <tr>
        <td style="width: 50px; height: 30px"></td>
        <td style="width: 1038px; height: 30px">
            <asp:Label ID="Label1" runat="server" Text="Add Images:" Font-Names="Times New Roman" Font-Strikeout="False"></asp:Label>
        </td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
    </tr>
    <tr>
        <td style="width: 50px; height: 30px"></td>
        <td style="width: 1038px; height: 30px">
            <asp:FileUpload class="create-listing-button" ID="FileUpload1" runat="server" AllowMultiple="True"/>
        </td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
    </tr>
    <tr>
        <td style="width: 50px; height: 11px"></td>
        <td style="width: 1038px; height: 11px"></td>
        <td style="height: 11px"></td>
        <td style="height: 11px"></td>
        <td style="height: 11px"></td>
    </tr>
    <tr>
        <td style="width: 50px; height: 45px"></td>
        <td style="width: 1038px; height: 45px">
            <asp:Button class="create-listing-button" ID="Button1" runat="server" Height="39px" Text="Add Another Image"/>
        </td>
        <td style="height: 45px"></td>
        <td style="height: 45px"></td>
        <td style="height: 45px"></td>
    </tr>
    <tr>
        <td style="width: 50px; height: 30px"></td>
        <td style="width: 1038px; height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
    </tr>
    <tr>
        <td style="width: 50px; height: 30px"></td>
        <td style="width: 1038px; height: 30px">
            <asp:Label ID="Label2" runat="server" Text="Item Description:" Font-Names="Times New Roman"></asp:Label>
        </td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
    </tr>
    <tr>
        <td style="width: 50px">&nbsp;</td>
        <td style="width: 1038px">
            <textarea class="input" ID="TextArea1" name="S1" style="width: 413px; height: 105px"></textarea></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 50px; height: 30px"></td>
        <td style="width: 1038px; height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
    </tr>
    <tr>
        <td style="width: 50px; height: 30px"></td>
        <td style="width: 1038px; height: 30px">
            <asp:Label ID="Label3" runat="server" Text="Add Tags:" Font-Names="Times New Roman"></asp:Label>
        </td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
        <td style="height: 30px"></td>
    </tr>
    <tr>
        <td style="width: 50px">&nbsp;</td>
        <td style="width: 1038px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 50px">&nbsp;</td>
        <td style="width: 1038px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

            </div>
    </body>

</asp:Content>
