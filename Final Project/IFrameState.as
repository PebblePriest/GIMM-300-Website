package  {
	
	public interface IFrameState {

		// Interface methods:
		function update(a:CurrentFrame):void;
		function enter(a:CurrentFrame):void;
		function exit(a:CurrentFrame):void;

	}
	
}
