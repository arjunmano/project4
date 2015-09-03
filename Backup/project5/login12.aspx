<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login12.aspx.cs" Inherits="project5.login12" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Product Catalogue</title>
<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="tooplate_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="nivo-slider.css" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="ddsmoothmenu.css" />


<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js">

    /***********************************************
    * Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
    * This notice MUST stay intact for legal use
    * Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
    ***********************************************/

</script>

</head>
   <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    <form id="form1">
    <div>
    <div id="tooplate_wrapper">
	
    <div id="tooplate_header">
        <div id="site_title"><h1><a></a></h1>
        </div>
        <div id="tooplate_menu" class="ddsmoothmenu" style="margin-top:13px;text-align:center">
        <asp:Label ID="title1" Text="PRODUCT CATALOGUE" runat="server" style="color:#0ad6e7;font-size:xx-large"></asp:Label><br /></p>
        </div>
        </div>
        </div>
        </div>
        </form>
<body>

 
   
   <br /><br />
<br /><br />
<div class="container">
 <div class="freshdesignweb-top">
<div  class="form">

<form id="contactform" runat="server"> 
<br /><br />
<div style="font-size:xx-large;text-align:center">

<asp:Label ID="lbl" runat="server" Text="LOGIN"></asp:Label>
</div>
<br /><br />

<p class="contact" style="font-weight:bold;color:black" >
<asp:Label ID="lbldisid" Text="User name" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtduser" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
    ErrorMessage="*" ControlToValidate="txtduser" style="color:Red"></asp:RequiredFieldValidator>
<br /><br />

<p class="contact" style="font-weight:bold;color:black" >
<asp:Label ID="lblprtype" Text="Password" runat="server"></asp:Label><br /></p>
<asp:TextBox ID="txtpass" TextMode="Password" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
    ErrorMessage="*" ControlToValidate="txtpass" style="color:Red"></asp:RequiredFieldValidator>
<br /><br />
<asp:Button class="buttom" ID="btnsubmit" Text="SUBMIT"   tabindex="5"  
    runat="server" onclick="btnsubmit_Click" />
    <p class="contact" style="font-weight:bold;color:black" >
<asp:Label ID="invalid" Text="" style="color:Red" runat="server"></asp:Label><br /></p>
</form>
</div>
</div>
</div>
</body>
</html>
