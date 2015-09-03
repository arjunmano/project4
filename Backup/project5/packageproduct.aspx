<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="packageproduct.aspx.cs" Inherits="project5.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <link rel="stylesheet" type="text/css" href="style.css" media="all" />

<div class="container">
 <div class="freshdesignweb-top">
<div  class="form">
<form id="contactform"> 
<br /><br />
<div style="font-size:xx-large;text-align:center">

<asp:Label ID="lbl" runat="server" Text="PACKAGE PRODUCTS"></asp:Label>
</div>
        <br /><br />
        <p class="contact" style="font-weight:bold;color:black" >

          <br /><br />
        <p class="contact" style="font-weight:bold;color:black" >
        <asp:Label ID="lblpkid" Text="Package Id" runat="server"></asp:Label><br /></p>
        <asp:TextBox ID="txtpkid"  runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtpkid" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>
        <br /><br />


        <p class="contact" style="font-weight:bold;color:black" >
        <asp:Label ID="lblid" Text="Product Id" runat="server"></asp:Label><br /></p>
        <asp:TextBox ID="txtid"  runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
             ControlToValidate="txtid" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>
        <br /><br />


        <p class="contact" style="font-weight:bold;color:black" >
        <asp:Label ID="lbltype" Text="Order Type" runat="server"></asp:Label><br /></p>
        <asp:TextBox ID="txttype" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
             ControlToValidate="txttype" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>
        <br /><br />



        <p class="contact" style="font-weight:bold;color:black" >
        <asp:Label ID="lblenddate" Text="End Date" runat="server"></asp:Label><br /></p>
        <asp:TextBox ID="txtenddate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
             ControlToValidate="txtenddate" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>
        <br /><br />


        <p class="contact" style="font-weight:bold;color:black" >
        <asp:Label ID="lblmin" Text="Item Min" runat="server"></asp:Label><br /></p>
        <asp:TextBox ID="txtmin" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
             ControlToValidate="txtmin" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Enter only numbers" ControlToValidate="txtmin"  ValidationExpression="^\d+$" style="color:Red"></asp:RegularExpressionValidator>
        <br />
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ErrorMessage="Enter value from (0-200000)" ControlToValidate="txtmin" 
            style="color:Red" MinimumValue="0" MaximumValue="20000" Type="Integer"></asp:RangeValidator>
        <br />


        <p class="contact" style="font-weight:bold;color:black" >
        <asp:Label ID="lblmax" Text="Item Max" runat="server"></asp:Label><br /></p>
        <asp:TextBox ID="txtmax" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
             ControlToValidate="txtmax" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>
        <br /><br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ErrorMessage="Enter only numbers" ControlToValidate="txtmax"  ValidationExpression="^\d+$" style="color:Red" ></asp:RegularExpressionValidator>
        <br />
        <asp:RangeValidator ID="RangeValidator2" runat="server" 
            ErrorMessage="Enter value from (0-200000)" ControlToValidate="txtmin" 
            style="color:Red" MinimumValue="0" MaximumValue="20000" Type="Integer"></asp:RangeValidator>
        <br /><br />


        <p class="contact" style="font-weight:bold;color:black" >
        <asp:Label ID="lblfather" Text="Grandfathered" runat="server"></asp:Label>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
    ControlToValidate="rblist" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator></p>
<br />
<asp:RadioButtonList ID="rblist" runat="server">
            <asp:ListItem Text="Yes" Value="y"></asp:ListItem>
             <asp:ListItem Text="No" Value="n"></asp:ListItem>
             </asp:RadioButtonList>
<br /><br />
      
        <p class="contact" style="font-weight:bold;color:black" >
            <br /></p>


        <asp:Button class="buttom" ID="btnsubmit" Text="SUBMIT"  type="submit" 
            tabindex="5"  runat="server" onclick="btnsubmit_Click" />
</asp:Content>
