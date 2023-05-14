# Task 6: Profile Worm

In this task, you need to develop a Worm, similar to the [Samy Worm](https://en.wikipedia.org/wiki/Samy_(computer_worm)), which steals Bitbar and spreads to other accounts. You specifically need to construct a profile that when visited transfers 1 Bitbar from the logged-in user to `attacker` and replaces the profile of the current user with itself. 

If the `attacker` user changes their profile to whatever you provide in your solution, the following should happen:
1. When `user1` views `attacker`’s profile, 1 Bitbar will be transferred from `user1` to `attacker`, and `user1`’s profile will be replaced with your solution profile.
2. Later, if `user2` views `user1`’s profile, 1 Bitbar will be transferred from `user2` to `attacker`, and `user2`’s profile will be replaced as well, and so on.

When viewing an infected profile, the number of Bitbars should appear to be 10, regardless of the corresponding user’s true bitbar balance. This also applies to the `attacker`. Some tips as to how to display the Bitbars for infected profiles and for building your attack:
* There is no problem if infected profiles display 10 Bitbars immediately instead of counting up to 10.
* There is no problem if the number of Bitbars the worm displays for infected users counts up to 10.
* There IS a problem if, for example, the count is first set to 100, and then set to 10.
* There is no problem if a newly-infected user only sees the exploit text in their profile after they have logged out and logged back in again.
* There is no problem if the exploit is triggered when the `attacker` sees their own infected profile.

The transfer and application should be reasonably quick (under 15 seconds). During that time, the grader will not click anywhere. During the transfer and replication process, the browser’s location bar should remain at: `http://localhost:3000/profile?username=x` where `x` is the user whose profile is being viewed. The visitor should not see any extra graphical user interface elements (e.g. frames), and the user whose profile is being viewed should appear to have 10 Bitbars.

**Deliverable and Grading.** A file named `f.txt` containing your malicious profile. We will copy and paste your profile text into `attacker`’s profile and view that profile using the grader’s victim account. We will then view the victim’s profile profile with more accounts, checking for the transfer and replication. You will not be graded on the corner case where the user has no Bitbar in their account.
