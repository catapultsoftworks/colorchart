class BehaviorRanksController < ApplicationController
  # GET /behavior_ranks
  # GET /behavior_ranks.json
  def index
    @behavior_ranks = BehaviorRank.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @behavior_ranks }
    end
  end

  # GET /behavior_ranks/1
  # GET /behavior_ranks/1.json
  def show
    @behavior_rank = BehaviorRank.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @behavior_rank }
    end
  end

  # GET /behavior_ranks/new
  # GET /behavior_ranks/new.json
  def new
    @behavior_rank = BehaviorRank.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @behavior_rank }
    end
  end

  # GET /behavior_ranks/1/edit
  def edit
    @behavior_rank = BehaviorRank.find(params[:id])
  end

  # POST /behavior_ranks
  # POST /behavior_ranks.json
  def create
    @behavior_rank = BehaviorRank.new(params[:behavior_rank])

    respond_to do |format|
      if @behavior_rank.save
        format.html { redirect_to @behavior_rank, notice: 'Behavior rank was successfully created.' }
        format.json { render json: @behavior_rank, status: :created, location: @behavior_rank }
      else
        format.html { render action: "new" }
        format.json { render json: @behavior_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /behavior_ranks/1
  # PUT /behavior_ranks/1.json
  def update
    @behavior_rank = BehaviorRank.find(params[:id])

    respond_to do |format|
      if @behavior_rank.update_attributes(params[:behavior_rank])
        format.html { redirect_to @behavior_rank, notice: 'Behavior rank was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @behavior_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /behavior_ranks/1
  # DELETE /behavior_ranks/1.json
  def destroy
    @behavior_rank = BehaviorRank.find(params[:id])
    @behavior_rank.destroy

    respond_to do |format|
      format.html { redirect_to behavior_ranks_url }
      format.json { head :no_content }
    end
  end
end
