package
{
	import commands.StartupCommand;
	import events.ApplicationEvent;

	import flash.display.DisplayObjectContainer;
	import flash.events.IEventDispatcher;
	
	import org.swiftsuspenders.Injector;
	
	import robotlegs.bender.extensions.commandMap.api.ICommandMap;
	import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
	import robotlegs.bender.extensions.localEventMap.api.IEventMap;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;

	import view.MainMediator;
	
	public class ApplicationConfig
	{

		[Inject]
    	public var mediatorMap:IMediatorMap;
    	
    	[Inject]
    	public var commandMap:IEventCommandMap;

    	[Inject]
    	public var eventDispatcher:IEventDispatcher;

    	[Inject]
    	public var main:DisplayObjectContainer;

    	[PostConstruct]
		public function init():void
		{
			// Map Mediators
			mediatorMap.mapView(Main).toMediator(MainMediator);
			mediatorMap.handleView(main,Main);

			// Map Commands
			commandMap.map( ApplicationEvent.STARTUP, ApplicationEvent).toCommand( StartupCommand );
		
			// Dispatch Start
			eventDispatcher.dispatchEvent( new ApplicationEvent( ApplicationEvent.STARTUP ) );
		}
	}
}