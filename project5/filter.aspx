<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="filter.aspx.cs" Inherits="project5.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br /><br />

 <link rel="stylesheet" type="text/css" href="style.css" media="all" />
 
   

<div class="container">
 <div class="freshdesignweb-top">
<div  class="form">
<form id="contactform"> 
<br /><br />
<div style="font-size:xx-large;text-align:center">

<asp:Label ID="lbl" runat="server" Text="ADD FILTER"></asp:Label>
</div>
<br /><br />
<p class="contact" style="font-weight:bold;color:black" >
<asp:Label ID="lblpkid" Text="Package Id" runat="server"></asp:Label><br /></p></p>
<asp:TextBox ID="txtpkid" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
    ErrorMessage="*" style="color:Red" ControlToValidate="txtpkid"></asp:RequiredFieldValidator>
<br /><br />

<p class="contact" style="font-weight:bold;color:black" >
<asp:Label ID="lblprid" Text="Product Id" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtprid" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
   ErrorMessage="*" style="color:Red" ControlToValidate="txtprid"></asp:RequiredFieldValidator>
<br /><br />

<p class="contact" style="font-weight:bold;color:black" >
<asp:Label ID="lblfiltertype" Text="Filter Type" runat="server"></asp:Label>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
    ControlToValidate="rblist" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator></p>

<asp:RadioButtonList ID="rblist" runat="server">
            <asp:ListItem Text="For State" Value="forstate"></asp:ListItem>
             <asp:ListItem Text="No State" Value="nostate"></asp:ListItem>
             </asp:RadioButtonList>
<br /><br />
      

<p class="contact" style="font-weight:bold;color:black" >
<asp:Label ID="lblfiltervalue" Text="Filter Value" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtfiltervalue"  runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
    ErrorMessage="*" style="color:Red" ControlToValidate="txtfiltervalue"></asp:RequiredFieldValidator>
<br /><br />

<br /><br />


<p class="contact" style="font-weight:bold;color:black" >
<asp:Label ID="lblenddate" Text="End Date" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtenddate" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
   ErrorMessage="*" style="color:Red" ControlToValidate="txtenddate"></asp:RequiredFieldValidator>
<br /><br />



<p class="contact" style="font-weight:bold;color:black" >
<asp:Label ID="lblactive" Text="Is Active" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtactive" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
  ErrorMessage="*" style="color:Red" ControlToValidate="txtactive"></asp:RequiredFieldValidator>
<br /><br />

<p class="contact" style="font-weight:bold;color:black" >
    <br /></p>


<asp:Button class="buttom" ID="btnsubmit" Text="SUBMIT"  type="submit" 
    tabindex="5"  runat="server" onclick="btnsubmit_Click" />
</asp:Content>
