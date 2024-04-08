﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Item.aspx.cs" Inherits="FlaglerExchange.Views.Item" %>
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

/* CSS For Bryan's page specifically*/
div#item-container{
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  margin: 0;
  background-color: #f0f0f0;
}

.container {
  text-align: center;
}

.text-box {
  padding: 10px;
  background-color: #ffffff;
  border: 1px solid #cccccc;
  border-radius: 5px;
  margin-bottom: 10px;
}

.image-container {
  position: relative;
  display: inline-block;
}

.image-container img {
  max-width: 100%;
  height: auto;
}

.prev-btn,
.next-btn {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  font-size: 24px;
  padding: 10px;
  background-color: rgba(255, 255, 255, 0.7);
  border: none;
  cursor: pointer;
}

.prev-btn {
  left: 10px;
}

.next-btn {
  right: 10px;
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
   



<!-- Because each of these pages is housed in an asp:Content element, that acts as the body. Don't need the <html> or <body> tags -->
<!-- Instead, we just use <div> elements to act as containers, and specify the type of container using the `class` attribute. --> 
    <!-- This contains the whole element -->
<div class="container-fluid">
    <!-- Each class="row" container allows you to better separate elements of the form sequentially -->
    <div id="item-container" class="row">
                <!-- Each class="col-x" element organizes your element into a square cell  -->
            <div class="col-sm title">
                <!-- This needs to be "Item Name" rather than product name -->
                <asp:Label ID="itemName" runat="server" Text="Item Name"></asp:Label>
            </div>
        <div class="row">
            <!--- This row is to display Price and date posted -->
            <div class ="container">
                <div class="body-content">
                    <strong><asp:Label ID="datePosted" runat="server" Text="Date Posted"></asp:Label></strong> 
                    <!-- this is for the spacing of the labels -->
                    <span>&nbsp;</span>
                    <span>&nbsp;</span>
                    <span>&nbsp;</span>
                    <span>&nbsp;</span>
                    <span>&nbsp;</span>
                    <span>&nbsp;</span>
                    <span>&nbsp;</span>
                    <span>&nbsp;</span>
                    <span>&nbsp;</span>
                    <span>&nbsp;</span>
                    <span>&nbsp;</span>
                    <span>&nbsp;</span>
                    <span>&nbsp;</span>
                    <span>&nbsp;</span>
                    <span>&nbsp;</span>
                    <span>&nbsp;</span>
                    <span>&nbsp;</span>
                    <strong><asp:Label ID="price" runat="server" Text="Price"></asp:Label> </strong>  
                </div>
                
            </div>
        </div>
            <div class="row">
                
                <div class="col-lg">
                    <!-- This container thing allows the item image be contained better -->
                    <div class ="container">
                        <div class="body-content">
                            <asp:Button ID="previousImage" runat="server" Text="<" />
                            <img id="product-image" src="/Images/Cat.jpeg" alt="Product Image" width="300">
                            <asp:Button ID="nextImage" runat="server" Text=">" />
                              
                        </div>
                       
            </div>
        </div>
            </div>
            <div class="row">
                <div class="col-sm">
                    <div class="text-body">
                        <asp:Label ID="itemDescription" runat="server" Text="Description of the item goes here"></asp:Label>
                    </div>
                    <div class="container-fluid offset-2" style="border: solid; width: 900px; height: 300px;">
                        <asp:TextBox ID="itemDescriptionTB" runat="server" TextMode="MultiLine" Width="900px" Height="300px"></asp:TextBox>
                    </div>
                </div>
            </div>
        <!--Button that redircets to seller's profile -->
        <asp:Button ID="contactSeller" runat="server" Text="Contact Seller" OnClick="contactSeller_Click" />
        </div>
    </div>
</asp:Content>  
  
  
  
  
  
  
