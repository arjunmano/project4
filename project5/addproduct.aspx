<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="addproduct.aspx.cs" Inherits="project5.WebForm1" %>
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

<asp:Label ID="lbl" runat="server" Text="ADD PRODUCT"></asp:Label>
</div>
<br /><br />
<p class="contact" style="font-weight:bold;color:black" >

  <br /><br />
<p class="contact" style="font-weight:bold;color:black" >
<asp:Label ID="lblname" Text="Product Name" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtname"  runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
    ErrorMessage="*" style="color:Red" ControlToValidate="txtname"></asp:RequiredFieldValidator>
<br /><br />


<p class="contact" style="font-weight:bold;color:black" >
<asp:Label ID="lblprtype" Text="Product Type" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtprtype" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
    ErrorMessage="*" style="color:Red" ControlToValidate="txtprtype"></asp:RequiredFieldValidator>
<br /><br />

<p class="contact" style="font-weight:bold;color:black" >
<asp:Label ID="lblprtypevalue" Text="Product Type Value" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtprtypevalue" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
    ErrorMessage="*" style="color:Red" ControlToValidate="txtprtypevalue"></asp:RequiredFieldValidator>
<br /><br />

<p class="contact" style="font-weight:bold;color:black" >
<asp:Label ID="lblfather" Text="Grandfathered" runat="server"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
    ControlToValidate="rblist" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator></p>
<br />
<asp:RadioButtonList ID="rblist" runat="server">
            <asp:ListItem Text="Yes" Value="y"></asp:ListItem>
             <asp:ListItem Text="No" Value="n"></asp:ListItem>
             </asp:RadioButtonList>
<br /><br />
      


<p class="contact" style="font-weight:bold;color:black" >
<asp:Label ID="lblenddate" Text="End Date" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtenddate" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
    ErrorMessage="*" style="color:Red" ControlToValidate="txtenddate"></asp:RequiredFieldValidator>
<br /><br />

<p class="contact" style="font-weight:bold;color:black" >
<asp:Label ID="lbldesc" Text="Product Type Value" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtdesc" runat="server" ></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
    ErrorMessage="*" style="color:Red" ControlToValidate="txtdesc"></asp:RequiredFieldValidator>
<br /><br />



<p class="contact" style="font-weight:bold;color:black" >
<asp:Label ID="lblcost" Text="Cost" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtcost" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RegularExpressionValidator6" runat="server" 
    ControlToValidate="txtcost" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
     ControlToValidate="txtcost" ErrorMessage="Enter numbers only" ValidationExpression="^\d+$" style="color:Red"></asp:RegularExpressionValidator>

<br /><br />


<asp:Button class="buttom" ID="btnsubmit" Text="SUBMIT"  type="submit" 
    tabindex="5"  runat="server" onclick="btnsubmit_Click" />
    </div>
    </div>
    </div>
</asp:Content>
