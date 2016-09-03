require_relative "../models/Kitty/kitty"

class CreateKittyController < ApplicationController
  @name = "Alpes"
  def kittyCreation

  end
  def kittyEdition
      @data_hash= params[:kitty]
      @kitty = Kitty.new(@data_hash[:name])
  end
end
