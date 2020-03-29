package  {
	
	import CurrentFrame;
	public class ChristianFrame1State implements IFrameState{
	var samSound:drinkingSound = new drinkingSound;

		public function ChristianFrame1State() {
			// constructor code
		}
		
		public function update(a:CurrentFrame):void {
			trace("we are in update");
		}
		
		public function enter(a:CurrentFrame):void {
			a.songChannel = samSound.play();
			a.rightArrow.alpha = 1;
			a.rightArrow.x = a.stage.stageWidth - a.rightArrow.width/2 ;
			a.rightArrow.y = a.stage.stageHeight/2 ;
			a.currFrame = new Christian1();
			a.setFrame(a.currFrame);
			a.sceneLayer.addChild(a.currFrame);
			trace("hello son");
		}
		
		public function exit(a:CurrentFrame):void {
			a.sceneLayer.removeChild(a.currFrame);
			a.setState(CurrentFrame.CHRISTIAN_FRAME2);
		}

	}
	
}
