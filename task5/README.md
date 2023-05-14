# Task 5: SQL Injection

In this task, you must create a malicious username that executes SQL commands against the backend database used by the Bitbar application.

The grader will create a new user account with your provided username, click on “Close” and then confirm that they want to close the current account. As a result, `user3` should be deleted from the database. The new user account should also be deleted to leave no trace of the attack behind. All other accounts should remain.

You may assume that all other usernames in the database besides the one you create are “non-malicious”. More specifically, you can assume they will not contain spaces.

**Deliverable and Grading.** A text file `e.txt` containing your malicious username. The grader will Close the account, then verify that the malicious account and user3 have been removed from the database.

*Tip:* If you mess up the user database while working on the problem, simply kill (ctrl-C) the Docker container and restart the server to reset the database.
