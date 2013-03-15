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

An illusion has a number called threshold. Threshold is usually -1.

An illusion has a text called real name. An illusion has a text called clause.

An illusion can be real or fake. An illusion is usually fake.

A fake illusion is usually undescribed.

Table - Info
Index	Name	Room	Clause	Used	Used by
refrigerator	"refrigerator"	kitchen	"recently made"	true	refrigerator
oven	"oven"	kitchen	"ready for baking"	false	--
microwave	"microwave"	kitchen	"with a blinking clock"	false	--
stove	"stove"	kitchen	"off at the moment"	false	--


Chapter - Rules


After going somewhere:
	Repeat with object running through every illusion:
		Move object to the location;
	Try looking;

Special examining is an action applying to one thing.

Carry out special examining:
	If the noun is an index listed in table of info:
		Choose row with index of noun in table of info;
		If there is a used by entry:
			Say "[description of the used by entry][paragraph break]";
		Otherwise:
			Say "You can't see [a real name of noun].[paragraph break]";
	Otherwise:
		Say "You can't see [a real name of noun].[paragraph break]";

Instead of examining an illusion, try special examining the noun.

The can't go through undescribed doors rule is not listed in the check going rulebook.

After reading a command:
	clear the screen.
	
Before looking:
	Say "[line break]Current table:[line break]";
	Repeat through table of info:
		If there is a used by entry:
			Let test_object be the used by entry;
			Say "Name: [name entry], Used: [used entry], Used by: [real name of test_object][line break]";
		Otherwise:
			Say "Name: [name entry], Used: [used entry], Used by: Nothing[line break]";
	Repeat with object running through every illusion in the location:
		If object is real:
			Let rand be a random number between 0 and threshold of object;
			If insanity of player + rand is at least threshold of object:
				Say "[insanity of player] + [rand] >= [threshold of object]";
				Pick a random name for object;
			Otherwise:
				Say "[insanity of player] + [rand] < [threshold of object]";
				If the printed name of the object is not the real name of the object:
					Say "(Also resetting)";
					Reset the name of object;
		
			

To pick a random name for (object - an illusion):
	Say "(random name called)";
	Clear from the table object;
	Sort table of info in random order;
	Choose a row with a used of false in table of info;
	Now printed name of object is name entry;
	Now clause of object is clause entry;
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
	Now clause of object is clause entry;
	Now used entry is true;
	Now used by entry is object;


Book - Opening screen


When play begins:
	Say "You can barely hear yourself think. You were hoping the storm would let up, but it's only getting stronger. You feel your heart racing. If this keeps up, you could very well die. Suddenly, to your right, you see a small house, with a 'For Sale' sign on the front lawn.  It will have to do. You move up the walkway, and step onto the front porch, knowing that this is your only hope for refuge.".


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

The refrigerator is an illusion.  Understand "fridge" as the refrigerator. "There is [a refrigerator] in the corner."

The threshold of the refrigerator is 2. The real name of the refrigerator is "refrigerator". The refrigerator is real.

The clause of the refrigerator is "recently made.".

The description of the refrigerator is "In the corner sits [a refrigerator], [clause].".

The oven is an illusion. The real name of it is "oven".

The microwave is an illusion. The real name of it is "microwave".

The stove is an illusion. The real name of it is "stove".


Book - Doors


The front door is an undescribed door. It is north of the front porch. Through it is the kitchen.