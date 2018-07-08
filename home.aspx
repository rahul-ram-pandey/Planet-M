<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="home.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            visibility: visible;
            width: 157px;
        }
        .style3
        {
            width: 311px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title></title>
		<meta name="description" content="Simple Multi-Item Slider: Category slider with CSS animations" />
		<meta name="keywords" content="jquery plugin, item slider, categories, apple slider, css animation" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico"> 
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<script src="js/modernizr.custom.63321.js"></script>
	</head>
	<body>
	<asp:Panel runat=server>
	<div align=center>
	<br/><br/>
			<table align=center><tr><td class="style2" 
                    style="font-family: 'Adobe Caslon Pro'; font-size: large; font-weight: bold; font-style: normal; color: #333333;">Search Produts here:</td>
			<td class="style3">&nbsp;<asp:TextBox ID="TextBox1" runat=server BorderColor="#666666" 
                    BorderStyle="Inset" ForeColor="#666666" Height="33px" Width="294px"></asp:TextBox></td>
			<td style="list-style-type: none">
                <asp:Button ID="btnsearch" runat="server" BackColor="#666666" BorderColor="Black" 
                    BorderWidth="0px" Font-Bold="False" Font-Names="Source Code Pro" 
                    Font-Size="Medium" Font-Underline="False" ForeColor="White" Height="33px" 
                    style="margin-left: 0px" Text="Search" Width="154px" 
                    BorderStyle="Outset" />
                </td></tr></table>
			
			</div>
		<div class="container">	
			
			<div class="main">
				<div id="mi-slider" class="mi-slider">
					<ul>
						<li><a href="viewaudios.aspx?cdcategory=pre-orders"><img src="images/dedh-ishqiya.jpeg" alt="img01"><h4>Pre-orders</h4></a></li>
						<li><a href="viewaudios.aspx?cdcategory=new releases"><img src="images/love-various.jpeg" alt="img02"><h4>New Releases</h4></a></li>
						<li><a href="viewaudios.aspx?cdcategory=devotional"><img src="images/devotional.jpeg" alt="img03"><h4>Devotional</h4></a></li>
						<li><a href="viewaudios.aspx?cdcategory=bollywood retro"><img src="images/wrong means right end.jpg" alt="img04"><h4>Bollywood Retro</h4></a></li>
					</ul>
					<ul>
						<li><a href="viewvideos.aspx?cdcategories=pre-orders"><img src="images/pre.jpeg" alt="img05"><h4>Pre-orders</h4></a></li>
						<li><a href="viewvideos.aspx?cdcategories=new releases"><img src="images/new.jpeg" alt="img06"><h4>New Releases</h4></a></li>
						<li><a href="viewvideos.aspx?cdcategories=hindi movies"><img src="images/hindi.jpeg" alt="img07"><h4>Hindi Movies</h4></a></li>
						<li><a href="viewvideos.aspx?cdcategories=english movies"><img src="images/english.jpeg" alt="img08"><h4>English Movies</h4></a></li>
					</ul>
					<ul>
						<li><a href="viewbooks.aspx?Category=bestseller"><img src="images/the robin sharma pack.jpg" alt="img09"><h4>Bestsellers</h4></a></li>
						<li><a href="viewbooks.aspx?Category=fiction"><img src="images/the hunger games.jpg" alt="img10"><h4>Fiction</h4></a></li>
						<li><a href="viewbooks.aspx?Category=non-fiction"><img src="images/the garden of.jpg" alt="img11"><h4>Non-Fiction</h4></a></li>
					</ul>
					<ul>
						<li><a href="viewhandsets.aspx?Category=Nokia"><img src="images/nokia.jpeg" alt="img12"><h4>Nokia</h4></a></li>
						<li><a href="viewhandsets.aspx?Category=Sony"><img src="images/sony-xperia-c.jpeg" alt="img13" height=130px width=70px><h4>Sony</h4></a></li>
						<li><a href="viewhandsets.aspx?Category=Samsung"><img src="images/samsung-.jpeg" alt="img14"><h4>Apple</h4></a></li>
						<li><a href="viewhandsets.aspx?Category=HTC"><img src="images/htc.jpeg" alt="img15"><h4>HTC</h4></a></li>
					</ul>
					<nav>
						<a href="#">Audios</a>
						<a href="#">Movies</a>
						<a href="#">Books</a>
						<a href="#">Mobiles</a>
					</nav>
				</div>
			</div>
		</div><!-- /container -->
<script src="js/jquery.min.js"></script>
		<script src="js/jquery.catslider.js"></script>
		<script>
			$(function() {

				$( '#mi-slider' ).catslider();

			});
		</script>
		</asp:Panel>
	</body>
</asp:Content>

