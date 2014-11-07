package com.org
{

	import flash.display.*;
	import flash.events.*;
	import flash.text.*;

	/*------------------------------------------------------------------------------------------------*/

	public class ButtonClass extends Sprite
	{
		private var global_sprite:Sprite=new Sprite();
		public var LABEL:String = "";


		/*------------------------------------------------------------------------------------------------*/

		public function ButtonClass(_label:String,__x:Number)
		{
			LABEL = _label;
			var _click:Function;
			var _out:Function;
			var _over:Function;
			
			buttonMode = true;
			x=__x;
			useHandCursor = true;
			
			addChild(Draw(LABEL,0xffffff, 0x6699FF,global_sprite));
			addEventListener(MouseEvent.MOUSE_OVER, _over=function(e:MouseEvent):void
			{        Draw(LABEL,0x000000, 0xffffff,global_sprite); });
			addEventListener(MouseEvent.MOUSE_OUT,_out= function(e:MouseEvent):void
			{        Draw(LABEL,0xffffff, 0x6699FF,global_sprite);  });
			addEventListener(MouseEvent.CLICK,_click = function(e:MouseEvent):void
			{         Draw(LABEL,0xffffff, 0xcccccc,global_sprite);
			   removeEventListener(MouseEvent.CLICK, _click );
			          removeEventListener(MouseEvent.MOUSE_OUT, _out);
			          removeEventListener(MouseEvent.MOUSE_OVER, _over);
			  
			dispatchEvent(new ButtonEvent(ButtonEvent.MOUSECLICKEVENT,LABEL));
			
			});




		}
		/*------------------------------------------------------------------------------------------------*/


		public static function Draw(global_text:String,global_textColor:uint, global_bgColor:uint,global_sprite:Sprite):Sprite
		{
			while (global_sprite.numChildren > 0)
			{
				global_sprite.removeChildAt(0);
			}

			var global_format:TextFormat=new TextFormat();
			global_format.size = 15;
			global_format.color = global_textColor;
			global_format.font = "Century Gothic";
			global_format.align = TextFormatAlign.CENTER;

			var global_shape:Shape=new Shape();
			global_shape.graphics.beginFill(  global_bgColor);
			global_shape.graphics.drawRect(0,0,150,31);
			global_shape.graphics.endFill();
			global_sprite.addChild(global_shape);

			var global_textfield:TextField=new TextField();
			global_textfield.defaultTextFormat = global_format;
			global_textfield.width = global_sprite.width - 2;
			global_textfield.height = 28;
			global_textfield.mouseEnabled = false;
			global_textfield.y = 2;
			global_textfield.text = global_text;


			global_sprite.addChild(global_textfield);

			return (global_sprite);

		}


	}

}
