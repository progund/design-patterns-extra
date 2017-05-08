package se.itu.game.cave;

import java.util.HashMap;
import java.util.Map;

/**
 * Represents the rule book for the things and special rooms in the Game. This is
 * where to look to get the rules for picking a thing up, or for rules about Dragons and Snakes.
 */
public class RuleBook {

  private static Map<Thing, ThingRule> rules = new HashMap<>();
  /* TODO: Create a static Map<Room, RoomRule> which will hold
   * the RoomRule:s using Room as the key. You may use HashMap
   * as the concrete Map type, just like the one above.
   */

  /* Prevent instantiation */
  private RuleBook() {
    
  }

  /**
   * Provides a way to add new Rules for Things.
   * @param thing The Thing for which a rule is added
   * @param rule The ThingRule for the Thing
   */
  public static void addThingRule(Thing thing, ThingRule rule) {
    rules.put(thing, rule);
  }

  /**
   * Provides a way to add new Rules for Rooms.
   * @param room The Room for which a rule is added
   * @param rule The RoomRule for the Thing
   */
  public static void addRoomRule(Room room, RoomRule rule) {
    /* TODO: Store this Room-RoomRule pair in the hashmap
     */
  }

  /**
   * Allows people to look up a ThingRule for a Thing. If there is
   * no rule for a Thing, the ThingRule will always allow the thing
   * to be picked up - and no exception will be thrown from the rule.
   * @return The ThingRule for the requested Thing
   * @param thing The Thing for which you want to look up the ThingRule
   */
  public static ThingRule getRuleFor(Thing thing) {
    ThingRule rule = rules.get(thing);
    if(rule == null) {
      rule = () -> { return true; };
    }
    return rule;
  }
  
  /**
   * Allows people to look up a RoomRule for a Room. If there is
   * no rule for a Room, the RoomRule will always do nothing when
   * applied, and the creatureDescription will always be empty.
   * @return The RoomRule for the requested Room
   * @param room The Room for which you want to look up the RoomRule
   */
  public static RoomRule getRuleFor(Room room) {
    /* TODO:
     * Change the statement below so that it gets the
     * RoomRule from the hashmap instead.
     */
    RoomRule rule = null;
    // If the RoomRule wasn't in the HashMap, it will be null.
    // Check if rule is null, and if so, return a new
    // RoomRule with an empty creatureDescription and an apply()
    // method which does nothing.
    return rule;
  }
  
}
