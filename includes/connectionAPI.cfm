<cfclient>
	<cfscript>
		
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
			
	</cfscript>
</cfclient>