package  {
	
	import CurrentFrame;
	import flash.events.MouseEvent;
	
	public class RossFrame5State implements IFrameState{

		public function RossFrame5State() {
			// constructor code
		}
		
		public function update(a:CurrentFrame):void {
			trace("we are in update");
		}
		
		public function enter(a:CurrentFrame):void {
			a.rightArrow.x = a.stage.stageWidth + 100 ;
			a.rightArrow.y = a.stage.stageHeight + 100 ;
			a.keyCount = 0;
			a.key1 = false;
			a.key2 = false;
			a.key3 = false;
			a.currFrame = new Ross5();
			a.setFrame(a.currFrame);
			a.sceneLayer.addChild(a.currFrame);
			a.currFrame.restartButton.addEventListener(MouseEvent.CLICK, restartGame);
		}
		
		public function restartGame(evt:MouseEvent):void {
			trace("restart game");
			CurrentFrame.currentFrameSingleton.currFrame.restartButton.removeEventListener(MouseEvent.CLICK, restartGame);
			CurrentFrame.currentFrameSingleton.setState(CurrentFrame.ROSS_FRAME1);
		}
		
		public function exit(a:CurrentFrame):void {
			a.sceneLayer.removeChild(a.currFrame);
			a.setState(CurrentFrame.ROSS_FRAME1);
		}

	}
	
}
