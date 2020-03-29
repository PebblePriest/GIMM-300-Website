package  {
	
	import CurrentFrame;
	public class ChristianFrame2State implements IFrameState{

		public function ChristianFrame2State() {
			// constructor code
		}
		
		public function update(a:CurrentFrame):void {
			trace("we are in update2");
		}
		
		public function enter(a:CurrentFrame):void {
			//a.rightArrow.scaleX = -1;
			a.currFrame = new Christian2();
			a.setFrame(a.currFrame);
			a.sceneLayer.addChild(a.currFrame);
			trace("hello son2");
		}
		
		public function exit(a:CurrentFrame):void {
			a.sceneLayer.removeChild(a.currFrame);
			a.setState(CurrentFrame.CHRISTIAN_FRAME3);
		}

	}
	
}
