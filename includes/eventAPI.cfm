<cfclient>
	<cfscript>
		
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
			
	</cfscript>
</cfclient>