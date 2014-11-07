package 
{

	import flash.display.*;
	import flash.events.*;
	import flash.text.*;
	import com.org.ButtonClass;
	import com.org.ButtonEvent;
	import com.org.TileClass;
	import com.org.TileEvent;

	public class Application extends Sprite
	{
		private var global_sprite:Sprite = new Sprite  ;
		public var global_tile_menu:Array = ["Profile","Messages","Collection","Search","About Us"];
		private var global_tiles:Array = [140,300,600];
		private var global_tiles_group:Sprite=new Sprite();
		private var global_facebook_login:ButtonClass;

		public function Application()
		{
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.addEventListener(Event.RESIZE, onResize);

			global_facebook_login = new ButtonClass("Facebook Login",(stage.stageWidth - 150));



			
			var randomUint:uint = 0;

			var __x:Number = 0;
			var __y:Number = 0;

			for (var i:int=0; i<global_tile_menu.length; i++)
			{


				if (__x == 0)
				{
					randomUint = uint(Math.random() * 3);
				}
				else if (__x == 150)
				{
					randomUint = uint(Math.random() * 2);
				}
				else if (__x == 310)
				{
					randomUint = uint(Math.random() * 1);
				}
				else if (__x == 460)
				{
					randomUint = 0;
				}

				var _tile:TileClass;
				_tile = new TileClass(global_tile_menu[i],__x,__y,global_tiles[randomUint],140,0x6699FF);
				__x +=  global_tiles[randomUint] + 10;
				global_tiles_group.addChild(_tile);

				if (__x> 460)
				{
					__y +=  150;
					__x = 0;

				}


			}

			global_facebook_login.addEventListener(ButtonEvent.MOUSECLICKEVENT, ButtonEventHandler);
			global_sprite.graphics.lineStyle(1,0x000000);
			global_sprite.graphics.beginFill(0x000000);
			global_sprite.graphics.drawRect(0, 0, stage.stageWidth,30);
			global_sprite.graphics.endFill();
			addChild(global_sprite);
			addChild(global_facebook_login);

			global_tiles_group.y = 80;
			global_tiles_group.x= (stage.stageWidth/2)-(global_tiles_group.width/2);
			addChild(global_tiles_group);
		}
		private function onResize(e:Event):void
		{
			global_facebook_login.x = stage.stageWidth - 150;
			global_tiles_group.x= (stage.stageWidth/2)-(global_tiles_group.width/2);
			global_sprite.graphics.clear();
			global_sprite.graphics.lineStyle(1,0x000000);
			global_sprite.graphics.beginFill(0x000000);
			global_sprite.graphics.drawRect(0, 0, stage.stageWidth,30);
			global_sprite.graphics.endFill();
			
			addChild(global_sprite);
			addChild(global_facebook_login);
			 
		}

		private function ButtonEventHandler(evt:ButtonEvent):void
		{
			trace(evt.DATA.toString());
		}

		private function TileEventHandler(evt:TileEvent):void
		{
			trace(evt.DATA.toString());
		}

	}
}
