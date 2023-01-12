<div align="center">
  <h1>EpiTrac</h1>
  <img width="500" alt="Covid virus" src="https://user-images.githubusercontent.com/60988144/211962791-a35a0709-52af-493a-bfaf-e10b88db5738.jpg">
</div>

## Table of Contents
- [Project Overview](#project-overview)
- [Built With](#built-with)
- [Learning Goals](#learning-goals)
- [Setup](#setup)
- [Contributors](#contributors)
- [Gems and Tech Stack](#gems-and-tech-stack)
- [Illistrations](#illistrations)


## Project Overview
EpiTrac is an application that enables users to access epidemiological data on a user friendly interactive map that displays weekly disease cases for each state. Users can also find information about the disease, articles, and access to more informational resources. 

This repo is the front-end part of a project built by students at [Turing School of Software and Design](https://turing.edu/). You can find the back-end repo [HERE](https://github.com/epitrac/epitrac_be).

You can access the front-end [deployed application](https://epitrac.herokuapp.com/) here. 

## Built With
- Rails 5.2.8
- Ruby 2.7.4
- JavaScript
- Bootstrap 5.3.0
- HTML/CSS

## Learning Goals
[Project Spec](https://backend.turing.edu/module3/projects/consultancy/)

- Design a project from scratch using a student-led idea.
- Use Service-Oriented Architecture with separate front and back end applications.
- Implement Bootstap and JavaScript for app styling and map functionality.
- Authenticate users with an OAuth provider

## Setup

1. Clone the repository
2. cd into the root directory
3. Install gem packages: `bundle install`
4. Setup the database: `rails db:{create,migrate}`

### Google OAuth 2
EpiTrac uses Google OAuth 2 to login users. In order to access this feature locally, you must follow the steps below to setup a new Google OAuth project. A client needs a client_id and client_secret from the OAuth provider for their application.

1. Open Google API Console Credentials page [HERE](https://console.developers.google.com)
2. Create a new project or use an existing one
3. Select "OAuth Consent Screen"
4. Enter your application name, email, and either a deployed link or for local development: http://localhost:3000
5. Select scopes desired (we used only non-sensitive scopes) & submit
6. For the Authorized Redirect URIs, select "Credentials" in the menu bar and choose your project. Enter the following URL for local development: http://localhost:3000/auth/google_oauth2/callback
7. Click Save/Create
8. Navigate to the EpiTrac front-end in terminal `cd epitrac_fe`
9. While in terminal run `bundle exec figaro install` (this will create a file to make environment variables)
10. In the `config/application.yml` enter your client_id and client_secret provided by Google as shown below.
```yml
    GOOGLE_CLIENT_ID: YOUR_CLIENT_ID
    GOOGLE_CLIENT_SECRET: YOUR_CLIENT_SECRET
 ```
11. You are ready to use Google OAuth 2!

## Contributors
<table>
  <tr>
    <td>Shawn Lee</td>
    <td>Madeline Mauser</td>
    <td>Emily Port</td>
    <td>Darby Smith</td>
    <td>William Wang</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/Shawnl93">GitHub</a><br>
      <a href="https://www.linkedin.com/in/shawn-lee-3382aa8b/">LinkedIn</a>
    </td>
    <td>
      <a href="https://github.com/MadelineMauser">GitHub</a><br>
      <a href="https://www.linkedin.com/in/madeline-mauser-644239245/">LinkedIn</a>
    </td>
    <td>
      <a href="https://github.com/eport01">GitHub</a><br>
      <a href="https://www.linkedin.com/in/emily-port-3ab6389b/">LinkedIn</a>
    </td>
    <td>
    <a href="https://github.com/DarbySmith">GitHub</a><br>
    <a href="https://www.linkedin.com/in/darby-m-smith/">LinkedIn</a>
    </td>
    <td>
      <a href="https://github.com/willjw2">GitHub</a><br>
      <a href="https://www.linkedin.com/in/william-wang-814442240/">LinkedIn</a>
    </td>
  </tr>
</table>

## Gems and Tech Stack
- Pry
- RSpec
- Capybara
- Simplecov
- Shoulda-Matchers
- Webmock
- VCR
- Faraday
- Faker
- Factory Bot

![EpiTrac tech stack](https://user-images.githubusercontent.com/60988144/212101901-5ab0e9bd-9b0a-45b1-8e75-a25adb8ccc22.jpg)

## Illistrations
[Deployed Link](https://epitrac.herokuapp.com/)

- Home page

![Home page](https://user-images.githubusercontent.com/60988144/211964610-35f20c72-de80-439a-b974-3608804c1ac2.png)

- Clicking on a pin reveals case data for that state
- Diseases link to the about section for that disease

![State Pin Clicked](https://user-images.githubusercontent.com/60988144/211964614-95607ee4-0be9-4a73-a773-80547a0ab603.png)

- The about page contains information about the creator, application, and diseases

![About page](https://user-images.githubusercontent.com/60988144/211963577-0d354273-6c2c-4ed1-b252-c6797c932a87.png)

- The about page contains a section for disease surveilled
- Users can find articles for that specific disease by clicking "Find articles for <disease>"

![Diseases surveilled](https://user-images.githubusercontent.com/60988144/211963581-83e694bb-119f-4a18-9d2c-85aca334de0b.png)

- The articles page displays many articles relating to the disease topic
- If a user is logged in, there is a feature to save articles to their dashboard

![Articles page](https://user-images.githubusercontent.com/60988144/211963583-6cf9d6a8-58e0-4100-abee-c76187ab8d7c.png)

- The users dashboard contains information about the user, including state. When a user is logged in and has selected their home state, the home page will automatically populate with case data for thier state
- The user has access to all the articles they saved and can delete articles on their dashboard

![User Dashboard](https://user-images.githubusercontent.com/60988144/211964297-6d65e949-c8ef-448a-99f5-10a4ba3c3e7c.png)


## Known Issues/Future Goals
Future features could include:
- Deleting all articles from the user dashboard
- Enhanced testing
- Advanced filtering options
