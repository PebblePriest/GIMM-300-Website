package  {
	
	import StartScreenState;
	
	import ChristianFrame1State;
	import ChristianFrame2State;
	import ChristianFrame3State;
	import ChristianFrame4State;
	import ChristianFrame5State;
	
	import RossFrame1State;
	import RossFrame2State;
	import RossFrame3State;
	import RossFrame4State;
	import RossFrame5State;
	
	import DanFrame1State;
	import DanFrame2State;
	import DanFrame3State;
	import DanFrame4State;
	import DanFrame5State;
	
	import SamFrame1State;
	import SamFrame2State;
	import SamFrame3State;
	import SamFrame4State;
	
	import ReidFrame1State;
	import ReidFrame2State;
	import ReidFrame3State;
	import ReidFrame4State;
	import ReidFrame5State;
	import ReidFrame6State;
	import ReidFrame7State;
	import ReidFrame8State;
	import ReidFrame9State;
	import ReidFrame10State;
	
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.display.Scene;
	import flash.system.Capabilities;
	import flash.system.System;
	import flash.media.SoundMixer;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	
	
	public class CurrentFrame extends MovieClip{
		
		public static var currentFrameSingleton = null;
		
		public static const STARTSCREEN:IFrameState = new StartScreenState();
		
		public static const CHRISTIAN_FRAME1:IFrameState = new ChristianFrame1State();
		public static const CHRISTIAN_FRAME2:IFrameState = new ChristianFrame2State();
		public static const CHRISTIAN_FRAME3:IFrameState = new ChristianFrame3State();
		public static const CHRISTIAN_FRAME4:IFrameState = new ChristianFrame4State();
		public static const CHRISTIAN_FRAME5:IFrameState = new ChristianFrame5State();
		
		public static const ROSS_FRAME1:IFrameState = new RossFrame1State();
		public static const ROSS_FRAME2:IFrameState = new RossFrame2State();
		public static const ROSS_FRAME3:IFrameState = new RossFrame3State();
		public static const ROSS_FRAME4:IFrameState = new RossFrame4State();
		public static const ROSS_FRAME5:IFrameState = new RossFrame5State();
		
		public static const DAN_FRAME1:IFrameState = new DanFrame1State();
		public static const DAN_FRAME2:IFrameState = new DanFrame2State();
		public static const DAN_FRAME3:IFrameState = new DanFrame3State();
		public static const DAN_FRAME4:IFrameState = new DanFrame4State();
		public static const DAN_FRAME5:IFrameState = new DanFrame5State();
		
		public static const SAM_FRAME1:IFrameState = new SamFrame1State();
		public static const SAM_FRAME2:IFrameState = new SamFrame2State();
		public static const SAM_FRAME3:IFrameState = new SamFrame3State();
		public static const SAM_FRAME4:IFrameState = new SamFrame4State();
		
		public static const REID_FRAME1:IFrameState = new ReidFrame1State();
		public static const REID_FRAME2:IFrameState = new ReidFrame2State();
		public static const REID_FRAME3:IFrameState = new ReidFrame3State();
		public static const REID_FRAME4:IFrameState = new ReidFrame4State();
		public static const REID_FRAME5:IFrameState = new ReidFrame5State();
		public static const REID_FRAME6:IFrameState = new ReidFrame6State();
		public static const REID_FRAME7:IFrameState = new ReidFrame7State();
		public static const REID_FRAME8:IFrameState = new ReidFrame8State();
		public static const REID_FRAME9:IFrameState = new ReidFrame9State();
		public static const REID_FRAME10:IFrameState = new ReidFrame10State();
		
		private var _previousState:IFrameState; //The previous executing state
		private var _currentState:IFrameState; //The currently executing state
		public var sceneLayer:MovieClip;
		private var buttonLayer:Sprite;
		public var currFrame:MovieClip;
		public var rightArrow:NextButton;
		public var key1:Boolean;
		public var key2:Boolean;
		public var key3:Boolean;
		public var keyCount:int;
		public var songChannel:SoundChannel;
		public var songChannel2:SoundChannel;
		


		public function CurrentFrame() {
			// constructor code
			currentFrameSingleton=this;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			
			
			sceneLayer = new MovieClip();
			buttonLayer = new Sprite();
			addChild(sceneLayer);
			addChild(buttonLayer);
			
			rightArrow = new NextButton();
			rightArrow.x = stage.stageWidth + 100 ;
			rightArrow.y = stage.stageHeight + 100 ;
			rightArrow.width = stage.stageWidth * .1;
			rightArrow.height = stage.stageHeight * .1;
			
			buttonLayer.addChild(rightArrow);
			setState( STARTSCREEN );
			
			key1 = false;
			key2 = false;
			key3 = false;
			keyCount = 0;
			
			
			
			rightArrow.addEventListener(MouseEvent.CLICK, NextScene);
		}
		
		
		private function NextScene(evt:MouseEvent):void
		{
			
			_currentState.exit(this);
		}
		
		public function setFrame(mc:MovieClip):void {
			mc.width= stage.stageWidth + 20;
			mc.height = stage.stageHeight + 20;
			mc.x = 0;
			mc.y = 0;
		}
		
		public function update():void {
			if (!_currentState || this == null) return; //If there's no behavior, we do nothing
			_currentState.update(this);
			
			
		}
		
		public function setState(newState:IFrameState):void {
			if (_currentState == newState) return;
			if (_currentState) {
				//_currentState.exit(this);
			}
			System.gc();
			System.gc();
			_previousState = _currentState;
			_currentState = newState;
			_currentState.enter(this);
		}
		
		public function get previousState():IFrameState { return _previousState; }
		
		public function get currentState():IFrameState { return _currentState; }

	}
	
}
