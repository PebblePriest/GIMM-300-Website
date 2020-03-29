package  {
	
	import CurrentFrame;
	public class ChristianFrame4State implements IFrameState{

		public function ChristianFrame4State() {
			// constructor code
		}
		
		public function update(a:CurrentFrame):void {
			trace("we are in update2");
		}
		
		public function enter(a:CurrentFrame):void {
			a.currFrame = new Christian4();
			a.setFrame(a.currFrame);
			a.sceneLayer.addChild(a.currFrame);
			trace("hello son2");
		}
		
		public function exit(a:CurrentFrame):void {
			a.sceneLayer.removeChild(a.currFrame);
			a.setState(CurrentFrame.CHRISTIAN_FRAME5);
		}

	}
	
}
