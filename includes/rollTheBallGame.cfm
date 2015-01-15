<cfclient>
	<cfscript>
	
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
			
			// Only do the sound effect/vibration once when the ball hits the wall
			againstWall = false,
			
			// This will roll the ball in the amount specified in the x,y tuple
			roll: function( rollOffset ) {
				ballPos.x=ballPos.x+rollOffset.x;
				ballPos.y=ballPos.y-rollOffset.y;
								
				// Haptic feedback what the ball reached the edge
				if( ballPos.x > ballPos.rightLimit
					|| ballPos.x < ballPos.leftLimit
					|| ballPos.y > ballPos.bottomLimit
					|| ballPos.y < ballPos.topLimit ) {
					if( !ballPos.againstWall ) {
						randomBoing();
						notifyVibrate( 50 );	
						ballPos.againstWall = true;							
					}
				} else {
					ballPos.againstWall = false;
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
	 		ballPos.roll( { x:  -int( data.x )*10, y: -int( data.y )*10 } );
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
			
	</cfscript>
</cfclient>