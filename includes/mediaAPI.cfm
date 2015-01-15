<cfclient>
	<cfscript>
		
		/************************
		* Media Client API
		************************/
		
		// Play a random sound effect
		function randomBoing() {
			var sounds = [
				'media/audio/boing_2.mp3',
				'media/audio/boing_1.mp3',
				'media/audio/bop.mp3',
				'media/audio/dolphin.mp3',
				'media/audio/drip.mp3',
				'media/audio/explosion.mp3',
				'media/audio/glass_breaking.mp3'
			];
			
			var sound = sounds[ randRange( 1, arrayLen( sounds ) ) ];
			mediaPlay( sound );
		}
		
		// Pass in a path relative to the web root
		function mediaPlay( src ) {
			// Fully qualify the path
			cfclient.audio.play( getPhonegapPath() + src );
		}
			
	</cfscript>
</cfclient>