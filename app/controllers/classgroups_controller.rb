class ClassgroupsController < ApplicationController
  # GET /classgroups
  # GET /classgroups.json
  def index
    @classgroups = Classgroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @classgroups }
    end
  end

  # GET /classgroups/1
  # GET /classgroups/1.json
  def show
    @classgroup = Classgroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @classgroup }
    end
  end

  # GET /classgroups/new
  # GET /classgroups/new.json
  def new
    @classgroup = Classgroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @classgroup }
    end
  end

  # GET /classgroups/1/edit
  def edit
    @classgroup = Classgroup.find(params[:id])
  end

  # POST /classgroups
  # POST /classgroups.json
  def create
    @classgroup = Classgroup.new(params[:classgroup])

    respond_to do |format|
      if @classgroup.save
        format.html { redirect_to @classgroup, notice: 'Classgroup was successfully created.' }
        format.json { render json: @classgroup, status: :created, location: @classgroup }
      else
        format.html { render action: "new" }
        format.json { render json: @classgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /classgroups/1
  # PUT /classgroups/1.json
  def update
    @classgroup = Classgroup.find(params[:id])

    respond_to do |format|
      if @classgroup.update_attributes(params[:classgroup])
        format.html { redirect_to @classgroup, notice: 'Classgroup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @classgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classgroups/1
  # DELETE /classgroups/1.json
  def destroy
    @classgroup = Classgroup.find(params[:id])
    @classgroup.destroy

    respond_to do |format|
      format.html { redirect_to classgroups_url }
      format.json { head :no_content }
    end
  end
end
