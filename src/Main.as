package 
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	
	import org.casalib.util.StageReference;

	import robotlegs.bender.bundles.mvcs.MVCSBundle;
	import robotlegs.bender.framework.context.api.IContext;
	import robotlegs.bender.framework.context.impl.Context;
	/**
	 * ...
	 * @author joel caballero
	 */
	public class Main extends Sprite 
	{	
		public function Main():void 
		{
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;

			StageReference.setStage(stage);

			stage.addEventListener( Event.ENTER_FRAME, checkStageReadiness );
		}

		private function init():void
		{
			//start here
			var context:IContext = new Context().extend(MVCSBundle).configure(ApplicationConfig,this); 
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