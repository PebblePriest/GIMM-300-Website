package  {
	
	import CurrentFrame;
	import flash.events.MouseEvent;
	
	public class StartScreenState implements IFrameState{

		public function StartScreenState() {
			// constructor code
		}
		
		public function update(a:CurrentFrame):void {
			trace("we are in update");
		}
		
		public function enter(a:CurrentFrame):void {
			a.currFrame = new startScreen();
			a.setFrame(a.currFrame);
			a.sceneLayer.addChild(a.currFrame);
			a.currFrame.startButton.addEventListener(MouseEvent.CLICK, startGame);
		}
		
		public function startGame(evt:MouseEvent):void {
			CurrentFrame.currentFrameSingleton.currFrame.startButton.removeEventListener(MouseEvent.CLICK, startGame);
			CurrentFrame.currentFrameSingleton.setState(CurrentFrame.ROSS_FRAME1);
		}
		
		public function exit(a:CurrentFrame):void {
			a.sceneLayer.removeChild(a.currFrame);
			a.setState(CurrentFrame.ROSS_FRAME1);
		}

	}
	
}
