package  {
	
	import CurrentFrame;
	public class DanFrame5State implements IFrameState{

		public function DanFrame5State() {
			// constructor code
		}
		
		public function update(a:CurrentFrame):void {
		}
		
		public function enter(a:CurrentFrame):void {
			a.currFrame = new Dan5();
			a.setFrame(a.currFrame);
			a.sceneLayer.addChild(a.currFrame);
		}
		
		public function exit(a:CurrentFrame):void {
			a.songChannel.stop();
			a.key1 = true;
			a.sceneLayer.removeChild(a.currFrame);
			
			a.setState(CurrentFrame.ROSS_FRAME2);
		}

	}
	
}
