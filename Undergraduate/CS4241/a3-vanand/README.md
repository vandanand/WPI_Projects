Assignment 3 - Persistence: Two-tier Web Application with Flat File Database, Express server, and CSS template
===

Readme 
---

## Budget Your Next Roadtrip!

https://a3-vanand23.glitch.me/

This project aims to help people who want to plan for a roadtrip be more cost efficient and save money, particularly on gas.

- The project pertains to saving money on gas while on a road trip
- The challenge is that many people do not realize how much they could save on gas during a long road trip. This application does all the math for you.
- The authentication strategy I used was the local strategy method using passport and the database I used was lowdb because it was simple to learn and utilize because of its thorough documentation.
- I used Bootstrap as my CSS template because it is one the most popular and widely used templates for implementing websites and has a lot of documentation for different styles. 
  - The modification I made in the custom CSS template (`style.css`) is inlcuding the background picture to make the site more visually appealing and make it more intuitive for the user to know they are looking at a website focusing on roadtrips. 
- The Express middleware packages I used are: 
  - Session: Establish server-based sessions.
  - Passport: Authentication using “strategies” such as OAuth, OpenID and many others. 
  - Body-Parser: Parse HTTP request body.
  - Serve-Static: Serve static files.
  - Cookie-Parser: Parse cookie header and populate req.cookies.
  - Helmet: Helps secure your apps by setting various HTTP headers.
  
- Existing User Login Information:
  - Username: vandana, Password: hello
  - Username: bob, Password: jacksonhill

Requirements Satisfied
---

- a `Server`, created using Express. ✓
- a `Results` functionality which shows the entire dataset residing in the server's memory. ✓
- a `Form/Entry` functionality which allows users to add, modify, and delete data items associated with their username / account. ✓
- Use of at least five [Express middleware packages](https://expressjs.com/en/resources/middleware.html). ✓
- Basic authentication using the [Passport middleware](http://www.passportjs.org) for Express using the Local strategy. ✓
- Persistent data storage in between server sessions with [lowdb](https://github.com/typicode/lowdb). ✓
- Use of a [CSS framework or template](https://github.com/troxler/awesome-css-frameworks). ✓

HTML:
- HTML input tags and form fields of various flavors. ✓
- HTML that can display all data *for a particular authenticated user*. ✓

CSS:
- CSS styling should primarily be provided by your chosen template/framework (used Bootstrap) ✓

JavaScript:
- Front-end JavaScript to get / fetch data from the server. ✓

Node.js:
- A server using Express, at least five pieces of Express middleware, and a persistent database. ✓


## Technical Achievements
- **Tech Achievement 1**: Created additional funtionalities such as a logout button so that users can get back to the login screen and a cancel registration button so that if users accidently clicked on he register button, they have the option to go back to the login screen. 
- **Tech Achievement 2**: Error checking to check if passwords match when creating a new account or if the user already exists in the system in which if both of these cases are not satisfied, the user cannot make a new account. Also, the user is alerted by a pop up message if they enter in the wrong username or password when they try their login credentials. 

### Design/Evaluation Achievements
- **Design Achievement 1**: I tested my application using screen reading software called Voice Over, and found that the final site is intuitive for users since there is a lot of error checking and designs. 
- **Design Achievement 2**: I tested the application with 6 users and found that they wanted the login screen to be deisgned better so that it looks an application that is visually appealing and a logout button so that they can get back to the login screen all of which I added to the final project.
