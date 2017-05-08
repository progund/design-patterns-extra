package se.itu.game.cave;

import se.itu.game.cave.Room.Direction;
import se.itu.game.cave.init.CaveInitializer;

import java.util.List;
import java.util.ArrayList;

/**
 * Represents a Player in the game
 */
public class Player /* does not extend People */ {

  private static Player player;
  private List<Thing> inventory;
  private Room currentRoom;
    
  /**
   * private constructor to prevent instantiation.
   */
  private Player(Room room) {
    inventory = new ArrayList<Thing>();
    currentRoom = room;
  }

  /**
   * Takes a thing (i e in a room) and puts in the inventory.
   * @param thing The Thing to take (pick up)
   * @throws A RuleViolationException if the player isn't allowed
   * to pick the Thing up
   */
  public void takeThing(Thing thing) throws RuleViolationException {
    if (RuleBook.getRuleFor(thing).apply()) {
      currentRoom.removeThing(thing);
      inventory.add(thing);
    }
  }

  /**
   * Drop down a thing in the current room and remove it from the inventory.
   * @param thing the Thing to drop down.
   * @throws IllegalArgumentException if the Thing to remove is not present in the inventory.
   */
  public void dropThing(Thing thing) {
    if (!inventory.remove(thing)) {
      throw new IllegalArgumentException("Can't remove: " + thing);
    }
    currentRoom.putThing(thing);
    // Get the RoomRule for the current Room and apply it
    // HERE!!!!!!!!!!!!
  }
    
  /**
'   * Return the player's inventory
   * @return the inventory
   */
  public List<Thing> inventory() {
    return inventory;
  }
    

  /**
   * @return the one and only instance of Player.
   */
  public static Player getInstance() {
    if (player == null) {
      player = new Player(CaveInitializer.getInstance().getFirstRoom());
    }
    return player;
  }

  /**
   * Returns the current Room.
   * @return the current room.
   */
  public Room currentRoom() {
    return currentRoom;
  }
        
  /**
   * Moves the player in given direction.
   * @param direction the direction in which to move the player.
   * @throws IllegalMoveException - if the room in direction does not exist.
   */
  public void go(Direction direction) throws IllegalMoveException {
    Room newRoom = currentRoom.getRoom(direction);
    if (newRoom == null) {
      throw new IllegalMoveException("No Room to the " + direction);
    }
    currentRoom = newRoom;
  }

  /**
   * Returns a description of this Player's current Room.
   * @return A String with the description of this Player's current room
   */
  public String describeCurrentRoom() {
    // Get the RoomRule from RuleBook here
    // ...
    // Use this string to store the rule's creatureDescription!
    String creatureDescription = "\n";
    //// Add the rule's creatureDescription to the String at the end!!
    return currentRoom.description() + creatureDescription; 
  }

  /**
   * Returns a List&lt;Thing&;gt with the things in this Player's current Room.
   * @return A List&lt;Thing&;gt with the things in this Player's current Room
   */
  public List<Thing> thingsInCurrentRoom() {
    return currentRoom.things();
  }

  /**
   * Returns a boolean value for whether this Player can see a door in a given direction.
   * @return A boolean value for whether this Player can see a door in a given direction
   */
  public boolean canSeeDoorIn(Direction dir) {
    return currentRoom.getRoom(dir) != null;
  }
  
  /**
   * Returns a String representation of the player<br>
   * on the form currentRoom: [the room to String] inventory: [the inventory]
   * @return a String representation of the player
   */
  public String toString() {
    return "currentRoom: " + currentRoom + 
      " inventory: " + inventory ;
  }
}
