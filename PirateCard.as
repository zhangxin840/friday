package
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.filters.DropShadowFilter;
	import flash.filters.GlowFilter;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class PirateCard extends Card
	{
		public var choice:Boolean;
		
		public function PirateCard(theCardNumber:int = 1)
		{
			super(theCardNumber);
			choice = false;
			width = 150;
			height = 84;
		}
		
		public function pirateFreeCards():int
		{
			var index = 2 * (this.cardNumber - 1);
			return Cards.pirateValues[index];
		}
		
		public function pirateValue():int
		{
			var index = 2 * (this.cardNumber - 1) + 1;
			return Cards.pirateValues[index];
		}
		
		public function pirateEffect():String
		{
			var index = this.cardNumber - 1;
			return Cards.pirateEffects[index];
		}
		
		override public function getDiscription():String 
		{
			var result = "Pirates are your final enemy";
			return result;
		}
	}

}