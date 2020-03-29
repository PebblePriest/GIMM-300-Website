package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	
	public class plant extends MovieClip {
			//public var plantFinal:MovieClip = new finalPlant();
			//public var closePlant:MovieClip = new closingPlant();
		
		public function plant() {
			// constructor code
			init();
		}
		
		private function init():void{
			addEventListener(Event.ENTER_FRAME, update);
		}
		
		public function update(e:Event):void{
			if(finalplant.plant != null)//finalplant.currentFrame == 1017)
			{
				finalplant.plant.addEventListener(MouseEvent.MOUSE_OVER, mOver);
				finalplant.plant.addEventListener(MouseEvent.MOUSE_OUT, mOut);
				
			}
			if(finalplant.currentFrame == 1495)
			{
				finalplant.plant.removeEventListener(MouseEvent.MOUSE_OVER, mOver);
				finalplant.plant.removeEventListener(MouseEvent.MOUSE_OUT, mOut);
				this.removeEventListener(Event.ENTER_FRAME, playReverse);
			}
			if(finalplant.currentFrame == finalplant.totalFrames){
				finalplant.replay.addEventListener(MouseEvent.CLICK, restartHandler);
			}
		}
		
		public function restartHandler(evt:MouseEvent):void {
			finalplant.gotoAndPlay(1);
		}
		//https://stackoverflow.com/questions/2049788/flash-play-movie-clip-in-reverse
		public function mOver(evt:MouseEvent):void{
			//trace("doing mOver");
			stopPlayReverse();
			finalplant.plant.play();
			//finalplant.plant.removeEventListener(MouseEvent.CLICK, klosePlant);
		}
		
		public function mOut(evt:MouseEvent):void {
			
			this.addEventListener(Event.ENTER_FRAME, playReverse, false, 0, true);
			
		}
		
		public function playReverse(e:Event):void {
			if (finalplant.plant.currentFrame == 1) {
				stopPlayReverse();
			} else {
				finalplant.plant.prevFrame();
			}
		}
		
		function stopPlayReverse():void {
			if (this.hasEventListener(Event.ENTER_FRAME)) {
				this.removeEventListener(Event.ENTER_FRAME, playReverse);
			}
		}
		
	}
	
}
