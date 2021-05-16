class KeywordsController < ApplicationController
  before_action :set_keyword, only: %i[ show edit update destroy ]

  # GET /keywords or /keywords.json
  def index
    @keywords = Keyword.all
  end


  # GET /keywords/new
  def new
    @keyword = Keyword.new
  end



  # POST /keywords or /keywords.json
  def create
    @keyword = Keyword.new(keyword_params)
    @keyword.save
    # redirect back to the tags page
    redirect_to keywords_url
  end


  # DELETE /keywords/1 or /keywords/1.json
  def destroy
    @keyword.destroy
    @keyword.save
    # redirect back to the tags page
    redirect_to keywords_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_keyword
      @keyword = Keyword.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def keyword_params
      params.require(:keyword).permit(:tag)
    end
end
