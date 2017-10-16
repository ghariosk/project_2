# ShowMe

ShowMe is a system developed specifically for Sparta Global that enables visitors to view a portfolio of past and present projects that have been undertaken by Sparta Global trainee consultants.

## Functionality
### General Visitors
A visitor can enter the web application without having to sign in or creating a user account, although visitors may create accounts if they wish to. Visitors will be presented with a portfolio of previous Sparta Global trainee projects from tiles that are neatly displayed on the homepage.

### Creating a user account
Visitors are required to fill in a short sign-up form which takes an email address, password confirmations and the user's full name.

### Log-in Users
Once a user has created a log-in account they are given direct access to creating new projects. New project tiles take the project's name, a short description of the project and GitHub url. They are also required to attach the project file. The created project will then appear on the homepage, and can be viewed in the user's personal projects page. Log-in may edit their user profiles if they would like to change passwords. If a profile is edited, the user must reconfirm their password to enable changes to be made. Users can add other users to project's via a credit button.

### Admin Users
Admin users have total access to the web application. They can do everything that a general log-in user can but they have the priviledge of a 'user base' webpage, which enables admin user's to edit, create and destroy projects. They can also credit users to projects. Admin users may add/remove project approvals and add/remove log-in user's admin status.

### Search Bar Feature
A search bar feature has been implemented to allow users to search for specific projects. When a user types in a keyword, the matching result will be rendered to the webpage.

### Like Button Feature
A 'like' button has been implemented into the application which enables users to like (or unlike) projects. Users can be directed to the project's GitHub page or can visit the project trainee's linkedin profile.

## Implementation
The web application was developed in Sublime using Ruby-on-Rails as the primary programming structure for the project. HTML-on-Rails, JavaScript JQuery with Rails and CSS with Bootstrap were also implemented into the application. ShowMe utilises many Gemfiles such as jquery-rails, popper_js (1.12.3), animate.css-rails (3.2), bootstrap-sass (3.3.6).

## Screenshots
### Homepage
![A screenshot of the homepage](app/assets/images/homepage_screenshot.jpg)

### New Project
![A screenshot of the new project page](app/assets/images/new_project_screenshot.jpg)

### Edit User
![A screenshot of the edit user page](app/assets/images/edit_user_screenshot.jpg)

### User Base
![A screenshot of the admin user base page](app/assets/images/user_base_screenshot.jpg)

## Authors
This project was developed by Karl Gharios, Luke Heudebourck and Priyam Patel for Sparta Global.