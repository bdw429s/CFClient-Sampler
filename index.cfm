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
				
				$( "body" ).loader({
				  defaults: true
				});
			 
			});
			
			
			/************************
			* Connection Client API
			************************/
			
			// When user clicks the manual refresh button
			$(document).on("click","##btnRefreshConnection", function(){
				loadConnectionDetails();
			});
			
			// Display the connection type
			function loadConnectionDetails() {
				var connType = cfclient.connection.getType();
				$("##connectionType").text( connType );
				
				if( connType == Connection.NONE || connType == Connection.UNKNOWN  ) {
					$("##connectionOnlineStatus").text( 'Offline' );
					$("##connectionOnlineStatus").css("color","red");					
				} else {
					$("##connectionOnlineStatus").text( 'Online' );
					$("##connectionOnlineStatus").css("color","green");					
				}
			}
			
			// I'm fired every time the device goes offline
			function onConnectionOffline() {
				console.log( 'Device offline' );
				loadConnectionDetails();
			}
			
			// I'm fired every time the device goes online
			function onConnectionOnline() {
				console.log( 'Device online' );
				loadConnectionDetails();
			}
			
			// Bind the functions to call when the devices connection state changes.
			cfclient.connection.onOffline( 'onConnectionOffline' );
			cfclient.connection.onOnline( 'onConnectionOnline' );
			
			// Kick off on load
			loadConnectionDetails();
			
			
			
			/************************
			* Events Client API
			************************/
						
			// Android user presses "menu" button
			function onEventMenu() {
				$("body").pagecontainer("change", "##settings" );
			}
			
			// Fires on battery low warning 
			function onBatteryLow() {
				alert( "Hey, plug your device in!" );
			}
			
			cfclient.events.onMenuButton( 'onEventMenu' );
			cfclient.events.onBatteryLow( 'onBatteryLow' );
			cfclient.events.onBatteryCritical( 'onBatteryLow' );
			
			// On Android, fires when I lock my phone
			cfclient.events.onPause( function() {
				console.log( 'paused' );
			} );
			
			// On Android, fires when I unlock my phone
			cfclient.events.onResume( function() {
				console.log( 'resumed' );
			} );
			
			
			/************************
			* Notification Client API
			************************/
			
			 
			function notifyAlert() {
				cfclient.notification.alert( "The British are coming!", "Don't just stand there!'", "Got it" );
			}
			
			function notifyBeep() {
				cfclient.notification.beep( 1 );
			}
			
			function notifyConfirm() {
				// Limit 3 options.
				// Returns 1, 2, or 3 depending on answer
				// Returns 0 if no answer (back button on Android will bypass)
				var result = cfclient.notification.confirm( "Do you feel lucky?", "Talk to me", [ 'Um, yea', 'Wut?', 'No' ] );
				console.log( result );
				
				// Give humorous feedback
				if( result == 1 ) {
					alert( 'Good! Here, kiss my chips' );
				} else if( result == 2 ) {
					alert( 'You heard me...' );					
				} else if( result == 3 ) {
					alert( 'Stay away from the lottery today.' );					
				} else {
					alert( 'WHY U NO ANSWER?' );					
				}
			}
			
			function notifyVibrate(duration) {
				cfclient.notification.vibrate( duration );
			}
			
			
			/************************
			* Contact Client API
			************************/
			
			// Use this to load the first time the page is shown
			haveContactsBeenLoaded = false;
			
			$( '##contact' ).data( 'onPageLoad', function() {
				// First run
				if( !haveContactsBeenLoaded ) {
					loadContacts();
				}
			});
			
			// Search for contacts. Loads all by default
			// TODO: Pagination?
			function loadContacts( searchString ) {
				// Default search string
				if( typeof( searchString ) == 'undefined' ) { searchString = ''; }
				
				console.log( 'Searching for contacts matching "' + searchString + '".' );
				
				// Show waitscreen
				$.mobile.loading( "show", { text: "Hold on a sec while we fetch your contacts", textVisible: true } );
				
				// Clear previous results
				var contactListEL = $( '##contactList' );
				contactListEL.html( '' );
				contactListEL.listview("refresh");
				
				// Actually search for the contacts
				var contacts = cfclient.contacts.find( searchString, [ 'displayName' ] );
				
				// I have a lot of E-mail-only contacts w/no name. Ignore them
				contacts = contacts.filter( function( element ) {
					return element.displayName != null;
				});
				
				// Grab the first 200 just to limit how much junk we show. 
				// Doing this before the sort just so we get a smattering of alphanetical representation
				if( contacts.length > 200 ) {
					contacts = contacts.splice( 0, 200 );					
				}
								
				// Sort by name
				contacts.sort( function( a, b ) {
					return ( a.displayName.toLowerCase() > b.displayName.toLowerCase() ) ? 1 : ( ( b.displayName.toLowerCase() > a.displayName.toLowerCase() ) ? -1 : 0  );
				});
								
				// Loop over and display
				contacts.each( function( contact, index ) { 
					contactListEL.append( 
						'<li><a href="##contactDetail" onClick="editContact( ' + contact.id + ' )">' + contact.displayName + '</a></li>'
					);					 
				} );
				
				// Refresh the UI element
				contactListEL.listview("refresh");
				
				// Hide the loader 
				$.mobile.loading('hide');
				haveContactsBeenLoaded = true;
					
			}
			
			
			// Edit a contact
			function editContact( id ) {
				// Show waitscreen
				$.mobile.loading( "show", { text: "Loading...", textVisible: true } );
				
				// Grab form elements
				var contactDetailNameEL = $( '##contactDetailName' );
				var contactDetailNumberEL = $( '##contactDetailNumber' );
				var contactDetailEmailEL = $( '##contactDetailEmail' );
				
				// Wipe out any previous values
				contactDetailNameEL.val( '' );
				contactDetailNumberEL.val( '' );
				contactDetailEmailEL.val( '' );
				
				// Get the contact
				var contacts = cfclient.contacts.find( id, [ 'id' ] );
				
				// Double check we found one.
				if( !contacts.length > 0 ) {
					alert( "Couldn't find user ID " + id );
					$.mobile.loading('hide');
					$.mobile.back();
					return;					
				}
				
				// Grab first result-- hopefully there's only one.
				var contact = contacts[ 1 ];
				console.log( contact );
								
				// Show name
				if( contact.displayName ) {
					contactDetailNameEL.val( contact.displayName );
				}
				
				// Show first number
				if( contact.phoneNumbers && contact.phoneNumbers.length > 0 ) {
					contactDetailNumberEL.val( contact.phoneNumbers[ 1 ].value );	
				}
				
				// Show first E-mail
				if( contact.emails && contact.emails.length > 0 ) {
					contactDetailEmailEL.val( contact.emails[ 1 ].value );	
				}
				
				// Hide the loader 
				$.mobile.loading('hide');
			}
			
			
			/************************
			* Accelerometer Client API
			************************/
			
			// For calculating deltas
			prevAccelerometerData = null;
			
			XBoxEL = $( '##XBox' );
			YBoxEL = $( '##YBox' );
			ZBoxEL = $( '##ZBox' );
			XValEL = $( '##XValue' );
			YValEL = $( '##YValue' );
			ZValEL = $( '##ZValue' );
			
			
			function onAccelerometer( data ) {
				var sensitivity = 20-$( '##sensitivity' ).val();
				
				if( prevAccelerometerData != null ) {

					// Calculate the deltas but only keep them if they're above the threshold
					var deltaX = ( abs( prevAccelerometerData.x - data.x ) > sensitivity ? prevAccelerometerData.x - data.x : 0 );
					var deltaY = ( abs( prevAccelerometerData.y - data.y ) > sensitivity ? prevAccelerometerData.y - data.y : 0 );
					var deltaZ = ( abs( prevAccelerometerData.z - data.z ) > sensitivity ? prevAccelerometerData.z - data.z : 0 );

					// Show the raw numbers
					XValEL.text( parseFloat( data.x ).toFixed( 2 ) );
					YValEL.text( parseFloat( data.y ).toFixed( 2 ) );
					ZValEL.text( parseFloat( data.z ).toFixed( 2 ) );

					// Set the color of each box based on it's change in acceleration
					XBoxEL.css( 'background-color', getXYZColor( deltaX ) );
					YBoxEL.css( 'background-color', getXYZColor( deltaY ) );
					ZBoxEL.css( 'background-color', getXYZColor( deltaZ ) );
			
				}
				
				// Save this for next time
				prevAccelerometerData = data;
			}

			// Turn a positive number blue and negative red.
			// Blue gets bluer the higher the number, and red gets redder the lower the number
			// Upper and lower bounds are -20 and 20. 
			function getXYZColor( delta ) {
				// How dark -- an decimal betwen 0 and 255
				var darkness = 255 - int( Math.min( 255 * ( abs( delta ) / 20 ), 255 ) );
				//Convert to hex and pad if neccessary
				var darknessHex = darkness.toString(16);
				darknessHex = ( darknessHex.length==1 ? '0' + darknessHex : darknessHex );
				
				if(delta > 0) {
					// Blue stays FF, red and green are adjusted up and down accordingly 
					return '##' + darknessHex + darknessHex +'FF';
				} else if(delta < 0) {
					// Red stays FF, green and blue are adjusted up and down accordingly
					return '##FF' + darknessHex + darknessHex;
				} else {
					return 'white';
				}
			}
						
			// Set polling interval
			opt = cfclient.accelerometer.getOptions();
			opt.frequency = 200;
			cfclient.accelerometer.setOptions( opt );
			
			function startAccelerometer() {
				console.log('start watching accelerometer');
				accelerometerWatchId = cfclient.accelerometer.watch( onAccelerometer );
			}
			
			function stopAccelerometer() {
				console.log('stop watching accelerometer');
				cfclient.accelerometer.clearWatch( accelerometerWatchId );				
			}

			// When the Accelerometer page is loaded, start tracking
			$( '##accelerometer' ).data( 'onPageLoad', function() {
				// Don't put cfclient code in here, or "cff_callback27 is not defined"
				startAccelerometer();
			});
			
			// When the Accelerometer page is left, stop tracking
			$( '##accelerometer' ).data( 'onPageUnLoad', function() {
				stopAccelerometer();
			});
			
			
			
			/************************
			* Roll The Ball Game
			************************/
			
			playAreaHeight = $(window).height()*.6;
			playAreaWidth = $(window).width()*.9;
			
			// Size the playing area						
			$( '##rollTheBallContainer' ).height( playAreaHeight+'px' );
			$( '##rollTheBallContainer' ).width( playAreaWidth+'px' );
			
			ballHeight = $( '##theBall' ).height();
			ballWidth = $( '##theBall' ).width();
			
			ballPos = {
				// x,y represents the center of the ball
				x: 0,
				y: 0,
				
				// The ball can only approach half of its width to the edge before it will hit.
				leftLimit: ballWidth/2,
				rightLimit: playAreaWidth-( ballWidth/2 ),
				topLimit: ballHeight/2,
				bottomLimit: playAreaHeight-( ballHeight/2 ),
				
				// This will roll the ball in the amount specified in the x,y tuple
				roll: function( rollOffset ) {
					ballPos.x=ballPos.x+rollOffset.x;
					ballPos.y=ballPos.y-rollOffset.y;
									
					// Haptic feedback what the ball reached the edge
					if( ballPos.x > ballPos.rightLimit
					|| ballPos.x < ballPos.leftLimit
					|| ballPos.y > ballPos.bottomLimit
					|| ballPos.y < ballPos.topLimit ) {
						notifyVibrate( 50 );	
					}
										
					ballPos.keepInBounds();
					
					ballPos.moveBall();
				},
				// This will set the ball down on the specified coords realtive to the top left corner.
				place: function( coords ) {
					ballPos.x=coords.x;
					ballPos.y=coords.y;
										
					ballPos.keepInBounds();
										
					ballPos.moveBall();
				},
				// Keep the ball within bounds
				keepInBounds: function() {
					ballPos.x=Math.min( ballPos.x, ballPos.rightLimit );
					ballPos.x=Math.max( ballPos.x, ballPos.leftLimit );					
					ballPos.y=Math.min( ballPos.y, ballPos.bottomLimit );
					ballPos.y=Math.max( ballPos.y, ballPos.topLimit );
				},
				moveBall: function() {
				 	$( '##theBall' ).css({ 'left': ballPos.x-(ballWidth/2) + 'px', 'top': ballPos.y-(ballHeight/2) + 'px' });
				}
				
			};
						
			// Place the ball in the middle	to start the game.
		 	ballPos.place( { x: playAreaWidth/2, y: playAreaHeight/2 } );
		 	         
		 	function animateBallGame( data ) {
		 		ballPos.roll( { x:  -int( data.x )*5, y: -int( data.y )*5 } );
		 	}
		 	
			function startBallGame() {
				console.log('start watching accelerometer for Roll The Ball');
				ballGameWatchId = cfclient.accelerometer.watch( animateBallGame );
			}
			
			function stopBallGame() {
				console.log('stop watching accelerometer for Roll The Ball');
				cfclient.accelerometer.clearWatch( ballGameWatchId );				
			}

			// When the Roll The Ball page is loaded, start tracking
			$( '##rollTheBall' ).data( 'onPageLoad', function() {
				startBallGame();
			});
			
			// When the Roll The Ball page is left, stop tracking
			$( '##rollTheBall' ).data( 'onPageUnLoad', function() {
				stopBallGame();
			});

		} catch( any e ) {
			console.log( e );
		}
	  	
	</cfscript>
</cfclient>