package  {
	
	import CurrentFrame;
	public class RossFrame1State implements IFrameState{

		public function RossFrame1State() {
			// constructor code
		}
		
		public function update(a:CurrentFrame):void {
			trace("we are in update");
		}
		
		public function enter(a:CurrentFrame):void {
			a.rightArrow.x = a.stage.stageWidth - a.rightArrow.width/2 ;
			a.rightArrow.y = a.stage.stageHeight/2 ;
			a.currFrame = new Ross1();
			a.setFrame(a.currFrame);
			a.sceneLayer.addChild(a.currFrame);
		}
		
		public function exit(a:CurrentFrame):void {
			a.sceneLayer.removeChild(a.currFrame);
			a.setState(CurrentFrame.ROSS_FRAME2);
		}

	}
	
}
