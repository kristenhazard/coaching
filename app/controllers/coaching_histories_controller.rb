class CoachingHistoriesController < ApplicationController
  # GET /coaching_histories
  # GET /coaching_histories.json
  def index
    @coaching_histories = CoachingHistory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @coaching_histories }
    end
  end

  # GET /coaching_histories/1
  # GET /coaching_histories/1.json
  def show
    @coaching_history = CoachingHistory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @coaching_history }
    end
  end

  # GET /coaching_histories/new
  # GET /coaching_histories/new.json
  def new
    @coaching_history = CoachingHistory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @coaching_history }
    end
  end

  # GET /coaching_histories/1/edit
  def edit
    @coaching_history = CoachingHistory.find(params[:id])
  end

  # POST /coaching_histories
  # POST /coaching_histories.json
  def create
    @coaching_history = CoachingHistory.new(params[:coaching_history])

    respond_to do |format|
      if @coaching_history.save
        format.html { redirect_to @coaching_history, notice: 'Coaching history was successfully created.' }
        format.json { render json: @coaching_history, status: :created, location: @coaching_history }
      else
        format.html { render action: "new" }
        format.json { render json: @coaching_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /coaching_histories/1
  # PUT /coaching_histories/1.json
  def update
    @coaching_history = CoachingHistory.find(params[:id])

    respond_to do |format|
      if @coaching_history.update_attributes(params[:coaching_history])
        format.html { redirect_to @coaching_history, notice: 'Coaching history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @coaching_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coaching_histories/1
  # DELETE /coaching_histories/1.json
  def destroy
    @coaching_history = CoachingHistory.find(params[:id])
    @coaching_history.destroy

    respond_to do |format|
      format.html { redirect_to coaching_histories_url }
      format.json { head :no_content }
    end
  end
end
