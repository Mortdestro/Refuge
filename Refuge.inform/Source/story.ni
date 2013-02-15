"Refuge" by Dan Malear and Edward Ramirez


Volume - Set up


Book - Uses


Use American dialect, the serial comma, and no scoring.


Book - Includes


Include Basic Screen Effects by Emily Short


Volume - Game


Book - Definitions and Rules


Chapter - Definitions


Chapter - Rules


The can't go through undescribed doors rule is not listed in the check going rulebook.


After reading a command:
	clear the screen.


Book - Opening screen


When play begins, say "You can barely hear yourself think. You were hoping the storm would let up, but it's only getting stronger. You feel your heart racing. If this keeps up, you could very well die. Suddenly, to your right, you see a small house, with a 'For Sale' sign on the front lawn.  It will have to do. You move up the walkway, and step onto the front porch, knowing that this is your only hope for refuge.".


Book - Rooms


Chapter - Front Porch


Section - Variables


dry_wood is a truth state that varies. dry_wood is true.


Section - Props


The Front Porch is a room. "The front porch is hardly a respite; there is no cover from the storm whatsoever. Other than the light, wooden railing surrounding it, the porch holds nothing but the [if dry_wood is true]dry,[otherwise]sopping[end if] wooden floor."

The wooden floor is a backdrop in the porch. The description of it is "The rain has soaked thoroughly into the wood. It will certainly be ruined when the storm passes."

After examining the wooden floor:
	Now dry_wood is false.


Chapter - Kitchen


Section - Variables


red_fridge is a truth state that varies. red_fridge is true.


Chapter - Props


Kitchen is a room. "The kitchen is silent and untouched."

The kitchen scenery is scenery in the kitchen. Understand "kitchen" as the kitchen scenery.

Instead of examining the kitchen scenery:
	try looking.

The grungy red refrigerator is in the kitchen.  Understand "grungy/red/ fridge" as the refrigerator. "There is a [if red_fridge is true]grungy, red[otherwise]pristine, white[end if] refrigerator in the corner."

The description of the refrigerator is "The refrigerator looks like it was made recently, with a polished white surface, and an ice/water dispenser".

After examining the refrigerator:
	if red_fridge is true:
		now red_fridge is false.


Book - Doors


The front door is an undescribed door. It is north of the front porch. Through it is the kitchen.