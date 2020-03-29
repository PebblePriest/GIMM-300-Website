package  {
	
	import CurrentFrame;
	public class ReidFrame10State implements IFrameState{

		public function ReidFrame5State() {
			// constructor code
		}
		
		public function update(a:CurrentFrame):void {
		}
		
		public function enter(a:CurrentFrame):void {
			a.currFrame = new Reid10();
			a.setFrame(a.currFrame);
			a.sceneLayer.addChild(a.currFrame);
		}
		
		public function exit(a:CurrentFrame):void {
			a.songChannel.stop();
			a.sceneLayer.removeChild(a.currFrame);
			a.setState(CurrentFrame.ROSS_FRAME5);
		}

	}
	
}
