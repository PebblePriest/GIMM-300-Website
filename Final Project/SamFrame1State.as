package  {
	
	import CurrentFrame;
	public class SamFrame1State implements IFrameState{
	var bellSound:schoolSound = new schoolSound;

		public function SamFrame1State() {
			// constructor code
		}
		
		public function update(a:CurrentFrame):void {
		}
		
		public function enter(a:CurrentFrame):void {
			a.songChannel = bellSound.play();
			a.rightArrow.alpha = 1;
			a.rightArrow.x = a.stage.stageWidth - a.rightArrow.width/2 ;
			a.rightArrow.y = a.stage.stageHeight/2 ;
			a.currFrame = new Sam1();
			a.setFrame(a.currFrame);
			a.sceneLayer.addChild(a.currFrame);
		}
		
		public function exit(a:CurrentFrame):void {
			a.sceneLayer.removeChild(a.currFrame);
			a.setState(CurrentFrame.SAM_FRAME2);
		}

	}
	
}
