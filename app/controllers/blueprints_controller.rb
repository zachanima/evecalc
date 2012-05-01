class BlueprintsController < ApplicationController
  def index
    @blueprints = Blueprint.all
  end
end
