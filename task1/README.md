# Task 1: Cookie Stealing

In the first attack, your goal is to steal the logged in user’s Bitbar session cookie and send it to an attacker controlled URL. You need to create URL starting with: `http://localhost:3000/profile?username=` that sends the stolen cookie to `http://localhost:3000/steal cookie?cookie=[stolen cookie here]` when visited. When the attack is successful, the server will log the stolen cookie to the terminal output.

**Important!** The attack should not be visibly obvious to the user. This means there should no changes to the site’s appearance and no extraneous text should be visible. Except for the browser location bar (which can be different), the grader should see a page that looks normal when the grader visits their profile.

Avoiding the blue warning text stating that a user is not found is an important part of the attack. It is fine if the number of Bitbars displayed or the contents of the profile are not correct (so long as they look "normal"). It’s also fine if the page looks weird briefly before correcting itself.

**Deliverable and Grading.** You need to submit a file named `a.txt` that contains only your malicious URL. The grader will be logged in to Bitbar as `user1` and will be on the Profile tab. From here, the grader will copy your URL on the address bar and navigate to it. You can verify that your solution works by looking for the stolen cookie in your terminal output.

**Hint:** Try adding random text to the end of the URL. How does this change the HTML of the page?
