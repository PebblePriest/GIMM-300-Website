package  {
	
	import CurrentFrame;
	import flash.events.MouseEvent;
	
	public class RossFrame4State implements IFrameState{

		public function RossFrame4State() {
			// constructor code
		}
		
		public function update(a:CurrentFrame):void {
			trace("we are in update");
		}
		
		public function enter(a:CurrentFrame):void {
			trace(a.keyCount + "is the key count");
			a.rightArrow.alpha = 0;
			a.rightArrow.x = a.stage.stageWidth + 100;
			a.rightArrow.y = a.stage.stageHeight + 100;
			if(a.keyCount < 1)
			{
				a.currFrame = new Ross_Key0_4();
			} else if(a.keyCount == 1)
			{
				a.currFrame = new Ross_Key1_4();
			} else if(a.keyCount == 2)
			{
				a.currFrame = new Ross_Key2_4();
			} else if(a.keyCount >= 3)
			{
				a.currFrame = new Ross_Key3_4();
			} 
			
			a.setFrame(a.currFrame);
			a.sceneLayer.addChild(a.currFrame);
			a.currFrame.doors.militaryDoorMC.addEventListener(MouseEvent.CLICK, changeScene1);
			a.currFrame.doors.hangDoorMC.addEventListener(MouseEvent.CLICK, changeScene2);
			a.currFrame.doors.kidDoorMC.addEventListener(MouseEvent.CLICK, changeScene3);
			a.currFrame.doors.finalDoorMC.addEventListener(MouseEvent.CLICK, changeScene4);
		}
		
		public function changeScene1(evt:MouseEvent):void {
			if(CurrentFrame.currentFrameSingleton.key1 == false)
			{
				CurrentFrame.currentFrameSingleton.keyCount++;
				trace(CurrentFrame.currentFrameSingleton.keyCount);
			}
			CurrentFrame.currentFrameSingleton.currFrame.doors.kidDoorMC.removeEventListener(MouseEvent.CLICK, changeScene1);
			CurrentFrame.currentFrameSingleton.currFrame.doors.hangDoorMC.removeEventListener(MouseEvent.CLICK, changeScene2);
			CurrentFrame.currentFrameSingleton.currFrame.doors.militaryDoorMC.removeEventListener(MouseEvent.CLICK, changeScene3);
			CurrentFrame.currentFrameSingleton.currFrame.doors.finalDoorMC.removeEventListener(MouseEvent.CLICK, changeScene4);
			CurrentFrame.currentFrameSingleton.sceneLayer.removeChild(CurrentFrame.currentFrameSingleton.currFrame);
			var a = CurrentFrame.currentFrameSingleton;
			CurrentFrame.currentFrameSingleton.songChannel.stop();
			a.key1 == true;
			a.setState(CurrentFrame.DAN_FRAME1);			
		}
		public function changeScene2(evt:MouseEvent):void {
			if(CurrentFrame.currentFrameSingleton.key2 == false)
			{
				CurrentFrame.currentFrameSingleton.keyCount++;
				trace(CurrentFrame.currentFrameSingleton.keyCount);
			}
			CurrentFrame.currentFrameSingleton.currFrame.doors.kidDoorMC.removeEventListener(MouseEvent.CLICK, changeScene1);
			CurrentFrame.currentFrameSingleton.currFrame.doors.hangDoorMC.removeEventListener(MouseEvent.CLICK, changeScene2);
			CurrentFrame.currentFrameSingleton.currFrame.doors.militaryDoorMC.removeEventListener(MouseEvent.CLICK, changeScene3);
			CurrentFrame.currentFrameSingleton.currFrame.doors.finalDoorMC.removeEventListener(MouseEvent.CLICK, changeScene4);
			CurrentFrame.currentFrameSingleton.sceneLayer.removeChild(CurrentFrame.currentFrameSingleton.currFrame);
			CurrentFrame.currentFrameSingleton.songChannel.stop();
			CurrentFrame.currentFrameSingleton.setState(CurrentFrame.CHRISTIAN_FRAME1);
			
		}
		public function changeScene3(evt:MouseEvent):void {
			if(CurrentFrame.currentFrameSingleton.key3 == false)
			{
				CurrentFrame.currentFrameSingleton.keyCount++;
				trace(CurrentFrame.currentFrameSingleton.keyCount);
			}
			CurrentFrame.currentFrameSingleton.currFrame.doors.kidDoorMC.removeEventListener(MouseEvent.CLICK, changeScene1);
			CurrentFrame.currentFrameSingleton.currFrame.doors.hangDoorMC.removeEventListener(MouseEvent.CLICK, changeScene2);
			CurrentFrame.currentFrameSingleton.currFrame.doors.militaryDoorMC.removeEventListener(MouseEvent.CLICK, changeScene3);
			CurrentFrame.currentFrameSingleton.currFrame.doors.finalDoorMC.removeEventListener(MouseEvent.CLICK, changeScene4);
			CurrentFrame.currentFrameSingleton.sceneLayer.removeChild(CurrentFrame.currentFrameSingleton.currFrame);
			CurrentFrame.currentFrameSingleton.songChannel.stop();
			CurrentFrame.currentFrameSingleton.setState(CurrentFrame.SAM_FRAME1);
			
		}
		public function changeScene4(evt:MouseEvent):void {
			if(CurrentFrame.currentFrameSingleton.key1 == true && CurrentFrame.currentFrameSingleton.key2 == true && CurrentFrame.currentFrameSingleton.key3 == true)
			{
				CurrentFrame.currentFrameSingleton.currFrame.doors.kidDoorMC.removeEventListener(MouseEvent.CLICK, changeScene1);
				CurrentFrame.currentFrameSingleton.currFrame.doors.hangDoorMC.removeEventListener(MouseEvent.CLICK, changeScene2);
				CurrentFrame.currentFrameSingleton.currFrame.doors.militaryDoorMC.removeEventListener(MouseEvent.CLICK, changeScene3);
				CurrentFrame.currentFrameSingleton.currFrame.doors.finalDoorMC.removeEventListener(MouseEvent.CLICK, changeScene4);
				CurrentFrame.currentFrameSingleton.sceneLayer.removeChild(CurrentFrame.currentFrameSingleton.currFrame);
				CurrentFrame.currentFrameSingleton.songChannel.stop();
				CurrentFrame.currentFrameSingleton.songChannel2.stop();
				
				CurrentFrame.currentFrameSingleton.setState(CurrentFrame.REID_FRAME1);
				
			}
		}
		
		public function exit(a:CurrentFrame):void {          //no longer called
			
			a.sceneLayer.removeChild(a.currFrame);
			if(a.key1 == false)
			{
				a.key1 == true;
				a.setState(CurrentFrame.DAN_FRAME1);
			}
			else if (a.key2 == false){
				a.setState(CurrentFrame.CHRISTIAN_FRAME1);
			}
			else if (a.key3 == false){
				a.setState(CurrentFrame.SAM_FRAME1);
			}
			else if(a.key1 == true && a.key2 == true && a.key3 == true){
				a.setState(CurrentFrame.REID_FRAME1);
			}
		}
		
		

	}
	
}