<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="bundleproduct.aspx.cs" Inherits="project5.WebForm7" %>
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

<asp:Label ID="lbl" runat="server" Text="BUNDLE PRODUCT"></asp:Label>
</div>
<br /><br />

<p class="contact" style="font-weight:bold" >
<asp:Label ID="lblbndtype" Text="Bundle Type" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtbndtype" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
    ErrorMessage="*" ControlToValidate="txtbndtype" style="color:Red"></asp:RequiredFieldValidator>
<br /><br />

<p class="contact" style="font-weight:bold" >
<asp:Label ID="lblid" Text="Product Id" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtid" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
    ErrorMessage="*" ControlToValidate="txtid" style="color:Red"></asp:RequiredFieldValidator>
<br /><br />

<p class="contact" style="font-weight:bold" >
<asp:Label ID="lblenddate" Text="End Date" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtenddate" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
    ErrorMessage="*" ControlToValidate="txtenddate" style="color:Red"></asp:RequiredFieldValidator>
<br /><br />

<p class="contact" style="font-weight:bold" >
<asp:Label ID="lblbizconind" Text="Biz Con Ind" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtbizconind" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
   ErrorMessage="*" ControlToValidate="txtbizconind" style="color:Red"></asp:RequiredFieldValidator>
<br /><br />

<br />

<p class="contact" style="font-weight:bold" >
<asp:Label ID="lblprtype" Text="Product Type" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtprtype" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
    ErrorMessage="*" ControlToValidate="txtprtype" style="color:Red"></asp:RequiredFieldValidator>
<br /><br />

<p class="contact" style="font-weight:bold" >
    <br /></p>
<br /><br />
<asp:Button class="buttom" ID="btnsubmit" Text="SUBMIT"  type="submit" 
    tabindex="5"  runat="server" onclick="btnsubmit_Click" />
</asp:Content>
