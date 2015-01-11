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
				<button data-icon="alert" onClick="notifyVibrate();">Vibrate</button>
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
			   
	// When a page is shown, call its onPageLoad().
	// I created this convention for my personal 
	$(document).on("pagecontainershow", function(e, ui) {
		var page = $('body').pagecontainer('getActivePage');
		var pageID = page.prop('id');
	    console.log( 'Showing page ' + pageID + '.' );
	    
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
			
			function notifyVibrate() {
				cfclient.notification.vibrate( 1000 );
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
			
		} catch( any e ) {
			console.log( e );
		}
	  	
	</cfscript>
</cfclient>