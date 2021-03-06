class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  # GET /notes
  # GET /notes.json
  def index
#    @notes = Note.all
#    @notes = Note.where("measured_at >='2015-05-01' AND measured_at <'2015-06-01'").order(:measured_at)   # November 2015
#    @notes = Note.where("measured_at >='2016-11-01' AND measured_at <'2016-12-01'").order(:measured_at)   # November 2016
#    @notes = Note.where("measured_at >='2016-12-01' AND measured_at <'2017-01-01'").order(:measured_at)   # December 2016
    @notes = Note.where("measured_at >='2017-01-01' AND measured_at <'2017-02-01'").order(:measured_at)   # January  2017
#    @notes = Note.where("artm='Y'").order(:measured_at)
#    @notes = Note.order(:measured_at)
#    @notes = Note.where("measured_at >='2010-11-01' AND measured_at <'2010-11-09'").order(:measured_at)   # November 2015
  end

  # GET /notes/1
  # GET /notes/1.json
  def show
  end

  # GET /notes/new
  def new
    @note = Note.new
  end

  # GET /notes/1/edit
  def edit
  end

  # POST /notes
  # POST /notes.json
  def create
    @note = Note.new(note_params)

    respond_to do |format|
      if @note.save
        format.html { redirect_to @note, notice: 'Note was successfully created.' }
        format.json { render :show, status: :created, location: @note }
      else
        format.html { render :new }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notes/1
  # PATCH/PUT /notes/1.json
  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to @note, notice: 'Note was successfully updated.' }
        format.json { render :show, status: :ok, location: @note }
      else
        format.html { render :edit }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @note.destroy
    respond_to do |format|
      format.html { redirect_to notes_url, notice: 'Note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_params
      params.require(:note).permit(:measured_at, :sys, :dia, :pulse, :artm, :num, :feeling, :cmt)
    end
end
