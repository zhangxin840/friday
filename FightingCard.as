package
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.filters.DropShadowFilter;
	import flash.filters.GlowFilter;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class FightingCard extends Card
	{
		public var isDoubled:Boolean;
		
		public function FightingCard(theCardNumber:int = 1)
		{
			super(theCardNumber);
			
			isDoubled = false;
			
			//Aging card
			if ((this.cardNumber >= 7) && (this.cardNumber <= 15))
			{
				this.status = "used";
				this.filters = [Card.dropShadow, Card.usedGlow];
			}
			//Stack top
			else if (this.cardNumber == 1)
			{
			}
			//Have effect
			else if (this.fightingEffect() != " ")
			{
				this.status = "usable";
				this.buttonMode = true;
				this.filters = [Card.dropShadow, Card.usableGlow];
			}
			else
			{
			}
		}
		
		public function fightingName():String
		{
			var index = this.cardNumber - 2;
			return Cards.fightingNames[index];
		}
		
		public function fightingValue():int
		{
			var index = this.cardNumber - 2;
			return Cards.fightingValues[index];
		}
		
		public function fightingEffect():String
		{
			var index = this.cardNumber - 2;
			return Cards.fightingEffects[index];
		}
		
		override protected function mouseClick(e:MouseEvent):void
		{
			//super.mouseClick(e);
		}
		
		override public function getDiscription():String 
		{
			var result = "";
			if (fightingEffect() != " ") 
			{
				result = fightingName() + ": " + fightingEffect();
			}
			else 
			{
				result = fightingName();
			}
			
			return result;
		}
	}

}