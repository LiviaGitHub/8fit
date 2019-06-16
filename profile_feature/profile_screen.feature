Feature: As a user, I need to have a profile.

  With Profile screen, users are able to see their activities, a calendar,
  workouts sum, resources like recipe and exercise library, user's fitness plan
  and user's target values like target weight and target calories.

  Background:
    Given User Profile is already created with the goal to be achieved
    And User must be on the profile screen

  Scenario: Check user fitness plan
    When User scroll the page to the end
    Then "My fitness plan" and "modify" should be visible
    And Goal, Exercise, Initial weight, Body type, Initial body fat and
    Target body fat should be visible

  Scenario: Check user target values
    When User scroll to the bottom of the page
    Then "My target values" with Target weight and Target calories must be visible
    When User tap "Target weight"
    Then A window opens with information about the target weight
    When User close the window by clicking "ok"
    Then The window is closed and the Profile screen is displayed
    When User tap "Target calories"
    Then User a window opens with information about the target calories
    When User close the window by clicking "ok"
    Then The window is closed and the Profile screen is displayed

  Scenario: Check the calendar
    Then "Your activity", "View all" and calendar are visible
    And The current month and date are selected by default
    When User tap the left arrow
    Then The previous month is displayed
    When User Tap the right arrow
    Then The next month is displayed
    When User tap "View All"
    Then All months of the current year are displayed
    When User Tap the arrow at the top of the screen
    Then Profile screen is displayed

  Scenario: Check the workout record
    Given User must have complete at least one workout
    Then The "Workouts" information below the user name must be visible
    And The sum of the completed exercises should be visible
    When User check the sum of the exercises in the calendar
    Then On each day the user completed a workout, a blue ball should be displayed.
    The number of blue balls should be the same in "workouts"
