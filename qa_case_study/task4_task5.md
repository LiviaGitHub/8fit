# Task 4: Briefly explain (100 words or less): After this bug is fixed, how would you ensure that the same issue is not introduced again in the future?

* Check all bugs with a unit test.

* Prepare regression suit for application. Main business processes/use cases, happy paths. Create a baseline. Set of tests that should not fail. Run it always before a release or when big changes are made, when multiple are made, when critical paths are modified. Put some effort to automate it (and this time I'm not talking about unit tests, but full end to end tests).

* The qa team can check the bugs repository as the team begins testing for some new requirement/functionality. The team should check for previous errors that may be relevant to being retested.

# Task 5: One of the Customer Support Agents tell you that some users are seeing the following issue: Since they completed a workout, the “Your Activity” calendar in Profile is covered by a spinning loading animation that never disappears, and the calendar never loads. Briefly document how you would troubleshoot/investigate this issue, and how you would identify the root cause.

* Collect data about the user environment. Check which version of the application the customer is using and smartphone model.

* Indentify the problem and create a test to reproduce the issue.

* Check the latest changes in the application until the issue appears. Establish a timeline from the normal situation to the time the issue occurred.

* Check the bugs repository, the issue may a be regression bug.

* Add this new issue to the bugs repository.
