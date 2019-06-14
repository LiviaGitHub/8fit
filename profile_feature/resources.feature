Feature: As a user,

  With.

  Background:
    Given User Profile is already created with the goal to be achieved.
    And User must be on the profile screen.

  Scenario: Check Recipe book resource
    When User scroll to the middle of the page
    Then "Resources" with Recipe book must be visible
    When User tap "Recipe book"
    Then Some recipes should be visible.
    #note: I'm not a member, I can not see how this page looks like.
