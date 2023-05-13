# Task 3: Session Hijacking with Cookies

In the third attack, you need to trick the Bitbar application into thinking you’re logged in as a different user by hijacking the victim’s session cookie. At the start of the attack, you will be logged in as `attacker` and you need to convince Bitbar into believing that you are `user1` instead of `attacker` so that you can transfer `user1`’s Bitbar into your attack.

Your solution will be a Javscript file (`c.txt`) that can be copy/pasted into your browser’s Javscript console. After executing your Javscript in the Console, Bitbar should show that `user1` is logged in, instead of the `attacker` account, and you should be able to transfer 10 Bitbar from `user1` to `attacker` in the web UI.

The password for the user `attacker` is `evil` and for the user `user1` is `one`.

**Deliverable and Grading.** You must submit a file `c.txt` containing the JavaScript to be executed in the Javascript console. You can assume that the grader will run your attack while the database has the original `user1` with 200 Bitbars. After running this JavaScript and refreshing the page, the application must be logged in as `user1` and must allow the grader to transfer Bitbar into the attacker account.

**Hint:** How does the site store its sessions?
