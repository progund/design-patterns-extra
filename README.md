# design-patterns-extra
Extra lectures and material for Design Patterns
# cave-sprint-1
Skeleton code and give-aways for cave assignment in TIG059

Your task is to write the Room and Player classes according to the UML diagram.

Put both classes in the se.itu.game.cave package.

The corresponding directory is

`se/itu/game/cave/`

# Classes you should write
## R1 The Room class
The Room class is used by the CaveInitializer which reads from the database and creates the Room graph (the map of connected Room:s).

So you'll need some methods in place which we'll provide for you here.

Package statement:
```Java
package se.itu.game.cave;
```

## R2 The constructor and methods we'll give you straight-up:

### R2.1 The inner class of type enum
```Java
  public static enum Direction {
    NORTH,
    EAST,
    SOUTH,
    WEST;
  } 
```

Put that somewhere inside the class, e.g. in the beginning, after the instance variable list.

### R2.2 Constructor
Comment: This horrible constructor is here to give you motivation to learn about Builder in coming sprints.

```Java
  /**
   * Constructor for Room. A direction (north, east, south or west)
   * with the value null signifies that the room in that direction
   * is either not present or accessible.
   * @param description a String decribing this Room
   * @param north the Room to the north
   * @param east the Room to the east
   * @param south the Room to the south
   * @param west the Room to the west     
   * @param things a List&lt;Thing&gt; of Things in the Room
   * @throws NullPointerException - if things or description is null
   */
  public Room(String description,
              Room north,        
              Room east,
              Room south,        
              Room west,
              List<Thing> things) {
    if ( description == null || things == null) {
      throw new NullPointerException("things or description can't be null.");
    }
    this.description=description;
    this.north=north;
    this.east=east;
    this.south=south;
    this.west=west;
    this.things=things;
  }
```

### R2.3 setConnectingRoom - used when building the graph

```Java
  /**
   * @param direction The direction to Room
   * @param room The Room in direction
   */
  public void setConnectingRoom(Direction direction, Room room) {
    switch (direction) {
      case NORTH:
        north = room;
        break;
      case EAST:
        east = room;
        break;
      case SOUTH:
        south = room;
        break;
      case WEST:
        west = room;
        break;
      default: // This is actually a case where we can skip the default label!
        throw new IllegalArgumentException("Direction not corect, can't happen ;)");
    }
  }
```

## R3 Instance variables needed for the Room class

Each Room should, according to the UML and the lectures, keep track of a few things:
* List of things
* Four connecting Room:s (which could be null to signify no such exit)
  * north
  * nouth
  * east
  * west
* A text description ("You are in a boring classroom. Nothing can save you now")

We suggest the follwing instance variable declarations:

```Java
  private String description;
  private Room north;        
  private Room east;        
  private Room south;        
  private Room west;        
  private List<Thing> things;
```

You'll need to import stuff:
```Java
import java.util.List;
import java.util.Collections;
import java.util.List;
import java.util.ArrayList;
```

## R4 Instance methods
Let's again talk about sending messages to a Room (calling a method), or what behavior a Room exhibits (according to our analysis in class).

The UML specifies a few methods.

### R4.1 things() : Thing[*]

```Java
  /**
   * Returns a reference to an umodifiable version of the list of Things.
   * @return an umodifiable version of the list of Things in this room.
   */
  public List<Thing> things() {
    // Return an unmodifialble view of the things list
  }
```

Hint: Collections has a utility method for making an unmodifiable view of some list object. If we have a reference to e.g. a list, we can do:
```Java
 list = getSomeList();
 List unmodifiableList = Collections.unmodifiableList(list);
```

The call on the second line creates an unmodifiableList from the variable list.

### R4.2 removeThing(thing : Thing) : Thing
Comment:

There are some checks to do here and some exceptions to throw if the checks fails.

Why all the checks and exceptions?

We don't want it to be possible to try to remove a thing which is not present in the room. And we certainly don't want it to be possible to remove a thing which is null from the room.

All of the above are errors in the game logic, so we decided it is better to crash the game than to permit it.

