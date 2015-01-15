<!DOCTYPE html>

<html>
	<head>
		<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="css/jquery.mobile-1.4.2.min.css" ></link>
		
		<script src="js/jquery-2.1.0.min.js" ></script>
		<script src="js/jquery.mobile-1.4.2.min.js" ></script>
	</head>
	 
	<body>		

		<div data-role="page" id="home">
			<div data-role="header" data-position="fixed">
				<h1>
					<span style="position:relative">
						CFClient Sampler
					</span>
				</h1>
				<a href="#settings" data-icon="gear" class="ui-btn-right">Settings</a>
			</div>		
			<div data-role="content">	
				<h1>Home</h1>
				<ul data-role="listview">
					<li><a href="#connection">Connection API</a></li>
					<li><a href="#notification">Notification API</a></li>
					<li><a href="#contact">Contact API</a></li>
					<li><a href="#accelerometer">Accelerometer API</a></li>
					<li><a href="#rollTheBall">"Roll The Ball" Game</a></li>
					<li><a href="#soundBoard">Adobe CF Sound Board</a></li>
					<li><a href="#geolocation">Geolocation API</a></li>
				</ul>					
				<p>
			</div>			
			<div data-role="footer" data-position="fixed">
				<h4>By <a href="http://www.codersrevolution.com" onClick="window.open( this.href, '_system' ); return false;">Brad Wood</a></h4>
			</div>
		</div>
	
		<div data-role="page" id="connection">
			<div data-role="header" data-add-back-btn="true" data-position="fixed">
				<h1>
					<span style="position:relative">
						CFClient Sampler					
					</span>
				</h1>
			</div>		
			<div data-role="content">	
				<h2>Connection API</h2>
				<div style="text-align:center;">
					<h3 id="connectionOnlineStatus"></h3>
					Your internet connection is: <span style="font-weight: bold;" id="connectionType"></span>
					<br>
					<br>
					Try turning Wifi on and off, or putting your device in airplane mode.   This screen will automatically update to show your connection type.
					<br>
					<br>
					<button id="btnRefreshConnection" data-icon="refresh" data-inline="true">Manual Refresh</button>	
				</div>						
			</div>
			<div data-role="footer" data-position="fixed">
				<h4>By <a href="http://www.codersrevolution.com" onClick="window.open( this.href, '_system' ); return false;">Brad Wood</a></h4>
			</div>
		</div>
	
		<div data-role="page" id="notification">	
			<div data-role="header" data-add-back-btn="true" data-position="fixed"	>
				<h1>
					<span style="position:relative">
						CFClient Sampler				
					</span>
				</h1>
			</div>		
			<div data-role="content">	
				<h2>Notification API</h2>
				
				Press these buttons and consider yourself notified.<br>
				
				<button data-icon="alert" onClick="notifyAlert();">Alert</button>
				<button data-icon="alert" onClick="notifyBeep();">Beep</button>
				<button data-icon="alert" onClick="notifyConfirm();">Confirm</button>
				<button data-icon="alert" onClick="notifyVibrate(1000);">Vibrate</button>
				<br>
				For comparison, here are some native controls from the WebKit browser.<br>
				<br>
				<button data-icon="info" data-inline="true" onClick="alert( 'Stop poking me' );">Browser Alert</button>				
				<button data-icon="info" data-inline="true" onClick="confirm( 'You know this is inevitable, right?' );">Browser Confirm</button>
				
			</div>
			<div data-role="footer" data-position="fixed">
				<h4>By <a href="http://www.codersrevolution.com" onClick="window.open( this.href, '_system' ); return false;">Brad Wood</a></h4>
			</div>
		</div>
	
		<div data-role="page" id="contact">	
			<div data-role="header" data-add-back-btn="true" data-position="fixed">
				<h1>
					<span style="position:relative">
						CFClient Sampler				
					</span>
				</h1>
			</div>		
			<div data-role="content">	
				<h2>Contact API</h2>
				
				<input type="search" id="contactSerachBox" data-mini="true" onChange="loadContacts( this.value );">
				Only 200 contacts shown at a time.<br><br><br>
				
				<ul id="contactList" data-role="listview" data-autodividers="true"></ul>
								
			</div>
			<div data-role="footer" data-position="fixed">
				<h4>By <a href="http://www.codersrevolution.com" onClick="window.open( this.href, '_system' ); return false;">Brad Wood</a></h4>
			</div>
		</div>
	
		<div data-role="page" id="contactDetail">	
			<div data-role="header" data-add-back-btn="true" data-position="fixed">
				<h1>
					<span style="position:relative">
						CFClient Sampler
					</span>
				</h1>
			</div>		
			<div data-role="content">	
				<h2>Contact Details</h2>
				
				<div data-role="fieldcontain">
					<label for="contactDetailName">Name:</label>
					<input type="text" id="contactDetailName" value="">
				</div>
				<div data-role="fieldcontain">
					<label for="contactDetailNumber">Number:</label>
					<input type="text" id="contactDetailNumber" value="">
				</div>
				<div data-role="fieldcontain">
					<label for="contactDetailEmail">E-mail:</label>
					<input type="text" id="contactDetailEmail" value="">
				</div>
				<br>
				<a data-icon="back" data-rel="back" data-role="button" href="#contact">Done</a>

			</div>
			<div data-role="footer" data-position="fixed">
				<h4>By <a href="http://www.codersrevolution.com" onClick="window.open( this.href, '_system' ); return false;">Brad Wood</a></h4>
			</div>
		</div>
	
	
		<div data-role="page" id="accelerometer">	
			<div data-role="header" data-add-back-btn="true" data-position="fixed">
				<h1>
					<span style="position:relative">
						CFClient Sampler
					</span>
				</h1>
			</div>		
			<div data-role="content">	
				<h2>Accelerometer</h2>
				
				Shake your phone different directions to see the X Y and Z axis lighting up when they detect acceleration.  
				Blue is a positive measurement, red is negative. 
				Any sufficiently hard "shake" will register both in succession as your device speeds up, and then slows down against its inertia.
				<br><br>
				<style>
					.XYZBox {
						display: inline-block;
						height: 100px;
						width: 30%;
						border-style: solid;
						text-align: center;
						line-height: 60px;
						font-size: 40pt
					}	
					.XYZValue {
						display: inline-block;
						width: 30%;
						text-align: center;
						font-size: 8pt
					}					
				</style>
				
				<div id="XBox" class="XYZBox">X</div>
				<div id="YBox" class="XYZBox">Y</div>
				<div id="ZBox" class="XYZBox">Z</div>
				<br>
				<div id="XValue" class="XYZValue"></div>
				<div id="YValue" class="XYZValue"></div>
				<div id="ZValue" class="XYZValue"></div>
				<br>
				<br>
				Try adjusting the sensitivity. This is configured as a "noise gate" to weed out minor movements.  
				<br>
				<br>
				<label for="sensitivity">Sensitivity:</label>
				<input type="range" name="sensitivity" id="sensitivity" value="15" min="0" max="20"  data-highlight="true">
				<br>
				But most importantly, shake your thing.  
				That's it... harder<br>
				HARDER!<br>
				<br>
				Now, look around.  You probably are getting some strange looks.

			</div>
			<div data-role="footer" data-position="fixed">
				<h4>By <a href="http://www.codersrevolution.com" onClick="window.open( this.href, '_system' ); return false;">Brad Wood</a></h4>
			</div>
		</div>
	
		<div data-role="page" id="rollTheBall">	
			<div data-role="header" data-add-back-btn="true" data-position="fixed">
				<h1>
					<span style="position:relative">
						CFClient Sampler
					</span>
				</h1>
			</div>		
			<div data-role="content">	
				<h2>Roll The Ball</h2>
				
				Hold your phone flat and tilt the screen to "roll" the digital ball around inside its square.<br>
				Don't let the ball touch the sides.  We've rigged your device with 10,000 volts of electricity! 
				<br>
				
				<style>
					#rollTheBallContainer {
						border-style: solid;
						position:relative;
						background-color:white;
					}					
				</style>
				
				<div id="rollTheBallContainer"><img src="images/ball.jpg" id="theBall" style="position:absolute;" height="64" width="64"></div>
				
			</div>
			<div data-role="footer" data-position="fixed">
				<h4>By <a href="http://www.codersrevolution.com" onClick="window.open( this.href, '_system' ); return false;">Brad Wood</a></h4>
			</div>
		</div>
	
		<div data-role="page" id="soundBoard">	
			<div data-role="header" data-add-back-btn="true" data-position="fixed">
				<h1>
					<span style="position:relative">
						CFClient Sampler
					</span>
				</h1>
			</div>		
			<div data-role="content">	
				<h2>Adobe CF Sound Board</h2>
				
				Have you wanted to be like these great ColdFusion aficionados?  Well now you can impersonate them anytime with this
				all-new Adobe CF Sound Board.  Just tap an image to hear each person introduce themselves.   
				<br>
				<br>
				
				<style>
					.soundBoardImage {
						display: inline-block;
						text-align:center;
						margin:5px;
					}					
				</style>
				
				<div class="soundBoardImage"><img src="images/ben.jpg" onClick="mediaPlay( 'media/audio/ben.mp3' )"><br>Ben Forta</div>
				<div class="soundBoardImage"><img src="images/ray.jpg" onClick="mediaPlay( 'media/audio/ray.mp3' )"><br>Ray Camden</div>
				<div class="soundBoardImage"><img src="images/rakshith.jpg" onClick="mediaPlay( 'media/audio/rakshith.mp3' )"><br>Rakshith Naresh</div>
				<div class="soundBoardImage"><img src="images/elishia.jpg" onClick="mediaPlay( 'media/audio/elishia.mp3' )"><br>Elisia Dvorak</div>
				<div class="soundBoardImage"><img src="images/anit.jpg" onClick="mediaPlay( 'media/audio/anit.mp3' )"><br>Anit Kumar Panda</div>
				<div class="soundBoardImage"><img src="images/adrock.jpg" onClick="mediaPlay( 'media/audio/adrock.mp3' )"><br>Adrock</div>
				
			</div>
			<div data-role="footer" data-position="fixed">
				<h4>By <a href="http://www.codersrevolution.com" onClick="window.open( this.href, '_system' ); return false;">Brad Wood</a></h4>
			</div>
		</div>
	
		<div data-role="page" id="geolocation">	
			<div data-role="header" data-add-back-btn="true" data-position="fixed">
				<h1>
					<span style="position:relative">
						CFClient Sampler
					</span>
				</h1>
			</div>		
			<div data-role="content">	
				<h2>Geolocation API</h2>
				
				Want to know something scary? We know where you are.  Don't believe us?  Well, fasten your tin-foil hat and click below!   
				<br>
				<br>
								
				<div id="geolocationData"></div>
				
				<a data-icon="location" data-role="button" onCLick="getGeolocation();">Where's Waldo?</a>
				<br>
				<div data-role="fieldcontain">
				 	<fieldset data-role="controlgroup">
						<legend>Deep brain-scan technology</legend>
						<input type="checkbox" name="highaccuracy" id="highaccuracy" class="custom" />
						<label for="highaccuracy">Enable</label>
				    </fieldset>
				</div>
			</div>
			<div data-role="footer" data-position="fixed">
				<h4>By <a href="http://www.codersrevolution.com" onClick="window.open( this.href, '_system' ); return false;">Brad Wood</a></h4>
			</div>
		</div>
	
		<div data-role="page" id="settings">		
			<div data-role="header" data-add-back-btn="true" data-position="fixed">
				<h1>
					<span style="position:relative">
						Settings					
						<span class="ui-btn-icon-right ui-icon-gear" />					
					</span>
				</h1>
			</div>	
			<div data-role="content">	
				Welcome to the settings page.
				<p>
				Set yourself some good stuff here.
				<br>
				<br>
				<br>
				<button class="ui-btn ui-shadow ui-corner-all ui-icon-info ui-btn-icon-notext"></button>
				If you're an Android user (and obviously smart),  you can get here by pressing your device's "menu" button.
			</div>		
			<div data-role="footer" data-position="fixed">
				<h4>By <a href="http://www.codersrevolution.com" onClick="window.open( this.href, '_system' ); return false;">Brad Wood</a></h4>
			</div>
		</div>

	</body>
