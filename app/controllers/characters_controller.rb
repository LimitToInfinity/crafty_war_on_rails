class CharactersController < ApplicationController

    before_action :find_character, only: [:show, :edit, :update, :destroy]

    def index
        @characters = Character.all
    end

    def show
    end

    def new
        @character = Character.new
    end

    def create
        @character = Character.new(allowed_params)
        if @character.valid?
            @character.save
            redirect_to character_path(@character)
        else
            render :new
        end
    end
    
    def edit
    end
    
    def update
        @character = Character.update(allowed_params)
        redirect_to character_path(@character)
    end

    def destroy
        @character.destroy
        redirect_to characters_path
    end

    private
    def allowed_params
        params.require(:character).permit(:search, :name, :battle_class_id, :profession_id, :race_id, :user_id, :hit_points, :attack_power, :defense)
    end
    
    def find_character
        @character = Character.find(params[:id])
    end

end