```Java
  /**
   * Remove a Thing from the Room. For convenience reasons this
   * method returns the Thing to remove.
   * @param thing the Thing to remove.
   * @return the Thing to remove.
   * @throws IllegalArgumentException if the Thing to remove is not present in the Room.
   * @throws NullPointerException - if thing is null.
   */
  public Thing removeThing(Thing thing) {
    // Check if thing is null, and if so,
    //   throw a new NullPointerException with a message
    // If we can remove the thing from our things-list,
    //   remove it and return the thing.
    // Otherwise (we couldn't remove it), throw
    // a new IllegalArgumentException with a message.
  }
```

### R4.3 putThing(thing : Thing) : void

Comment: Same as above. We don't want to permit stupid things like adding null to the room, or adding a thing which already exists in the Room. Better to crash the program so that people learn to do the right thing ;-)

```Java
  /**
   * Add a Thing to the Room. For convenience reasons this method
   * returns the Thing added.
   * @param thing the Thing to add.
   * @throws NullPointerException - if thing is null.
   * @throws IllegalArgumentException - if thing already exists in list of things
   */
  public void putThing(Thing thing) {
    // IF the thing is null, throw a new NullPointerException
    //   with a message.
    // If we already have the Thing in the room, throw a new
    //   IllegalArgumentException with a message.
    // Otherwise, add the thing to the rooms list of things.
  }
```

### R4.4 getRoom(direction : Room.Direction) : Room

```Java
  /**
   * Returns the connecting Room in the given direction 
   * @param direction the direction of the room we want.
   * @return connecting Room in the given direction.
   */
  public Room getRoom(Direction direction) {
    // Use a switch-case or an if-else-if statement
    // to decide what room to return.
    // You know the direction from the parameter,
    // so you should simply decide which of your
    // instance variables of connecting Room:s to
    // return.
  }
```

### R4.5 description() : String

```Java
  /**
   * Returns the Room's description
   * @return the Room's description
   */
  public String description() {
    // Return a String with the description for this Room
    // e.g. the instance variable holding this information.
  }    
```

### R4.6 toString() : String

```Java
  /**
   * Returns a String representation of the Room
   * @return a String representation of the Room
   */
  public String toString() {
    // Return a String describing this room.
    // Perhaps, the description and the list of things?
  }
```

## P1. The Player class
Package statement:
```Java
package se.itu.game.cave;
```
The Player class should be a Singleton (there should only ever be one Player instance in the Game).

In order to achieve that, you need to take some actions:

### P1.1 Create a private static Player instance called player:
```Java
  private static Player player;
```

### P1.2. Make the constructor of Player private, so that no one can create instances using "new":
```Java
  /**
   * private constructor to prevent instantiation.
   */
  private Player(Room room) {
    inventory = new ArrayList<Thing>();
    currentRoom = room;
  }
```
### P1.3. Create a public static method called getInstance which returns the reference to the only player:
```Java
  /**
   * @return the one and only instance of Player.
   */
  public static Player getInstance() {
    if (player == null) {
      player = new Player(CaveInitializer.getInstance().getFirstRoom());
    }
    return player;
  }
```

Now, Player is a "singleton" class. In order for e.g. the GUI to get hold of the player, the syntax is:

```Java
Player player = Player.getInstance();
```

Whenever and wherever that code is executed (in a single-threaded program), you will always get the same, one and only, player.

## P2. What instance variables does the player class need?
The player class needs to keep track of the current room in one variable (as shown by the lectures and the UML). And it needs
to keep track of the inventory with things. We suggest you use the following instance variables:
```Java
  private List<Thing> inventory;
  private Room currentRoom;
```
You'll need to import java.util.List and java.util.ArrayList. Look at the constructor again, to see why.

## P3. What public instance methods (what behavior should the player have, or what messages should we be able to send to the player) should the Player class have?

Follow the UML diagram!

