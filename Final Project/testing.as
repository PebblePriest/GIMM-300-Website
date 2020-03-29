package  {
	
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.system.Capabilities;
	import flash.display.MovieClip;
	import flash.events.*;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.display.Scene;	
	
	public class testing extends MovieClip{

		public var testing2:MovieClip;

		public function testing() {
			// constructor code
			
			testing2 = new Christian2();
			addChild(testing2);
			
			trace(this.testing2.tv);
		}

	}
	
}
