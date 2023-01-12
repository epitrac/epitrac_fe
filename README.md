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
- [Gems](#gems)


## Project Overview
EpiTrac is an application that enables users to access epidemiological data on a user friendly interactive map that displays weekly disease cases for each state. Users can also find information about the disease, articles, and access to more informational resources. 

This repo is the Front End part of a project built by students at [Turing School of Software and Design](https://turing.edu/). You can find the Back End repo [HERE](https://github.com/epitrac/epitrac_be).


## Built With
- Rails 5.2.8
- Ruby 2.7.4
- JavaScript
- Bootstrap 5.3.0
- HTML/CSS

## Learning Goals
[Project Spec](https://backend.turing.edu/module3/projects/consultancy/)

This project's goal is creating a successful web application from a student-led project idea, focusing on Service-Oriented Architecture with separate front and back end applications.
The front-end handles authentication via Google OAuth 2.

## Setup

1. Clone the repository
2. cd into the root directory
3. Install gem packages: `bundle install`
4. Setup the database: `rails db:{create,migrate}`
5. Seed the database: `rails csv_load:diseases`

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

## Gems
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

## Known Issues/Future Goals
Future features could include:
- WIP

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