Here they are (You'll need to figure out the code in the methods yourselves):
### P3.1 takeThing(thing : Thing) : void
```Java
  /**
   * Takes a thing (i e in a room) and puts in the inventory.
   * @param thing The Thing to take (pick up)
   */
  public void takeThing(Thing thing) {
    // Remove this thing from the current room
    // Add this thing to the inventory
  }
```

### P3.2 dropThing(thing : Thing) : void
```Java
  /**
   * Drop down a thing in the current room and remove it from the inventory.
   * @param thing the Thing to drop down.
   * @throws IllegalArgumentException if the Thing to remove is not present in the inventory.
   */
  public void dropThing(Thing thing) {
    // Check that we can drop this Thing, or
    //   throw a new IllegalArgumentException with messge
    // Remove this thing from the inventory
  }
```

### P3.3 inventory() : Thing[*]
```Java
  /**
   * Return the player's inventory
   * @return the inventory
   */
  public List<Thing> inventory() {
    // return a reference to the player's inventory
    
    // (or if you are fancy, a copy of it or a
    //  view of it which cannot be modified)
    // The last thing is "extra for the ambitious"
  }
```

### P3.4 currentRoom() : Room
```Java
  /**
   * Returns the current Room.
   * @return the current room.
   */
  public Room currentRoom() {
    // return a reference to the Player's current Room
  }
```
### P3.5 go(direction : Room.Direction) : void

Comment: For this one, you need to have a working Room class, so that you know how to ask a Room for the room in some direction.
```Java
  /**
   * Moves the player in given direction.
   * @param direction the direction in which to move the player.
   * @throws IllegalArgumentException - if the room in direction does not exist.
   */
  public void go(Direction direction) {
    // Ask the current Room for the Room in "direction" and save it
    // Check if the Room in that direction is null, and if so
    //  throw a new IllegalArgumentException with a message
    // If it wasn't null,
    //  change the Player's current Room to the Room above
  }
```

### P3.6 toString() : String
```Java
  /**
   * Returns a String representation of the player<br>
   * on the form currentRoom: [the room to String] inventory: [the inventory]
   * @return a String representation of the player
   */
  public String toString() {
    // return a string with information about e.g.
    // the current room and the whole inventory.
  }
```

Hint: If you convert a `java.util.List toString()`, either explictly or by using it together with a `String + theList`, you will get a nice String which could look something like this:

`[Bird, Cage, The Egg of Mantumbi]`

# cave-sprint-2
The source code and design documents for the Cave game according to Sprint 2

# Proposed workflow for implementing the new design changes
This is the proposed work flow (work in progress, check here often as this will be added to continously).
## Start with the new responsibilities for Player - then change the GUI
Add the following methods to the Player class:

```
+describeCurrentRoom() : String
+thingsInCurrentRoom() : Thing [*]
+canSeeDoorIn(direction : Room.Direction) : boolean
```

It is pretty straight forward what they should do. Remember that the rationale for these changes,
is that the GUI/UI shouldn't have to deal with the Player's current Room, but rather directly with the Player.

In each of the methods, just query the ```currentRoom``` variable for the thing to return.

When the Player compiles, implement these changes in the GUI. What places? The place in the GUI
where before, you used Player.getInstance().currentRoom() .

These are the places to look for:
```
$ grep -n 'currentRoom()' se/itu/game/gui/MainFrame.java
118:    Room currentRoom = player.currentRoom();
140:    for (Thing thing : player.currentRoom().things()) {
180:    roomInfo.setText(player.currentRoom().description());
184:    Room currentRoom = player.currentRoom();
```

## Add the new Exception classes
Implement the classes ```se.itu.game.cave.IllegalMoveException``` and ```game.itu.game.cave.RuleViolationException``` .

It's pretty straight forward - Let them extend Exception and add a constructor accepting a String message and in the constructor body,
simply call ```super(message);``` . See the lecture slides for the code examples.

## Change the Player's instance method go(Room.Direction direction)
Now, change the Player's instance method go(Room.Direction) so that it throws IllegalMoveException in its declaration. Also reflect this
in the javadoc for the method.

When Player compiles, reflect this change in the GUI. You need to add try-catch(IllegalMoveException e) in the places where you call "player.go(direction)".

```
$ grep -n 'go(' se/itu/game/gui/MainFrame.java
188:            player.go(dir);
```
## Implement the ThingRule interface
See the UML and the lecture slides for hints. The interface should declare one public abstract method:

```
/+apply() : boolean {exceptions=RuleViolationException}/
```

The UML syntax above means abstract and that it throws RuleViolationException

## Implement the RuleBook class
Write the class ```se.itu.game.cave.RuleBook``` which should have the following variables and methods:

```
_-rules: Map<Thing, ThingRule>_
--
_+addThingRule(thing : Thing, rule : ThingRule) : void_
_+getRuleFor(thing : Thing) : ThingRule_
```

That is, a private static Map<Thing, ThingRule> (you need to import java.util.Map and java.util.HashMap), and a public
static void addThingRule method which accepts a Thing and a ThingRule and adds them to the map using the method put(thing, rule), and finally a public static getRuleFor method which accepts a Thing and returns it using the method get(thing) on the map. See lecture slides for hints.

Don't worry about the adding of ThingRules to the map using the addThingRule method. It is done from the new version of CaveInitializer.java in this repository. And, yeah, now that you have both a RuleBook and the ThingRule interface, you should be able to compile both the CaveInitializer.java and the test class ThingRuleTest.java !

## Implement the new version of Player's takeThing so that it gets the ThingRule and applies it
Next, change the Player's instance method ```takeThing(Thing)``` so that it uses an if-statement which gets the corresponding ThingRule from the RuleBook and calls ```apply()``` inside the if-test.

In the if-block, do as before. See the lecture slides for hints.

Don't forget that according to the new design, takeThing(...) should now declare that it throws RuleViolationException, to force the GUI code to try-catch it.
## Verify that the ThingRuleTest passes
Use the ./build.sh script (if you are running bash) to build the whole project. Then use the ./run_tests.sh script to run the tests.

I you don't run bash (in Mac OS or Cygwin), you can look inside the scripts and do the same manually.
## Reflect the changes to takeThing in the GUI code
You should now change the GUI so that it uses try-catch to notice rule violations. Where to check? (note that line numbers have probably changed now that you've added stuff, but originally it was this):
```
$ grep -n 'takeThing(' se/itu/game/gui/MainFrame.java
230:          Player.getInstance().takeThing(thing);
```

I you don't run bash (in Mac OS or Cygwin), you can look inside the scripts and do the same manually.
## Verify that the GUI works with the rules check and everything.
Run the gui (how to is included in the script ./run_gui.sh ) and verify that everything works.
To be continued and/or updated. Stay tuned!

# Important notice regarding the run_tests.sh and build.sh files
If you run build.sh or run_tests.sh after changing the Player, the old tests won't compile.

Please carefully read the error messages from javac and fix also the test files to use the new methods of the Player class. Specifically the messages which throw exceptions (or new kinds of exceptions) like go(direction) and takeThing(thing).

# cave-sprint-3
Stubs and give-aways for Sprint 3 of the Cave Game (TIG059)

# Suggested work-flow
## Start by writing (finishing) the RoomRule class
We have provided you with a stub for the RoomRule class, with some pieces missing.

If you want to try and write the whole thing from scratch, just remove our RoomRule.java file.

_se.itu.game.cave.RoomRule_

The above means that RoomRule is an abstract class.

### Add instance variables
Add an instance variable for storing the Room reference of the RoomRule. You may use the following UML as an inspiration:
```
#room : Room
```

Add an instance variable for storing the creature description (e.g. "There's a snake here"). You may use the following UML as an inspiration:
```
#creatureDescription : String
```
### Write/finish the methods and constructor
#### Constuctor
For the constructor, you may use the following UML as an inspiration:
```
<<constructor>>
+RoomRule(room : Room, creatureDescription : String)
```

Optionally, you may choose to make the constructor protected. For an abstract class, it doesn't matter whether it is public or protected - can you see why?

In the body of the constructor, make sure that this RoomRule (being initialized by the constuctor) stores the arguments in its instance variables.
#### apply() method
Write (or finish) the abstract method apply(). An abstract method has the abstract keyword and uses a semicolon instead of the curly braces where the method body usually is.

_apply() : void_
#### changeCreatureDescription
UML:
```
changeCreatureDescription(newDescription : String) : void
```
This method is concrete and should change the creatureDescription instance variable.
#### creatureDescription
```
+creatureDescription() : String
```
This method should do two things:
1. call apply()
2. return the creatureDescription for this RoomRule (which might have been changed by the apply() method)

Note that this is a concrete method with an actual method body which contains the two statements listed above. It might be interesting for you to see that it is possible for a concrete method in an abstract class to call an abstract method. Can you explain why this is legal? Such methods (concrete methods calling abstract methods) are sometimes called virtual methods.
## Finish the RuleBook class
We need a place for the CaveInitializer to store the RoomRules, and what better place to do this than the good old RuleBook?

### Instance variable roomRules
Create a static private Map<Room, RoomRule> called roomRules and initialize it to a new HashMap<>.

This will be used to store the RoomRules together with their corresponding Room.

### Write or finish the addRoomRule(Room room, RoomRule rule)
UML:
__```+addRoomRule(room : Room, rule : RoomRule) : void```__

As you see, it is a static public void method, wich accepts a Room and a Room rule. Your task is to accept these arguments and store them in the roomRules map. It will be the CaveInitializer class which adds the rules for the room using this method.

### Write or finish getRuleFor(Room room)
UML:
__```+getRuleFor(room : Room) : RoomRule```__
This method is for getting the RoomRule for a certain Room. For instance Player will need to get the RoomRule for its current Room in the describeCurrentRoom and dropThing methods.

The method should start by getting the RoomRule for the room argument from the roomRules map and store it in a local variable rule of type RoomRule. If it is null, this means that there is no RoomRule for the Room in question. You should then (in an if-statement for instance) assign a default room rule to the ```rule``` variable. How can we create a default RoomRule (which does nothing in its apply() and has an empty String for the creatureDescription)?

One way is to use an anonymous inner class (check CaveInitialzer and the addRules method in this repository).

Another way is simply to write a new RoomRule class called e.g. DefaultRoomRule:
```Java
package se.itu.game.cave;

public class DefaultRoomRule extends RoomRule {
  public DefaultRoomRule() {
    // Call the constructor in the super class
    // so that it stores the room and creatureDescription
    super(null, "");
    // Use null - we don't care to store the Room - and "" - we have no description
  }

  @Override
  public void apply() {} // Do nothing!
}
```
If the rule we got from the map wasn't null, it means that there was a RoomRule for this Room. So after the if-statement, return rule (which is now either an actual RoomRule for this Room, or a new DefaultRoomRule of some kind).
## Finish/change Player
In the Player class, make use of the RoomRule in the dropThing(Thing) method and the describeCurrentRoom() method.

In the describeCurrentRoom() method, get the RoomRule for the currentRoom from the RuleBook. Use this rule to append some text to the String you are returning - something like:
```Java
   return currentRoom.description() + "\n" + rule.creatureDescription();
```

In the dropThing(Thing) method, get the RoomRule for the currentRoom from the RuleBook, and run apply on it after actually dropping the thing.
## Fix the GUI InventoryListener so that it updates the whole GUI after someone clicked on a thing in the inventory (meaning "drop it!").

Replace the call to updateModels() to updateGui();

Make sure that in the updateGui() method, the call to roomInfo.setText(player.describeCurrentRoom()); happens before updating anything else, because the describeCurrentRoom() method triggers the RoomRule - so if, for instance, a new Door appears, this must happen before we update the navigation buttons!

## Test that the RoomRule works
If you want to test the RoomRule for the snake room and the dragon room, you must know your way around the cave. See the maps in the PDFs from TIG058, Assignment 01 (can be acquired from the teachers).

Here's a quick cheat-sheet:
You can find your way to the Snake Room like this (make sure you pick up the Bird and Cage on the way, because you will put them down to get rid of the Snake!):

From the first room in the game:
1. South, South, South, South
2. West, pick up the cage, West, West, West, pick up the bird
3. West, South, South, put down the bird and cage - a south room appears!
4. South, pick up the Jewelry (you’ll need it to bribe the dragon)
5. North, North, East, pick up the gold, West, pick up the Silver,
6. East, South, North, West, West, Pick up the Diamonds,
7. South, East, West - put down Gold, Silver, Jewelry and Diamonds and watch the dragon steal them and a Glass Key appear.

If the above leads you wrong, double check with the PDF maps (can be handed out by the teachers)!
