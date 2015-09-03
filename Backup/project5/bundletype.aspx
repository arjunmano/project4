<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="project5.WebForm6" %>
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

<asp:Label ID="lbl" runat="server" Text="BUNDLE TYPE"></asp:Label>
</div>
<br /><br />
<p class="contact" style="font-weight:bold;color:black" >
<asp:Label ID="lblbndtype" Text="Bundle Type" runat="server"></asp:Label><br /></p>

<asp:TextBox ID="txtbndtype" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
    ErrorMessage="*" style="color:Red" ControlToValidate="txtbndtype"></asp:RequiredFieldValidator>
<br /><br />

<p class="contact" style="font-weight:bold;color:black">
<asp:Label ID="lblbndlevel" Text="Bundle Level" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtbndlevel" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
    ErrorMessage="*" style="color:Red" ControlToValidate="txtbndlevel"></asp:RequiredFieldValidator>
<br /><br />
<p class="contact" style="font-weight:bold;color:black">
<asp:Label ID="lbldesc" Text="Bundle Description" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtdesc" runat="server" Width="155" Height="35"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
    ErrorMessage="*" style="color:Red" ControlToValidate="txtdesc"></asp:RequiredFieldValidator>
<br /><br />
<br /><br />
<p class="contact" style="font-weight:bold;color:black">
    &nbsp;</p>

<br /><br />

<asp:Button class="buttom" ID="btnsubmit" Text="SUBMIT"   tabindex="5"  
    runat="server" onclick="btnsubmit_Click" />

</form>
</div>
</div>
</div>
</asp:Content>
