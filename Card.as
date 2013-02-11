package
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.filters.DropShadowFilter;
	import flash.filters.GlowFilter;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class Card extends MovieClip
	{
		//Frame number
		protected var _cardNumber:int;

		protected var glow:GlowFilter;
		public static var dropShadow:DropShadowFilter = new DropShadowFilter(4.0, 45, 0, 1.0, 4.0, 4.0, 0.4, 1, false, false, false);
		public static var discardDropShadow:DropShadowFilter = new DropShadowFilter(4.0, 315, 0, 1.0, 12.0, 12.0, 0.6, 1, false, false, false);
		public static var usedGlow:GlowFilter = new GlowFilter(0xCCCCCC, 1, 30, 30, 1.9, 1, false, false);;
		public static var usableGlow:GlowFilter = new GlowFilter(0x5AA54C, 1, 30, 30, 1, 1, false, false);
		public static var chooseGlow:GlowFilter = new GlowFilter(0xf8e808, 1, 30, 30, 1, 1, false, false);

		public var isBack:Boolean;
		public var isZoomed:Boolean;
		public var childIndex:int;
		public var origionalX:int;
		public var status:String;
		public var previousStatus:String; 
		
		public function Card(theCardNumber:int = 1)
		{			
			this.buttonMode = false;

			this.width = 100;
			this.height = 180;

			this.isBack = true;
			this.isZoomed = false;
			this.status = "normal";
			this.previousStatus = " ";
			this.cardNumber = theCardNumber;
					
			this.filters = [Card.dropShadow];
							
			this.addEventListener(MouseEvent.MOUSE_OVER, mouseEnter, false, 0, true);
			this.addEventListener(MouseEvent.MOUSE_OUT, mouseLeave, false, 0, true);
			this.addEventListener(MouseEvent.CLICK, mouseClick, false, 0, true);
			this.addEventListener(MouseEvent.MOUSE_MOVE, mouseMove, false, 0, true);
			
			this.gotoAndStop(1);
		}
		
		
		protected function mouseMove(e:MouseEvent):void
		{
		}

		protected function mouseClick(e:MouseEvent):void
		{
		}

		protected function mouseEnter(e:MouseEvent):void
		{
		}

		protected function mouseLeave(e:MouseEvent):void
		{
		}
		
		public function getDiscription():String
		{
			return _cardNumber.toString();
		}
		
		public function get cardNumber():int
		{
			return _cardNumber;
		}

		public function set cardNumber(value:int):void
		{
			_cardNumber = value;
		}
		
		public function flip():void
		{
			if (this.isBack)
			{
				gotoAndStop(_cardNumber);
				this.isBack = false;
			}
			else
			{
				gotoAndStop(1);
				this.isBack = true;
			}
		}

		public function show():void
		{
			gotoAndStop(_cardNumber);
		}

		public function hide():void
		{
			gotoAndStop(1);
		}
	}
}