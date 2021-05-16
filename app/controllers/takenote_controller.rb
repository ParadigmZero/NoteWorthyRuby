class TakenoteController < ApplicationController
  # the main page for inputting notes
  def index
    @notes = Note.all
    # this is used for autocomplete when adding tags
    #
    @note = Note.new
    @tags = Keyword.all
  end

  def myfunction

  end

  def create
    render plain:[@note].inspect
  end
end
