package
{
	
	public class Cards extends Object
	{
		public static var hazardNames:Array = ["Cannibal", "Cannibal", "Wild animals", "Wild animals", "Wild animals", "Wild animals", "Explore deep island", "Explore deep island", "Explore deep island", "Explore deep island", "Explore deep island", "Explore deep island", "Explore island", "Explore island", "Explore island", "Explore island", "Explore island", "Explore island", "Explore island", "Explore island", "Wreck boat", "Wreck boat", "Wreck boat", "Wreck boat", "Wreck boat", "Wreck boat", "Wreck boat", "Wreck boat", "Wreck boat", "Wreck boat"];
		public static var hazardValues:Array = [5, 14, 9, 5, 5, 14, 9, 5, 4, 11, 7, 4, 4, 11, 7, 4, 4, 11, 7, 4, 4, 11, 7, 4, 3, 8, 5, 2, 3, 8, 5, 2, 3, 8, 5, 2, 3, 8, 5, 2, 3, 8, 5, 2, 3, 8, 5, 2, 2, 6, 3, 1, 2, 6, 3, 1, 2, 6, 3, 1, 2, 6, 3, 1, 2, 6, 3, 1, 2, 6, 3, 1, 2, 6, 3, 1, 2, 6, 3, 1, 1, 3, 1, 0, 1, 3, 1, 0, 1, 3, 1, 0, 1, 3, 1, 0, 1, 3, 1, 0, 1, 3, 1, 0, 1, 3, 1, 0, 1, 3, 1, 0, 1, 3, 1, 0, 1, 3, 1, 0];
		public static var fightingNames:Array = ["Genial", "Unconcentrated", "Normal", "Eat", "Concentrated", "Very hungry", "Hungry", "Unconcentrated", "Afraid", "Tired", "Stupid", "Self homicidal", "Idiot", "Very Stupid", "Weapon", "Weapon", "Strategy", "Vision", "Experience", "Knowledge", "Repetition", "Nutriment", "Strategy", "Vision", "Knowledge", "Experience", "Weapon", "Weapon", "Nutriment", "Nutriment", "Trick", "Repetition", "Knowledge", "Mimicry", "Strategy", "Strategy", "Equipment", "Equipment", "Nutriment", "Nutriment", "Mimicry", "Knowledge", "Trick", "Reader"];
		public static var fightingValues:Array = [2, -1, 0, 0, 1, 0, 0, -1, 0, 0, -2, -5, -4, -3, 4, 4, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
		public static var fightingEffects:Array = [" ", " ", " ", "+2 Life", " ", "-2 Life", "-1 Life", " ", "Highest card = 0", "Stop", " ", " ", " ", " ", " ", " ", "1 x Exchange", "Sort 3 cards", "+1 Card", "1 x Destory", "1 x Double", "+1 Life", "1 x Exchange", "Sort 3 cards", "1 x Destory", "+1 Card", " ", " ", "+1 Life", "+1 Life", "1 x Below the stack", "1 x Double", "1 x Destroy", "1 x Copy", "2 x Exchange", "2 x Exchange", "+2 Cards", "+2 Cards", "+1 Life", "+1 Life", "1 x Copy", "1 x Destory", "1 x Below the stack", "-1 Step"];
		public static var pirateValues:Array = [5, 0, 6, 20, 7, 25, 7, 16, 0, 0, 8, 30, 9, 22, 9, 35, 10, 40, 10, 52];
		public static var pirateEffects:Array = ["+2 hazard points for each aging card added to your Robinson stack", " ", " ", "Each additional fighting card costs 2 life points", "Fight against all remaining hazard cards", " ", "Only half of the fighting cards count", " ", " ", "Each drawn fighting card counts +1 fighting point"];
		
		public function Cards()
		{
		}
	}

}