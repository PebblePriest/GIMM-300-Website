package  {
	
	import CurrentFrame;
	public class SamFrame3State implements IFrameState{

		public function SamFrame3State() {
			// constructor code
		}
		
		public function update(a:CurrentFrame):void {
		}
		
		public function enter(a:CurrentFrame):void {
			a.currFrame = new Sam3();
			a.setFrame(a.currFrame);
			a.sceneLayer.addChild(a.currFrame);
		}
		
		public function exit(a:CurrentFrame):void {
			a.sceneLayer.removeChild(a.currFrame);
			a.setState(CurrentFrame.SAM_FRAME4);
		}

	}
	
}
