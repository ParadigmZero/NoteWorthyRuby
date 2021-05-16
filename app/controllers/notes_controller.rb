class NotesController < ApplicationController
  before_action :set_note, only: %i[ show edit update destroy ]



  # GET /notes or /notes.json
  def index
    @notes = Note.all
    # keywords used since we submit keywords when we submit notes
    @keywords = Keyword.all
  end

  # GET /notes/1 or /notes/1.json
  def show
    @notes = Note.all
    # keywords used since we submit keywords when we submit notes
    @keywords = Keyword.all

  end

  # GET /notes/new
  def new
    @notes = Note.all
    # keywords used since we submit keywords when we submit notes
    @keywords = Keyword.all


    @note = Note.new
    @keyword = Keyword.new
  end

  # GET /notes/1/edit
  def edit
  end

  # POST /notes or /notes.json
  def create
    #render plain:params[:note].inspect

    # create a new note, these belong in the Notes table
    @note = Note.new(note_params)
    # save it
    @note.save

    # save the corresponding tags, these are added if they do not exist already


    # redirect back to the same page
    redirect_to request.referer
  end

  # PATCH/PUT /notes/1 or /notes/1.json
  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to @note, notice: "Note was successfully updated." }
        format.json { render :show, status: :ok, location: @note }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1 or /notes/1.json
  def destroy
    @note.destroy
    @note.save
    # redirect back to the same page
    redirect_to notes_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def note_params
      params.require(:note).permit(:note)
    end
end
