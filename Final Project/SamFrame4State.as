package  {
	
	import CurrentFrame;
	public class SamFrame4State implements IFrameState{

		public function SamFrame4State() {
			// constructor code
		}
		
		public function update(a:CurrentFrame):void {
		}
		
		public function enter(a:CurrentFrame):void {
			a.currFrame = new Sam4();
			a.setFrame(a.currFrame);
			a.sceneLayer.addChild(a.currFrame);
		}
		
		public function exit(a:CurrentFrame):void {
			a.songChannel.stop();
			a.key3 = true;
			a.sceneLayer.removeChild(a.currFrame);
			a.setState(CurrentFrame.ROSS_FRAME2);
		}

	}
	
}
