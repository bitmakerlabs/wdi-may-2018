class MonstersController < ApplicationController
  def index
    @monsters = Monster.all

    respond_to do |format|
      format.html
      format.text
      # format.json do
      #   render json: @monsters, except: [:id, :created_at, :updated_at]
      # end

      format.json do
        altered_monsters = @monsters.map do |monster|
          monster.to_json
        end

        render json: altered_monsters
      end
    end

  end
end
