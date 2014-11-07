package com.org
{
	import flash.events.Event;

	public class TileEvent extends Event
	{

		
		public static const MOUSECLICKEVENT:String = 'TileEvent.MOUSECLICKEVENT';
		public var DATA:Object;
		public function TileEvent($type:String, $data:Object= null)
		{
			super($type);
			DATA = $data;
		}

		public override function clone():Event
		{
			return new TileEvent(type, DATA);
		}
	}
}
