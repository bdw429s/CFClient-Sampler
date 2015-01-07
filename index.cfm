<!DOCTYPE html>

<html>
	<head>
		<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="css/jquery.mobile-1.4.2.min.css" ></link>
		
		<script src="js/jquery-2.1.0.min.js" ></script>
		<!---<script src="js/app.js"></script>--->
		<script src="js/jquery.mobile-1.4.2.min.js" ></script>
	</head>
	 
	<body>
		<h1>CFClient Sampler</h1>
		<h3 id="connectionOnlineStatus"></h3>
		Your internet connection is: <span style="font-weight: bold;" id="connectionType"></span>
		<button id="btnRefreshConnection">Manual Refresh</button>
	</body>
</html>
<cfclientsettings enabledeviceapi="true">

<cfclient>
	<cfscript>
		try {
			// When user clicks the manual refresh button
			$(document).on("click","##btnRefreshConnection", function(){
				loadConnectionDetails();				
			});
			
			// Display the connection type
			function loadConnectionDetails() {
				$("##connectionType").text( cfclient.connection.getType() );				
			}
			
			// I'm fired every time the device goes offline
			function onConnectionOffline() {
				loadConnectionDetails();
				$("##connectionOnlineStatus").text( 'Offline' );
				$("##connectionOnlineStatus").css("color","red");
			}
			
			// I'm fired every time the device goes online
			function onConnectionOnline() {
				loadConnectionDetails();
				$("##connectionOnlineStatus").text( 'Online' );
				$("##connectionOnlineStatus").css("color","green");
			}
			
			// Bind the functions to call when the devices connection state changes.
			cfclient.connection.onOffline( 'onConnectionOffline' );
			cfclient.connection.onOnline( 'onConnectionOnline' );
			
			
			
		} catch( any e ) {
				console.log( e );
		}
	  	
	</cfscript>
</cfclient>