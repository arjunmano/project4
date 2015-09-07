<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="discount.aspx.cs" Inherits="project5.WebForm4" %>
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

<asp:Label ID="lbl" runat="server" Text="DISCOUNT"></asp:Label>
</div>
<br /><br />

<p class="contact" style="font-weight:bold" >
<asp:Label ID="lbldisid" Text="Discount ID" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtdisid" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
   ErrorMessage="*" style="color:Red" ControlToValidate="txtdisid"></asp:RequiredFieldValidator>
<br /><br />

<p class="contact" style="font-weight:bold" >
<asp:Label ID="lblprtype" Text="Product Type" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtprtype" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
   ErrorMessage="*" style="color:Red" ControlToValidate="txtprtype"></asp:RequiredFieldValidator>
<br /><br />
<asp:Button class="buttom" ID="btnsubmit" Text="SUBMIT"   tabindex="5"  
    runat="server" onclick="btnsubmit_Click" />
</form>
</div>
</div>
</div>
</asp:Content>
