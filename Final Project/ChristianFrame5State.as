package  {
	
	import CurrentFrame;
	public class ChristianFrame5State implements IFrameState{

		public function ChristianFrame5State() {
			// constructor code
		}
		
		public function update(a:CurrentFrame):void {
			trace("we are in update2");
		}
		
		public function enter(a:CurrentFrame):void {
			a.currFrame = new Christian5();
			a.setFrame(a.currFrame);
			a.sceneLayer.addChild(a.currFrame);
			trace("hello son2");
		}
		
		public function exit(a:CurrentFrame):void {
			a.songChannel.stop();
			a.key2 = true;
			a.sceneLayer.removeChild(a.currFrame);
			a.setState(CurrentFrame.ROSS_FRAME2);
		}

	}
	
}
