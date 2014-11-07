package com.org
{
	import flash.events.Event;

	public class ButtonEvent extends Event
	{

		
		public static const MOUSECLICKEVENT:String = 'ButtonEvent.MOUSECLICKEVENT';
		public var DATA:Object;
		public function ButtonEvent($type:String, $data:Object= null)
		{
			super($type);
			DATA = $data;
		}

		public override function clone():Event
		{
			return new ButtonEvent(type, DATA);
		}
	}
}
