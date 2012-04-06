package
{
	import flash.display.DisplayObjectContainer;
	import flash.events.IEventDispatcher;
	
	import org.swiftsuspenders.Injector;
	
	import robotlegs.bender.extensions.commandMap.api.ICommandMap;
	import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
	import robotlegs.bender.extensions.localEventMap.api.IEventMap;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.framework.context.api.IContext;
	import robotlegs.bender.framework.context.api.IContextConfig;
	
	public class ApplicationConfig implements IContextConfig
	{
		public function configureContext( context:IContext ):void
		{
			// Map Mediators
			var mediatorMap:IMediatorMap = context.injector.getInstance( IMediatorMap );
			//	mediatorMap.mapView(TestView).toMediator(TestMediator); 

			// Map Commands
			var commandMap:IEventCommandMap = context.injector.getInstance( IEventCommandMap );
			//	commandMap.map( ApplicationEvent.STARTUP, ApplicationEvent).toCommand( StartupCommand );
			
			// Dispatch Start
			var eventDispatcher:IEventDispatcher = context.injector.getInstance( IEventDispatcher );
			//	eventDispatcher.dispatchEvent( new ApplicationEvent( ApplicationEvent.STARTUP ) );
		}
	}
}