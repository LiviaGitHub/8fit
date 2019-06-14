#1 - Take a few minutes to explore the Profile Tab of the 8fit App.9
#2 - Write a detailed Test Suite (~5-10 test cases) for any section of this tab.
#3 - Document 2 bugs (functional / usability) you found while executing your test suite.
#4 - Briefly explain (100 words or less): After this bug is fixed, how would you ensure
#    that the same issue is not introduced again in the future?
#5 - One of the Customer Support Agents tell you that some users are seeing the
#    following issue: Since they completed a workout, the “Your Activity”
#    calendar in Profile is covered by a spinning loading animation that never disappears,
#    and the calendar never loads. Briefly document how you would troubleshoot/investigate
#    this issue, and how you would identify the root cause.

Feature: As a user, I need to have a profile.

  With Profile screen, users are able to see their activities, a calendar,
  workouts sum, resources like recipe and exercise library, user's fitness plan
  and user's target values like target weight and target calories.

  Background:
    Given User Profile is already created with the goal to be achieved.
    And User must be on the profile screen.

  Scenario: Check user fitness plan
    When User scroll the page to the end
    Then "My fitness plan" and "modify" should be visible
    Then Goal, Exercise, Initial weight, Body type, Initial body fat and
    Target body fat should be visible.

  Scenario: Check user fitness plan
    When User scroll the page to the end
    Then "My target values" with Target weight and Target calories must be visible.
    When User tap "Target weight"
    Then A window opens with information about the target weight
    When User Click on OK
    Then The window closes
    When User tap "Target calories"
    Then A window opens with information about the target calories
    When User Click on OK
    Then The window closes

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
    Given User must have complete at least one workout.
    Then The sum of the completed "workouts" should be visible
    When Check the sum of the exercises in the calendar
    Then On each day the user completed a workout, a blue ball should be displayed.
         The number of blue balls should be the same in "workouts"
