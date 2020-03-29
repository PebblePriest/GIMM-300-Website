package  {
	
	import CurrentFrame;
	public class DanFrame1State implements IFrameState{
	var danSound:militarySound = new militarySound;

		public function DanFrame1State() {
			// constructor code
		}
		
		public function update(a:CurrentFrame):void {
		}
		
		public function enter(a:CurrentFrame):void {
			a.songChannel = danSound.play();
			a.rightArrow.alpha = 1;
			a.rightArrow.x = a.stage.stageWidth - a.rightArrow.width/2 ;
			a.rightArrow.y = a.stage.stageHeight/2 ;
			a.currFrame = new Dan1();
			a.setFrame(a.currFrame);
			a.sceneLayer.addChild(a.currFrame);
		}
		
		public function exit(a:CurrentFrame):void {
			a.sceneLayer.removeChild(a.currFrame);
			a.setState(CurrentFrame.DAN_FRAME2);
		}

	}
	
}
