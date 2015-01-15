<cfclient>
	<cfscript>
		
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
			
	</cfscript>
</cfclient>