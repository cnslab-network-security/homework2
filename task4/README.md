# Task 4: Making Fake Bitbars Using Cookies

In this task, your goal is to create 1 million new Bitbars through **forging**, rather than stealing them from other users. You need to create a JavaScript exploit that can increase your account balance to 1 million Bitbars by completing a small transaction, such as sending 1 Bitbar to `user1`.

To start this attack, create a new user account. Since you have big plans for this account, a starting balance of 100 Bitbars won't suffice for your intentions.

Similar to Task 3, your solution is Javscript code (`d.txt`) that can be copied and pasted into your browser’s JavaScript console when logged into your new account. After pasting this code into the console, conducting a small transaction should increase your account balance to 1 million Bitbars.

**Important!** The new balance must persist between sessions. After logging out and back into the account, the balance should be 1 million Bitbars. The objective is to forge 1 million Bitbars without affecting other users. The transaction should look completely valid to the innocent recipient. 

**Deliverable and Grading.** You will submit a text file `d.txt` containing your exploit code. The grader will create a new account, paste this code into the browser console, send 1 Bitbar to another user, and verify that the new account contains 1 million Bitbars.

**Hint:** Is it possible to interpret a cookie and modify its values?
