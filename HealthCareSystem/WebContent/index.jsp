<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/Healthcss.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	//The following script is for the group 2 navigation buttons.
	function showselect() {
		alert('working');

	}
	/*function switchAutoAdvance() {
		imageSlider.switchAuto();
		switchPlayPauseClass();
	}
	function switchPlayPauseClass() {
		var auto = document.getElementById('auto');
		var isAutoPlay = imageSlider.getAuto();
		auto.className = isAutoPlay ? "group2-Pause" : "group2-Play";
		auto.title = isAutoPlay ? "Pause" : "Play";
	}
	switchPlayPauseClass();*/
</script>


<title>Home</title>

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<script type="text/javascript" src="javascript/stepcarousel.js">
	/***********************************************
	 * Step Carousel Viewer script- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
	 * Visit http://www.dynamicDrive.com for hundreds of DHTML scripts
	 * Please keep this notice intact
	 ***********************************************/
</script>

<style type="text/css">
.stepcarousel {
	position: relative; /*leave this value alone*/
	border: 1px solid black;
	overflow: scroll; /*leave this value alone*/
	width: 500px; /*Width of Carousel Viewer itself*/
	height: 800px; /*Height should enough to fit largest content's height*/
	-webkit-box-sizing: border-box;
	/* set box model so container width and height value includes any padding/border defined */
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.stepcarousel .belt {
	position: absolute; /*leave this value alone*/
	left: 0;
	top: 0;
}

.stepcarousel .panel {
	float: left; /*leave this value alone*/
	overflow: hidden;
	/*clip content that go outside dimensions of holding panel DIV*/
	margin: 10px; /*margin around each panel*/
	width: 900px;
	/*Width of each panel holding each content. If removed, widths should be individually defined on each content DIV then. */
}

span.paginatecircle { /* CSS for paginate circle spans. Required */
	background: white;
	border: 2px solid black;
	border-radius: 10px;
	width: 6px;
	height: 6px;
	cursor: pointer;
	display: inline-block;
	margin-right: 4px;
}

span.paginatecircle:hover {
	background: gray;
}

span.paginatecircle.selected {
	background: black;
}
</style>



<script type="text/javascript">
	stepcarousel.setup({
		galleryid : 'mygallery', //id of carousel DIV
		beltclass : 'belt', //class of inner "belt" DIV containing all the panel DIVs
		panelclass : 'panel', //class of panel DIVs each holding content
		autostep : {
			enable : false,
			moveby : 1,
			pause : 3000
		},
		panelbehavior : {
			speed : 500,
			wraparound : false,
			wrapbehavior : 'slide',
			persist : true
		},
		defaultbuttons : {
			enable : true,
			moveby : 1,
			leftnav : [ 'images/arrowl.gif', -40, 300 ],
			rightnav : [ 'images/arrowr.gif', 20, 300 ]
		},
		statusvars : [ 'statusA', 'statusB', 'statusC' ], //register 3 variables that contain current panel (start), current panel (last), and total panels
		contenttype : [ 'inline' ]
	//content setting ['inline'] or ['ajax', 'path_to_external_file']
	})
</script>

</head>
<body>

	<div id="wrapper">
		<div id="topheading">
			<div id="topheadingI">
				<ul>
					<li class="firstli"><a href="" title="">Home</a></li>
					<li><a href="" title="">Site Map</a></li>
					<li><a href="" title="">Typography</a></li>
					<li class="lastli"><a href="" title="">Contact</a></li>
				</ul>
			</div>
			<div id="topheadingII">
				<ul>
					<li><a href="" title="">Subscribe</a></li>
					<li><a href="" title="">Registration</a></li>
					<li class="firstli"><a href="" title="">Login</a></li>
				</ul>
			</div>
		</div>
		<div class="clearall"></div>
		<div id="header">
			<div style="margin-left: 300px">
				<img src="images/healthcare-logo.png" />
			</div>
		</div>
		<div class="clearall"></div>	
		<div id="workpage">
			<div>
				<div id="gender_select">
					<form action="Patient_details" method="post">
						<p>PUT YOUR DETAILS</p>
						<br>
						<ul>
							<li>Name :<input style="margin-left: 8px" type="text"
								name="name" /></li>
							<br>
							<li>Age :<input style="margin-left: 20px" type="text"
								name="age" /></li>
							<br>
							<br>
							<li>Male <input style="margin-left: 21px" type="radio"
								value="gender" name="gender" /><br>
							<li>Female <input style="margin-left: 9px" type="radio"
								value="gender" name="gender" /><br> <br>
							<li><input style="margin-left: 50px" type="submit"
								value="submit" />
						</ul>
					</form>
				</div>
			<div class="clearall"></div>
				<div id="problem_selector">
					<div id="mygallery" class="stepcarousel">
						<div class="belt">

							<div class="panel">

								<img id="area" src="images/muscular_system.jpg"
									usemap="#anatomy_select" />

							</div>

							<map name="anatomy_select">
								<area alt="" onclick="showselect()" title="Right Chest" href="#"
									shape="poly"
									coords="193,172,206,175,222,175,244,175,248,173,257,192,248,232,242,249,221,260,206,260,192,217,176,199,181,180" />
								<area alt="" onclick="showselect()" title="Left Chest" href="#"
									shape="poly"
									coords="282,176,302,176,334,175,356,187,349,211,333,221,327,227,327,245,326,263,310,263,288,259,280,241,271,222,272,203,277,183,273,182" />
								<area alt="" onclick="showselect()" title="Right bicep" href="#"
									shape="poly"
									coords="164,220,157,233,157,249,157,271,154,297,162,307,173,315,181,300,184,264,186,242,182,224,174,215" />
								<area alt="" onclick="showselect()" title="Left bicep" href="#"
									shape="poly"
									coords="348,224,358,222,365,228,365,245,368,268,367,290,368,301,360,311,348,316,343,305,341,270,343,236" />
							</map>


							<div class="panel">

								<img src="images/sketal_system.jpg" />
							</div>

						</div>
					</div>


					<p id="mygallery-paginate">
						<span class="paginatecircle" data-moveby="1"></span>
					</p>


				</div>
			</div>
		</div>
	</div>
</body>
</html>