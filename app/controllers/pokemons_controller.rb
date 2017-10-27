class PokemonsController < ApplicationController

	def capture
		poke = Pokemon.where(id: params[:id]).first
		poke.trainer_id = current_trainer.id
		poke.save!
		redirect_to '/'
	end

	def damage
		poke = Pokemon.where(id: params[:id]).first
		poke.health -= 10
		poke.save!
		if poke.health <= 0
			poke.destroy
		end
		redirect_to :controller => "trainers", :action => "show", :id => poke.trainer_id
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.new(level: 1, health: 100)
		@pokemon.trainer_id = current_trainer.id
		@pokemon.name = params[:pokemon][:name]
		if @pokemon.save
			redirect_to :controller => "trainers", :action => "show", :id => current_trainer.id
		else
			redirect_to '/'
			flash[:error] = @pokemon.errors.full_messages.to_sentence
		end
	end

end
