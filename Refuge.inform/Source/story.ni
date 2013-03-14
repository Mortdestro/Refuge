"Refuge" by Dan Malear and Edward Ramirez


Volume - Set up


Book - Uses


Use American dialect, the serial comma, and no scoring.


Book - Includes


Include Basic Screen Effects by Emily Short


Volume - Game


Book - Definitions and Rules


Chapter - Definitions


The player has a number called insanity. Insanity is 0.

An illusion is a kind of thing.

An illusion has a number called threshold. Threshold is usually 0.

An illusion has a text called real name.

An illusion has a number called index.

Table - Info
Name	Object	Type	Description	Used	Used by
"refrigerator"	"refrigerator"	"kitchen"	"It's a fridge."	true	refrigerator
"oven"	"oven"	"kitchen"	"It's an oven."	false	--
"microwave"	"microwave"	"kitchen"	"It's a microwave."	false	--


Chapter - Rules


The can't go through undescribed doors rule is not listed in the check going rulebook.

After reading a command:
	clear the screen.
	
Before looking:
	Repeat with object running through every illusion in the location:
		Let rand be a random number between 0 and threshold of object;
		If insanity of player + rand is at least threshold of object:
			Say "[insanity of player] + [rand] >= [threshold of object]";
			Pick a random name for object;
		Otherwise:
			Say "[insanity of player] + [rand] < [threshold of object]";
			If the printed name of the object is not the real name of the object:
				Say "(Also resetting)";
				Reset the name of object;
		Say "[line break]Current table:[line break]";
		Repeat through table of info:
			If there is a used by entry:
				Let test_object be the used by entry;
				Say "Name: [name entry], Used: [used entry], Used by: [real name of test_object][line break]";
			Otherwise:
				Say "Name: [name entry], Used: [used entry], Used by: Nothing[line break]";
			

To pick a random name for (object - an illusion):
	Say "(random name called)";
	Clear from the table object;
	Sort table of info in random order;
	Choose a row with a used of false in table of info;
	Now printed name of object is name entry;
	Now used entry is true;
	Now used by entry is object;

To clear from the table (object - an illusion):
	Say "(clear called)";
	If object is a used by listed in the table of info:
		Choose a row with used by of object in table of info;
		Now used entry is false;
		Blank out used by entry;

To reset the name of (object - an illusion):
	Say "(reset called)";
	Clear from the table object;
	Choose a row with name of real name of object in table of info;
	If used entry is true:
		Let second_object be used by entry;
		Reset the name of second_object; [RECURSION IN INFORM. FUCK YES.]
	Now printed name of object is name entry;
	Now used entry is true;
	Now used by entry is object;


Book - Opening screen


When play begins, say "You can barely hear yourself think. You were hoping the storm would let up, but it's only getting stronger. You feel your heart racing. If this keeps up, you could very well die. Suddenly, to your right, you see a small house, with a 'For Sale' sign on the front lawn.  It will have to do. You move up the walkway, and step onto the front porch, knowing that this is your only hope for refuge.".


Book - Rooms


Chapter - Front Porch


Section - Props


The Front Porch is a room. "The front porch is hardly a respite; there is no cover from the storm whatsoever. Other than the light, wooden railing surrounding it, the porch has nothing but the dry, wooden floor."

The wooden floor is a backdrop in the porch. The description of it is "The rain has soaked thoroughly into the wood. It will certainly be ruined when the storm passes."


Chapter - Kitchen


Section - Props


Kitchen is a room. "The kitchen is silent and untouched."

The kitchen scenery is scenery in the kitchen. Understand "kitchen" as the kitchen scenery.

Instead of examining the kitchen scenery:
	try looking.

The refrigerator is an illusion in the kitchen.  Understand "fridge" as the refrigerator. "There is [a refrigerator] in the corner."

The threshold of the refrigerator is 2. The real name of the refrigerator is "refrigerator".

The description of the refrigerator is "[The refrigerator] looks like it was made recently, with a polished white surface, and an ice/water dispenser. Index: [index]".


Book - Doors


The front door is an undescribed door. It is north of the front porch. Through it is the kitchen.