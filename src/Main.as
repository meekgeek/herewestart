package {
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author elimak
	 */
	public class Main extends Sprite 
	{	
		public function Main():void 
		{
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;

			stage.addEventListener( Event.ENTER_FRAME, checkStageReadiness );
		}

		private function init():void
		{
			//start here
		}
		
		private function checkStageReadiness( e:Event ):void
		{
			if( stage.stageWidth > 0 && stage.stageHeight > 0 )
			{
				stage.removeEventListener( Event.ENTER_FRAME, checkStageReadiness );
				
				this.init();
			}
		}
	}
}