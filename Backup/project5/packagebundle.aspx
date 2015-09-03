<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="packagebundle.aspx.cs" Inherits="project5.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<link rel="stylesheet" type="text/css" href="style.css" media="all" />
 <div class="container">
 <div class="freshdesignweb-top">
<div  class="form">
<form id="contactform"> 
<br /><br />
<div style="font-size:xx-large;text-align:center">

<asp:Label ID="lbl" runat="server" Text="PACKAGE BUNDLE"></asp:Label>
</div>
<br /><br />

 <p class="contact" style="font-weight:bold;color:black">
<asp:Label ID="lblpkid" Text="Package ID" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtpkid" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
    ErrorMessage="*" style="color:Red" ControlToValidate="txtpkid"></asp:RequiredFieldValidator>
<br /><br />

<p class="contact" style="font-weight:bold;color:black">
<asp:Label ID="lblbundleid" Text="Bundle ID" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtbundleid" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
    ErrorMessage="*" style="color:Red" ControlToValidate="txtbundleid" ></asp:RequiredFieldValidator>
<br /><br />
<asp:Button class="buttom" ID="btnsubmit" Text="SUBMIT"  type="submit" 
    tabindex="5"  runat="server" onclick="btnsubmit_Click" />
</asp:Content>
