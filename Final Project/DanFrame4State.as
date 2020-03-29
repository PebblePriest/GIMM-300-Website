package  {
	
	import CurrentFrame;
	public class DanFrame4State implements IFrameState{

		public function DanFrame4State() {
			// constructor code
		}
		
		public function update(a:CurrentFrame):void {
		}
		
		public function enter(a:CurrentFrame):void {
			a.currFrame = new Dan4();
			a.setFrame(a.currFrame);
			a.sceneLayer.addChild(a.currFrame);
		}
		
		public function exit(a:CurrentFrame):void {
			a.sceneLayer.removeChild(a.currFrame);
			a.setState(CurrentFrame.DAN_FRAME5);
		}

	}
	
}
