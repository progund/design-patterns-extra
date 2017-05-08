package se.itu.game.cave;

/**
 * <p>
 * Represents a RoomRule for the game.
 * </p>
 * <p>
 * Could be a rule for some kind of creature in a room, with
 * magic properties.
 * </p>
 */
public abstract class RoomRule {

  /* Add two protected instance variables here.
   *
   * One String for the creatureDescription and
   * one Room for the Room this RoomRule applies to.
   */
  

  /**
   * Creates a new RoomRule.
   * @param room The Room this rule applies to
   * @param creatureDescription The description of this rule, e.g. "A Snake blocks the South exit"
   */
  public RoomRule(Room room, String creatureDescription) {
    /* Save the parameters in the appropriate instance variables */
  }

  /**
   * Applies this RoomRule - will possibly effect the creatureDescription,
   * make stuff magically appear, or even Doors to new Rooms appear.
   */
  public abstract void apply();

  /**
   * <p>
   * Changes the creatureDescription. Could be used when the rule has taken effect.
   * </p>
   * @param newDescription The new description of the creature.
   */
  public void changeCreatureDescription(String newDescription) {
    /* Change the creatureDescription here! */
  }

  /**
   * <p>Returns the creatureDescription about this Rule, e.g. "A Snake blocks...".</p>
   * <p>This method will automatically apply the rule before returning the description.</p>
   * @return The creatureDescription of this RoomRule, e.g. "A Dragon stands in the Room"
   */
  public String creatureDescription() {
    /* Call apply() and return the creatureDescription 
     * here...
     */
    return "";
  }
  
}
