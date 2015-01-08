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
			<div data-role="header">
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
				</ul>					
				<p>
			</div>			
			<div data-role="footer" data-position="fixed">
				<h4>By <a href="http://www.codersrevolution.com" onClick="navigator.app.loadUrl(this.href, { openExternal:true }); return false;">Brad Wood</a></h4>
			</div>
		</div>
	
		<div data-role="page" id="connection">
			<div data-role="header" data-add-back-btn="true">
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
				<h4>By <a href="http://www.codersrevolution.com" onClick="navigator.app.loadUrl(this.href, { openExternal:true }); return false;">Brad Wood</a></h4>
			</div>
		</div>
	
		<div data-role="page" id="notification">	
			<div data-role="header" data-add-back-btn="true">
				<h1>
					<span style="position:relative">
						CFClient Sampler				
					</span>
				</h1>
			</div>		
			<div data-role="content">	
				<h2>Notification API</h2>
				Content here
			</div>
			<div data-role="footer" data-position="fixed">
				<h4>By <a href="http://www.codersrevolution.com" onClick="navigator.app.loadUrl(this.href, { openExternal:true }); return false;">Brad Wood</a></h4>
			</div>
		</div>
	
		<div data-role="page" id="settings">		
			<div data-role="header" data-add-back-btn="true">
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
				<h4>By <a href="http://www.codersrevolution.com" onClick="navigator.app.loadUrl(this.href, { openExternal:true }); return false;">Brad Wood</a></h4>
			</div>
		</div>

	</body>
</html>
		
<cfclientsettings enabledeviceapi="true">

<cfclient>
		
	<cfscript>
		try {
			// Connection Client API
			
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
			
			
			
			//Events Client API
						
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
			
		} catch( any e ) {
			console.log( e );
		}
	  	
	</cfscript>
</cfclient>