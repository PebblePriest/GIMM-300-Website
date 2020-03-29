package  {
	
	import CurrentFrame;
	public class ReidFrame5State implements IFrameState{

		public function ReidFrame5State() {
			// constructor code
		}
		
		public function update(a:CurrentFrame):void {
		}
		
		public function enter(a:CurrentFrame):void {
			a.currFrame = new Reid5();
			a.setFrame(a.currFrame);
			a.sceneLayer.addChild(a.currFrame);
		}
		
		public function exit(a:CurrentFrame):void {
			a.songChannel.stop();
			a.sceneLayer.removeChild(a.currFrame);
			a.setState(CurrentFrame.REID_FRAME6);
		}

	}
	
}