</html>
		
<!--- cfclient can't handle the syntax below.  It apparenlty 
tries to parse it as CFML though I don't even see why that would be an issue. 
Invalid construct: Either argument or name is missing., error on line: (144 now) column: 59
--->
<script language="javascript">
				   
	// When a page is shown, call its onPageLoad() and call the previous page's onPageUnload().
	// I created these conventions for my personal convenience
	$(document).on("pagecontainershow", function(e, ui) {
		var page = $('body').pagecontainer('getActivePage');
		var pageID = page.prop('id');
	    console.log( 'Showing page ' + pageID + '.' );
	    // If we came from another page, see if it needs unloaded first
	    if( ui.prevPage && ui.prevPage.length ) {
			var prevPage = $( ui.prevPage[0] );
		    
		    if( prevPage.data( 'onPageUnLoad' ) ) {
		    	console.log( 'Unloading page' + prevPage.prop('id') );
				prevPage.data( 'onPageUnLoad' )();
			}
		}
		
	    if( page.data( 'onPageLoad' ) ) {
			page.data( 'onPageLoad' )();
		}
	});
	
</script>
		
<cfclientsettings enabledeviceapi="true">
			
<cfclient>
		
	<cfscript>
		try {
						
			$(document).on('pageinit', function(){
				
				// This is neccessary for the JQM loader to work.
				// I'm not entirely sure why it doesn't "just work" out of the box
				$( "body" ).loader({
				  defaults: true
				});
			 
			});
			
			// This is to return a device-generic fully qualified path to the
			// root of the PhoneGap app.  Dissapointed PhoneGap doesn't do this for me.
			function getPhonegapPath() {
				var path = window.location.pathname;
				return path.slice(0, path.indexOf("/www/") + 5);
			}
			
				
			include "/includes/notificationAPI.cfm";
			include "/includes/accelerometerAPI.cfm";
			include "/includes/connectionAPI.cfm";
			include "/includes/contactAPI.cfm";
			include "/includes/eventAPI.cfm";
			include "/includes/mediaAPI.cfm";
			include "/includes/rollTheBallGame.cfm";
			include "/includes/geolocationAPI.cfm";

			
		} catch( any e ) {
			console.log( e );
		}
	  	
	</cfscript>
	
</cfclient>