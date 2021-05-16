class NotekeywordlinksController < ApplicationController
  before_action :set_notekeywordlink, only: %i[ show edit update destroy ]

  # GET /notekeywordlinks or /notekeywordlinks.json
  def index
    @notekeywordlinks = Notekeywordlink.all
  end

  # GET /notekeywordlinks/1 or /notekeywordlinks/1.json
  def show
  end

  # GET /notekeywordlinks/new
  def new
    @notekeywordlink = Notekeywordlink.new
  end

  # GET /notekeywordlinks/1/edit
  def edit
  end

  # POST /notekeywordlinks or /notekeywordlinks.json
  def create
    @notekeywordlink = Notekeywordlink.new(notekeywordlink_params)

    respond_to do |format|
      if @notekeywordlink.save
        format.html { redirect_to @notekeywordlink, notice: "Notekeywordlink was successfully created." }
        format.json { render :show, status: :created, location: @notekeywordlink }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @notekeywordlink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notekeywordlinks/1 or /notekeywordlinks/1.json
  def update
    respond_to do |format|
      if @notekeywordlink.update(notekeywordlink_params)
        format.html { redirect_to @notekeywordlink, notice: "Notekeywordlink was successfully updated." }
        format.json { render :show, status: :ok, location: @notekeywordlink }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @notekeywordlink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notekeywordlinks/1 or /notekeywordlinks/1.json
  def destroy
    @notekeywordlink.destroy
    respond_to do |format|
      format.html { redirect_to notekeywordlinks_url, notice: "Notekeywordlink was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notekeywordlink
      @notekeywordlink = Notekeywordlink.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def notekeywordlink_params
      params.fetch(:notekeywordlink, {})
    end
end
