package  {
	
	import CurrentFrame;
	public class RossFrame3State implements IFrameState{
	var area1:forrestSound = new forrestSound();
	var area2:night1Sound = new night1Sound();
	var area3:night2Sound = new night2Sound();
	var area4:night3Sound = new night3Sound();
	var crowCall:crowSound = new crowSound();
		public function RossFrame3State() {
			// constructor code
		}
		
		public function update(a:CurrentFrame):void {
			trace("we are in update");
		}
		
		public function enter(a:CurrentFrame):void {
			if(a.keyCount < 1)
			{
				a.songChannel = area1.play();
				a.currFrame = new Ross_Key0_3();
				/*area1.play();*/
			} else if(a.keyCount == 1)
			{
				a.songChannel = area2.play();
				a.currFrame = new Ross_Key1_3();
				/*area2.play();*/
			} else if(a.keyCount == 2)
			{
				a.songChannel = area3.play();
				a.currFrame = new Ross_Key2_3();
				/*area3.play();*/
			} else if(a.keyCount == 3)
			{
				a.songChannel = area4.play();
				a.songChannel2 = crowCall.play();
				a.currFrame = new Ross_Key3_3();
				/*area4.play();
				crowCall.play();*/
			} 
			a.setFrame(a.currFrame);
			a.sceneLayer.addChild(a.currFrame);
		}
		
		public function exit(a:CurrentFrame):void {
			a.sceneLayer.removeChild(a.currFrame);
			a.setState(CurrentFrame.ROSS_FRAME4);
		}

	}
	
}