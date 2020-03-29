package  {
	
	import CurrentFrame;
	public class ReidFrame9State implements IFrameState{

		public function ReidFrame9State() {
			// constructor code
		}
		
		public function update(a:CurrentFrame):void {
		}
		
		public function enter(a:CurrentFrame):void {
			a.currFrame = new Reid9();
			a.setFrame(a.currFrame);
			a.sceneLayer.addChild(a.currFrame);
		}
		
		public function exit(a:CurrentFrame):void {
			a.sceneLayer.removeChild(a.currFrame);
			a.setState(CurrentFrame.REID_FRAME10);
		}

	}
	
}
