# homework2

Note: this homework has been borrowed from Standford CS155.

## Introduction
In this project, you will construct several attacks against a web application. You will specifically be attacking **Bitbar**, a Node.js webapp that lets users manage Bitbars, a new ultra-safe cryptocurrency. Each user is given 100 Bitbars when they register for the site. They can transfer Bitbars to other users using the web interface, as well as create and view other user profiles. You have been given the source code for the Bitbar application. Real attackers generally do not have access to the source of a target website, but the source may make finding the vulnerabilities a bit easier. Bitbar is powered by a collection of Node packages, including the Express.js web application framework, a SQLite database, and EJS for HTML templating. The list of resources in the next section includes links for more information on these packages as well as other information that you can use as a reference.

## Setup Instructions

You will run the Bitbar application in a provided Docker container. When the server is running, the site is accessible at http://localhost:3000.

### Browser

We will grade using the latest version of [Mozilla Firefox](https://www.mozilla.org/ko/firefox/new/), and we strongly recommend you test your attacks in Firefox. Chrome has introduced aggressive browser side XSS guards, which may make some attacks unfeasible if you use Chrome.

**IMPORTANT**: One of the attacks we ask you to implement is a cross-site request forgery—this relies on cross-site requests including the logged in user’s cookies. Firefox now defaults to a new privacy setting that blocks these cross-site cookies. In order to successfully complete your attacks, you will need to (at least temporarily) turn this setting off.

1. Open the Privacy & Security (개인 정보 및 보안) tab in Firefox settings
2. Change the Enhanced Tracking Protection (향상된 추적 방지 기능) to Custom (사용자 지정)
3. Under Cookies, select Cross-site tracking cookies (교차 사이트 추적 쿠키).
4. If you use Firefox as your regular browser, it’s good practice to reverse this setting when browsing normally.
