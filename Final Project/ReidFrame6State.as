package  {
	
	import CurrentFrame;
	public class ReidFrame6State implements IFrameState{
	var lastSong:goodbyeSound = new goodbyeSound;

		public function ReidFrame6State() {
			// constructor code
		}
		
		public function update(a:CurrentFrame):void {
		}
		
		public function enter(a:CurrentFrame):void {
			a.songChannel = lastSong.play();
			a.currFrame = new Reid6();
			a.setFrame(a.currFrame);
			a.sceneLayer.addChild(a.currFrame);
		}
		
		public function exit(a:CurrentFrame):void {
			a.sceneLayer.removeChild(a.currFrame);
			a.setState(CurrentFrame.REID_FRAME7);
		}

	}
	
}
