# README

Things you may want to cover:

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

<h2>About</h2>
A Ruby on Rails app which suggests cities a user may like based off a selection of requirements.

The user fills in their details (email address and job title) and submits the form.

The user is then taken through to a second screen with a list of city requirements. The user makes their selection of city requirements and submits the form.

The user is finally taken through to a third screen which displays suggested cities based off their city requirements.

<h2>Getting started</h2>
<h3>Versions / Dependencies</h3>

* Ruby Version: 2.4.3

* Rails Version: 5.1.6

Additional gems used include:

* rspec

* bootstrap

* jquery-rails

* simple_form

<h3>Installation steps</h3>

* git clone <code>git@github.com:username/city-requirements-app.git</code>

* <code>cd city-requirements-app</code>

* <code>bundle install</code>

* <code>rails db:create</code>

* <code>rails db:migrate</code>

* <code>rails db:seed</code>

The seed file contains the requirements, cities, their associations on the join table, and three 'dummy' users.

<h2>The app and running it</h2>
The install and seed of the app contains the following associations and records as per the app specs:

The city requirement associations are as follows:

* I want to see a river - London, Paris, Prague

* I want to see the corrida - Madrid

* I want to see a museum - London, Paris

* I want to see some punks - Berlin, Paris

* I want to eat cheese - Paris

* I want to see Roman art - Rome

* I want to see Greek art - Athens

* I want to see a football match - Rome, Amsterdam

The available job titles a user can select are as follows:

* Applications Programmer

* Computer Language Coder

* Computer Programmer

* Junior Software Developer

* Mainframe Programmer

* Systems Programmer

The homepage of the app on <code>localhost:3000/</code> will take you to the '#new' action for users. The user needs to enter their email and job title in order to progress to the next stage.

After a successful '#create' action of the user, the second stage of the app is the '#edit' action for users. A validation which is only enabled on #edit is present to ensure that the user selects at least one requirement.

On the user's successful '#update' action the user will be presented with their user '#show' page. This lists their city requirements and the associated suggested cities.

As with most projects, there are several ways of implementing the code to solve the project requirements. The future development of the app would help determine what the best approach would be. Given the project spec and requirements, the above approach was chosen as it was not a requirement that users could edit or change their email and job title after the initial sign-up. Creating the user's city requirements through the #edit action was therefore felt to be the cleanest and simplest approach to creating and saving the user's city requirements in the database.

<h2>Test suite</h2>

Rspec has been used to test the programme. To run all tests, simply run:

<code>rspec</code>

For a bit more speed, you can navigate to the specific testing folder and run the files individually.

<h2>Notes / Thoughts</h2>

There is no authentication or login required for users. This means, among other things:

* Any user or visitor to the app can see another user's requirements and their associated cities.

* Any user can edit another user's requirements.

* A returning visitor would have to remember their ID and enter it in the url if they wanted to go back and access their results.

* The UI / UX of the app is very basic. If this were to be further developed the frontend would need to be improved.

As mentioned, there are several ways of coding this project to the specifications and the best approach would be reliant on knowledge of the future development of the app. A couple of other approaches which could have been taken, include:

* Having all form queries listed on the '#new' action for users, this would reduce the number of screens / webpages by one.

* Creating a 'wizard' form, where-in the questions for email sign-up and city requirements could be listed on different pages through the #new, #create action for users.

<h2>Thoughts for future development</h2>

* Creation of a namespaced admin panel to create more requirements and associated cities which users can select.

* Admin could view all users and all user requirements. So admin could for example collect statistics to understand what the most popular user choices are.
