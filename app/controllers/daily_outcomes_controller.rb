class DailyOutcomesController < ApplicationController
  # GET /daily_outcomes
  # GET /daily_outcomes.json
  def index
    @daily_outcomes = DailyOutcome.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @daily_outcomes }
    end
  end

  # GET /daily_outcomes/1
  # GET /daily_outcomes/1.json
  def show
    @daily_outcome = DailyOutcome.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @daily_outcome }
    end
  end

  # GET /daily_outcomes/new
  # GET /daily_outcomes/new.json
  def new
    @daily_outcome = DailyOutcome.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @daily_outcome }
    end
  end

  # GET /daily_outcomes/1/edit
  def edit
    @daily_outcome = DailyOutcome.find(params[:id])
  end

  # POST /daily_outcomes
  # POST /daily_outcomes.json
  def create
    @daily_outcome = DailyOutcome.new(params[:daily_outcome])

    respond_to do |format|
      if @daily_outcome.save
        format.html { redirect_to @daily_outcome, notice: 'Daily outcome was successfully created.' }
        format.json { render json: @daily_outcome, status: :created, location: @daily_outcome }
      else
        format.html { render action: "new" }
        format.json { render json: @daily_outcome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /daily_outcomes/1
  # PUT /daily_outcomes/1.json
  def update
    @daily_outcome = DailyOutcome.find(params[:id])

    respond_to do |format|
      if @daily_outcome.update_attributes(params[:daily_outcome])
        format.html { redirect_to @daily_outcome, notice: 'Daily outcome was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @daily_outcome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_outcomes/1
  # DELETE /daily_outcomes/1.json
  def destroy
    @daily_outcome = DailyOutcome.find(params[:id])
    @daily_outcome.destroy

    respond_to do |format|
      format.html { redirect_to daily_outcomes_url }
      format.json { head :no_content }
    end
  end
end
