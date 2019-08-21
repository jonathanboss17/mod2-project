

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



* it doesn't seem like i need these ... (but if I do I'll know where to find them)
       <!-- Standard Meta -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

  <!-- Site Properties -->
  <title>Login Example - Semantic</title>
  <link rel="stylesheet" type="text/css" href="../dist/components/reset.css">
  <link rel="stylesheet" type="text/css" href="../dist/components/site.css">

  <link rel="stylesheet" type="text/css" href="../dist/components/container.css">
  <link rel="stylesheet" type="text/css" href="../dist/components/grid.css">
  <link rel="stylesheet" type="text/css" href="../dist/components/header.css">
  <link rel="stylesheet" type="text/css" href="../dist/components/image.css">
  <link rel="stylesheet" type="text/css" href="../dist/components/menu.css">

  <link rel="stylesheet" type="text/css" href="../dist/components/divider.css">
  <link rel="stylesheet" type="text/css" href="../dist/components/segment.css">
  <link rel="stylesheet" type="text/css" href="../dist/components/form.css">
  <link rel="stylesheet" type="text/css" href="../dist/components/input.css">
  <link rel="stylesheet" type="text/css" href="../dist/components/button.css">
  <link rel="stylesheet" type="text/css" href="../dist/components/list.css">
  <link rel="stylesheet" type="text/css" href="../dist/components/message.css">
  <link rel="stylesheet" type="text/css" href="../dist/components/icon.css">

  <script src="assets/library/jquery.min.js"></script>
  <script src="../dist/components/form.js"></script>
  <script src="../dist/components/transition.js"></script>





    <div class="ui middle aligned center aligned grid">
      <div class="column">
        <h2 class="ui blue image header">
          <div class="content">
            Log-in to your account
          </div>
        </h2>
      
        <% if(@error) %>
          <div class="ui error message">
            <div class="header">
              <%= @error %>
            </div>
          </div>
        <% end %>

      <%= form_for(:session, url: login_path, html: {class: "ui form"}) do |f| %>
        <div class="ui stacked segment">
          <div class="field">
            <div class="ui left icon input">
              <i class="user icon"></i>
              <%= f.text_field :username, placeholder: "username" %>
            </div>
          </div>
          <div class="field">
            <div class="ui left icon input">
              <i class="lock icon"></i>
              <%= f.password_field :password, placeholder: "password" %>
            </div>
          </div>
          <div><%= f.submit "Log In", class: 'ui fluid large blue submit button' %></div>
        </div>
      <% end %>

        <div class="ui message">
          New to us? <%= link_to("Sign Up", new_user_path(@user)) %>
        </div>

    </div>
    </div>