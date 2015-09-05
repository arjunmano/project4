<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="addpackage.aspx.cs" Inherits="project5.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br />
    <br /><br />
 <link rel="stylesheet" type="text/css" href="style.css" media="all" />
 <div class="container">
 <div class="freshdesignweb-top">
<div  class="form">
    

<form id="contactform" action="POST"> 
<br /><br />
<div style="font-size:xx-large;text-align:center">

<asp:Label ID="lbl" runat="server" Text="ADD PACKAGE"></asp:Label>
</div>
<br /><br />

<p class="contact" style="font-weight:bold;color:black">
<asp:Label ID="lblname" Text="Package Name" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtname"  runat="server" ></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
     ControlToValidate="txtname" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>
<br /><br />


<p class="contact" style="font-weight:bold;color:black">
<asp:Label ID="lblcatid" Text="Category ID" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtcatid" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
     ControlToValidate="txtcatid" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>
<br /><br />

<p class="contact" style="font-weight:bold;color:black">
<asp:Label ID="lblgrand" Text="Grandfathered" runat="server"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
    ControlToValidate="rblist" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator></p>
<br />
<asp:RadioButtonList ID="rblist" runat="server">
            <asp:ListItem Text="Yes" Value="y"></asp:ListItem>
             <asp:ListItem Text="No" Value="n"></asp:ListItem>
             </asp:RadioButtonList>
<br /><br />
      


<p class="contact" style="font-weight:bold;color:black">
<asp:Label ID="lblpktype" Text="Package Type" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtpktype" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
    ControlToValidate="txtpktype" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>
<br /><br />

<p class="contact" style="font-weight:bold;color:black">
<asp:Label ID="lbldesc" Text="Description" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtdesc" runat="server" Width="155" Height="35" TextMode="MultiLine"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
     ControlToValidate="txtdesc" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>
<br /><br />

<p class="contact" style="font-weight:bold;color:black">
<asp:Label ID="lbldropdate" Text="Drop Date" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtdropdate" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
    ControlToValidate="txtdropdate" ErrorMessage="*" style="color:Red"></asp:RequiredFieldValidator>
<br /><br />

<asp:Button class="buttom" ID="btnsubmit" Text="SUBMIT"  
    tabindex="5"  runat="server" onclick="btnsubmit_Click" />
    </form>
    </div>
     </div>
     </div>
</asp:Content>
