# Network Security Lab #2

## Due Date: 2023 June 4

## Introduction
In this lab, you will construct several attacks against a web application. You will specifically be attacking **Bitbar**, a Node.js webapp that lets users manage Bitbars, a new ultra-safe cryptocurrency. Each user is given 100 Bitbars when they register for the site. They can transfer Bitbars to other users using the web interface, as well as create and view other user profiles. 

You have been given the source code (in `code` directory) for the Bitbar application. Real attackers generally do not have access to the source of a target website, but the source may make finding the vulnerabilities a bit easier. Bitbar is powered by a collection of Node packages, including the Express.js web application framework, a SQLite database, and EJS for HTML templating. At the end of this document, you can find the links for more information on these packages as well as other information that you can use as a reference.

## Setup Instructions

You will run the Bitbar application in a provided Docker container. When the server is running, the site is accessible at http://localhost:3000.

### Browser

We will grade using the latest version of [Mozilla Firefox](https://www.mozilla.org/ko/firefox/new/), and we strongly recommend you test your attacks in Firefox. Chrome has introduced aggressive browser side XSS guards, which may make some attacks unfeasible if you use Chrome.

**IMPORTANT**: One of the attacks we ask you to implement is a cross-site request forgery—this relies on cross-site requests including the logged in user’s cookies. Firefox now defaults to a new privacy setting that blocks these cross-site cookies. In order to successfully complete your attacks, you will need to (at least temporarily) turn this setting off.

1. Open the Privacy & Security (개인 정보 및 보안) tab in Firefox settings
2. Change the Enhanced Tracking Protection (향상된 추적 방지 기능) to Custom (사용자 지정)
3. Under Cookies, select Cross-site tracking cookies (교차 사이트 추적 쿠키).
4. If you use Firefox as your regular browser, it’s good practice to reverse this setting when browsing normally.

### Detailed Setup Instructions

Your web server will run in a Docker container. The following instructions will walk you through installing Docker, and the container.

1. Install (and open) Docker Desktop on your local machine from https://docs.docker.com/get-docker/ (if you haven't installed Docker desktop yet.)
2. Download or clone this code repository to your local directory.
3. Open the Git Bash and navigate to the directory to run ```bash build_image.sh```. This builds your Docker image and installs all necessary packages.
4. To start the server, run ```bash start_server.sh```. Once you see `$ ./node modules/babel-cli/bin/babel-node.js ./bin/www`, the Bitbar application should be available in your browser at http://localhost:3000.
* You can close the server by pressing Ctrl+C in the terminal. The server will completely reset every time that you shut it down. To restart the server with a clean database, just run `bash start_server.sh` once again.

## Lab Description

You will develop a series of attacks against the Bitbar application (from task 1 to task 6). In each task directory, we describe what inputs you will need to provide to **the grader** (i.e., prof Jinwoo Kim), and what specific actions the grader will take using your input. All of your attacks should assume that the site is accessible at the URL http://localhost:3000.

Note that we provide a few initial accounts in `code/db/migrate/002-add-initial-users.sql`. For example, one given account has username `user1` and password `one`. While you’re welcome to create additional accounts, these are the accounts referenced in the ”Deliverable and Grading” portion of each exploit that the grader will use to run your exploit. Note that you can use external libraries if you need, such as jQuery, but you need to include suitable code for that.

## Writing-up
You need to write a report to describe how you implement your exploit and resolve challenges. You can use any tool for writing, such as Word and 아래아한글, but you must submit a .pdf file, whose name should be ```your_student_number.pdf```.

## Submission
* Compress the deliverable file for each task with your report.
* The compressed file should be ```lab2_your_student_number.zip```. You must submit your this file to KLAS.

* When we unzip your submission, we expect to see the following 7 files:
  * `your_student_number.pdf`
  * `a.txt`
  * `b.html`
  * `c.txt`
  * `d.txt`
  * `e.txt`
  * `f.txt`

## Reference

* HTML, CSS, JavaScript: http://www.w3schools.com/
* Node.js (Bitbar uses version 9.11.1): https://nodejs.org/dist/latest-v9.x/docs/api/
* Express JS (The web framework that powers Bitbar in app.js): https://expressjs.com/en/4x/api.html
* EJS for HTML Templating (See .ejs files within views/): http://ejs.co/#docs
* XSS: https://www.owasp.org/index.php/XSS_Filter_Evasion_Cheat_Sheet
* SQL: http://www.w3schools.com/sql/, https://github.com/kriasoft/node-sqlite (package Bitbar uses)

## Acknowledgement
This homework has been borrowed from Standford CS155.
