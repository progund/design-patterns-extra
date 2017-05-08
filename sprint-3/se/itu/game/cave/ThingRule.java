package se.itu.game.cave;

public interface ThingRule {

  public boolean apply() throws RuleViolationException;
  
}
