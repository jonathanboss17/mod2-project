

# README

Steps: 

* Create models
    * relationships, validations, authorizations 
* Create migrations
    * tables, column-types 
* Routes
* View --> forms, etc. 

* Need a lot of CSS shit 


------------------

Tables/Relationships:

User
----
* first_name
* last_name
* username
* location 
* gender 
* bio
* password_digest

* has_many :itineraries
* has_many :destinations, through: :itineraries
* has_many :likes
* has_many :itineraries, through: :likes


Itinerary
----
* title
* genre (add in later ... will need a table)
* day-time/night-time (add in later)
* day1
* day2
* day3 

* belongs_to :user
* belongs_to :destination
* has_many :likes
* has_many :users, through: :likes



Destination (only US based)
----
* city
* state 
* country (add in later)

* has_many :itineraries


Likes
----
* user_id
* itinerary_id

* belongs_to :user
* belongs_to :itinerary 


Comments (do same thing here as with likes..but a lil different)

*** with polymorphic associations a model can belong to more than one model


Format
* 
* filter 
    * when you search for a destination, the most liked itineraries will pop up, but then you can refine your search further by specifying a genre or length of itinerary 




Validations
----
* User 
    * username, password length
* Comments (if we get here)
    * no explicit language lol 


CRUD Ability 
----
* User 
    * can CREATE, UPDATE info, DELETE account 
* Itinerary 
    * can CREATE, READ (view all your OWN itineraries), UPDATE, DELETE
* Destination (pre-filled shit)
* Likes
    * can CREATE, DELETE
    * can view all your LIKED itineraries 
* Comments
    * can CREATE, UPDATE, DELETE



Methods
----
User 
* full_name 
* liked_itineraries 
*



QUESTIONS
* the flash error message stays there one time even after I reload the page 
* also the before_action :authorize! for the users_controller (actualy this might be the issue)

* button_to creates syntax error issue in auth#new that i can't figure out for the life of me b/c it was working earlier before I made changes
 * <%= button_to “Home”, {action: “index”, controller: “main”}, {class: ‘ui fluid large blue submit button’} %>



* Favorites --> custom route
* Itineraries --> custom route --> 
* Account Button --> User show page

Search Bar --> PostGres?
- user will type in a city, state 
- we will take input ... break it up into city and state
- check the destinations table to see if the input matches any of the cities
- if it does ... direct user to page of all itineraries associated with that city 
- if it does not ... create a new destination with that input ... and then direct user to that same page

Itinerary Show Page
- reserved for when a User types in a city and the list of itineraries pops up with that city 
- a User can then click on that itinerary and it will direct them to that itineraries show page 


Stuff to Fix
- new user page ... follow new itinerary page format
- make buttons Home and Login dissappear only when someone goes to the login page

- when someone makes a new user they are redirected to the main page with the welcome message


      
<%= f.collection_select(:destination_id, Destination.all, :id, :cities_for_state(:state), prompt: true) %>