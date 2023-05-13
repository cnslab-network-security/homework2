# Task 2: Cross-Site Request Forgery

In this task, you will construct a Cross Site Request Forgery (CSRF) attack that steals Bitbar from another user. You will specifically build a malicious website, which, when visited by the victim, steals 10 Bitbars from their account and deposit’s them into your attacker account.

Your submitted attack is a self-contained HTML page (`b.html`) that transfers 10 Bitbars from the grader’s logged in account to the user attacker. As soon as the transfer is complete, your attack site should immediately redirect the user to `https://www.kw.ac.kr`. This should happen fast enough that normal users won’t notice.

**Important!** The location bar of the browser should never contain `localhost:3000` at any point, as this might make the victim notice the attack.

**Deliverable and Grading.** You need to submit a single self-contained HTML file `b.html` that contains your exploit. The grader will be logged in to Bitbar before loading `b.html` on a web browser. The grader will check that (1) 10 Bitbars are transferred out of their account to the attacker, (2) the attacker site immediately redirects to the Kwangwoon University website, and (3) the web browser never directly visits `localhost:3000`.
