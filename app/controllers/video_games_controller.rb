class VideoGamesController < ApplicationController

  before_filter :authenticate_user!, :except => [:show, :index]

  # GET /video_games
  # GET /video_games.json
  def index
    @video_games = VideoGame.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @video_games }
    end
  end

  # GET /video_games/1
  # GET /video_games/1.json
  def show
    @video_game = VideoGame.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @video_game }
    end
  end

  # GET /video_games/new
  # GET /video_games/new.json
  def new
    @video_game = VideoGame.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @video_game }
    end
  end

  # GET /video_games/1/edit
  def edit
    @video_game = VideoGame.find(params[:id])
  end

  # POST /video_games
  # POST /video_games.json
  def create
    @video_game = VideoGame.new(params[:video_game])

    respond_to do |format|
      if @video_game.save
        format.html { redirect_to @video_game, notice: 'Video game was successfully created.' }
        format.json { render json: @video_game, status: :created, location: @video_game }
      else
        format.html { render action: "new" }
        format.json { render json: @video_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /video_games/1
  # PUT /video_games/1.json
  def update
    @video_game = VideoGame.find(params[:id])

    respond_to do |format|
      if @video_game.update_attributes(params[:video_game])
        format.html { redirect_to @video_game, notice: 'Video game was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @video_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_games/1
  # DELETE /video_games/1.json
  def destroy
    @video_game = VideoGame.find(params[:id])
    @video_game.destroy

    respond_to do |format|
      format.html { redirect_to video_games_url }
      format.json { head :no_content }
    end
  end
end
