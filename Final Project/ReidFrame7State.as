﻿package  {
	
	import CurrentFrame;
	public class ReidFrame7State implements IFrameState{

		public function ReidFrame7State() {
			// constructor code
		}
		
		public function update(a:CurrentFrame):void {
		}
		
		public function enter(a:CurrentFrame):void {
			a.currFrame = new Reid7();
			a.setFrame(a.currFrame);
			a.sceneLayer.addChild(a.currFrame);
		}
		
		public function exit(a:CurrentFrame):void {
			a.sceneLayer.removeChild(a.currFrame);
			a.setState(CurrentFrame.REID_FRAME8);
		}

	}
	
}