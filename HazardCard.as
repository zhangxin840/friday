package 
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.filters.DropShadowFilter;
	import flash.filters.GlowFilter;
	import flash.events.Event;
	import flash.events.MouseEvent;

	public class HazardCard extends Card
	{
		public var isRotated:Boolean;
		private var step:int;
		
		public function HazardCard(theStep:int = 0, theCardNumber:int = 1)
		{
			super(theCardNumber);
			
			step = theStep;
			isRotated = false;
			
			var glow = new GlowFilter();
			glow.blurX = 35;
			glow.blurY = 35;
			if (step == 0) 
			{
				glow.color = 0x5AA54C;
			}
			else if (step == 1) {
				glow.color = 0xf8e808;
			}
			else if	(step == 2) {
				glow.color = 0xe86808;
			}
			glow.strength = .97;
			
			this.filters = [Card.dropShadow, glow];
		}
		
		public function hazardName():String
		{
			var index = this.cardNumber - 2;
			return Cards.hazardNames[index];
		}
		
		public function hazardValue():int 
		{
			var index = this.cardNumber - 2;
			return Cards.hazardValues[4 * index + 3 - step];
		}
		
		public function hazardCardNumber():int 
		{
			var index = this.cardNumber - 2;
			return Cards.hazardValues[4 * index];
		}
		
		override protected function mouseLeave(e:MouseEvent):void 
		{
			//super.mouseLeave(e);
		}
		override protected function mouseEnter(e:MouseEvent):void 
		{
			//super.mouseEnter(e);
		}
		override public function getDiscription():String 
		{
			var result = "";
			if (isRotated) 
			{
				var index = cardNumber + 14 - 2;
				var effect = Cards.fightingEffects[index];
				var name = Cards.fightingNames[index];
				if (effect != " ") 
				{
					result = name + ": " + effect;
				}
				else 
				{
					result = name;
				}
			}
			else 
			{
				result = hazardName();
			}
			return result;
		}
	}

}