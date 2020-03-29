package  {
	
	import CurrentFrame;
	

	public class RossFrame2State implements IFrameState{
	var fallSound:fallingSound = new fallingSound;
		public function RossFrame2State() {
			// constructor code
		}
		
		public function update(a:CurrentFrame):void {
			trace("we are in update");
			
		}
		
		public function enter(a:CurrentFrame):void {
			a.songChannel = fallSound.play();
			//fallSound.play();
			if(a.keyCount < 1)
			{
				a.currFrame = new Ross_Key0_2();
				trace("keycount is less than 1");
				
			} else if(a.keyCount == 1)
			{
				a.currFrame = new Ross_Key1_2();
				trace("keycount is 1");
			} else if(a.keyCount == 2)
			{
				a.currFrame = new Ross_Key2_2();
				trace("keycount is 2");
			} else if(a.keyCount >= 3)
			{
				a.currFrame = new Ross_Key3_2();
				trace("keycount is 3");
			} 
			a.setFrame(a.currFrame);
			a.sceneLayer.addChild(a.currFrame);
		}
		
		public function exit(a:CurrentFrame):void {
			a.songChannel.stop();
			a.sceneLayer.removeChild(a.currFrame);
			a.setState(CurrentFrame.ROSS_FRAME3);
		}

	}
	
}
