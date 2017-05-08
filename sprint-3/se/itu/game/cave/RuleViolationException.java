package se.itu.game.cave;

/**
 * <p>
 * Represents the exception for when a Player tries to pick
 * up a Thing from a Room but there is a ThingRule in the
 * RuleBook forbidding the Player to pick it up.
 * </p>
 *
 * @since Sprint 2
 */
public class RuleViolationException extends Exception {

  /**
   * Constructs a new RuleViolationException, ready to be thrown.
   */
  public RuleViolationException(String message) {
    super(message);
  }
}
