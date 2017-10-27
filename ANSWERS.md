# Q0: Why is this error being thrown?
There's no Pokemon model.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
Their names are being rendered in the home page view. The common factor is that they were all created in the seed file.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It links the button to the capture method while passing in the pokemon's id so that it can be used in the Pokemons controller.

# Question 3: What would you name your own Pokemon?
Flokemon

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in: :controller => "trainers", :action => "show", :id => poke.trainer_id. It's ok not to have a path here because we can pass in a controller and action along with the trainer ID, which is needed to display that specific trainer's page.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
This line takes the errors from @pokemon and turns the array into a sentence and displays it.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
