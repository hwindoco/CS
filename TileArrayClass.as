package com.org
{
	import flash.events.*;
	import flash.display.*;
	import com.org.ButtonClass;
	import com.org.events.ButtonClassEvent;
	/*----------------------------------------------------------------------------------------------------*/
	public class ButtonArrayClass extends MovieClip
	{
		private var global_var_buttons_array:Array=new Array();

		/*----------------------------------------------------------------------------------------------------*/

		public function ButtonArrayClass(_array:Array)
		{
			for (var i:int=0; i<_array.length; i++)
			{

				/*create _button and add to the control array,global_var_buttons_array*/
				var _button:ButtonClass = new ButtonClass(_array[i]);
				global_var_buttons_array.push(_button);

				/*set the _button objects properties*/
				_button.buttonMode = true;
				_button.addEventListener(MouseEvent.CLICK,event_button_mouseclick);
				_button.addEventListener(MouseEvent.MOUSE_OVER,event_button_mouseover);
				_button.addEventListener(MouseEvent.MOUSE_OUT, event_button_mouseout);

				/*call static function draw on the _button:buttonclass object, position object and add to the menuclass*/
				com.org.ButtonClass.Draw(_button.LABEL,0x000000, 0xFFFFFF,_button);
				_button.x = i * _button.width* 1.007;
				addChild(_button);
			}

		}
		/*----------------------------------------------------------------------------------------------------*/

		private function event_button_mouseclick(evt:Event)
		{
			/*loop throught button array and reset to initial display state (grey button with black text)*/
			var _button:ButtonClass;
			for (var i:int=0; i<global_var_buttons_array.length; i++)
			{
				_button = global_var_buttons_array[i];
				ButtonClass.Draw(_button.LABEL,0x000000, 0xFFFFFF,_button);
				//_button.selected = false;
				_button.buttonMode = true;
			}
			/*set new colors and values for selected object*/
			_button = evt.currentTarget as ButtonClass;
			com.org.ButtonClass.Draw(_button.LABEL,0x000000, 0xFFFFFF,_button);
			//_button.selected = true;
			_button.buttonMode = false;
			
			dispatchEvent(new ButtonClassEvent("onmouseclick",_button.LABEL));
		}
		/*----------------------------------------------------------------------------------------------------*/

		private function event_button_mouseover(evt:Event)
		{
			/*change state of button if it is not selected;*/
			var _button:ButtonClass = evt.currentTarget as ButtonClass;
			//if (! _button.selected)
			{
				com.org.ButtonClass.Draw(_button.LABEL,0x000000, 0x0099CC,_button);
			}
		}
		/*----------------------------------------------------------------------------------------------------*/

		private function event_button_mouseout(evt:Event)
		{
			/*change state of button if it is not selected*/
			var _button:ButtonClass = evt.currentTarget as ButtonClass;
			//if (! _button.selected)
			{
				com.org.ButtonClass.Draw(_button.LABEL,0x000000, 0xFFFFFF,_button);
			}
		}
	}

}
