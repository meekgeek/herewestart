package view
{
	import robotlegs.bender.bundles.mvcs.impl.Mediator;
	
	public class MainMediator extends Mediator
	{
		public function MainMediator()
		{
			super();
		}
		
		override public function initialize():void
		{
			trace("MediaMediator.initialize()");
		}
	}
}