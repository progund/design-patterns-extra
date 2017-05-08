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
If you want to test the RoomRule for the snake room and the dragon room, you must know your way around the cave. See the maps in the PDFs from TIG058, Assignment 01.

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

If the above leads you wrong, double check with the PDF maps!
