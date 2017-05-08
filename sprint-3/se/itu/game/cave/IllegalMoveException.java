package se.itu.game.cave;

/**
 * <p>
 * Represents the exception for when a Player moves
 * in a Room.Direction where there is no connecting Room.
 * </p>
 * <p>
 * This is a checked exception, which will draw the attention
 * of the GUI developers - so that they will be forced to thing
 * about what to do if there is no Room in a particular direction.
 * </p>
 * <p>
 * Previously, the GUI developers had to check if the Room in some
 * direction was <code>null</code> in order to prevent movement.
 * But since no exception was thrown if they forgot to check,
 * actually clicking e.g. the north navigation button if there
 * was no north Room, would eventually lead to a NullPointerException.
 * </p>
 * <p>
 * With the new design for Sprint 2, making Player's go() method
 * declared as <code>throws IllegalMoveException</code> will
 * efficiently make all UI developers think about checking
 * what directions are possible before trying to move in a bad direction.
 * </p>
 *
 * @since Sprint 2
 */
public class IllegalMoveException extends Exception {

  /**
   * Constructs a new IllegalMoveException, ready to be thrown.
   */
  public IllegalMoveException(String message) {
    super(message);
  }
}
