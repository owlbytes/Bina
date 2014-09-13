class TorsosController < ApplicationController
  # GET /torsos
  # GET /torsos.json
  def index
    @torsos = Torso.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @torsos }
    end
  end

  # GET /torsos/1
  # GET /torsos/1.json
  def show
    @torso = Torso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @torso }
    end
  end

  # GET /torsos/new
  # GET /torsos/new.json
  def new
    @torso = Torso.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @torso }
    end
  end

  # GET /torsos/1/edit
  def edit
    @torso = Torso.find(params[:id])
  end

  # POST /torsos
  # POST /torsos.json
  def create
    @torso = Torso.new(params[:torso])

    respond_to do |format|
      if @torso.save
        format.html { redirect_to @torso, notice: 'Torso was successfully created.' }
        format.json { render json: @torso, status: :created, location: @torso }
      else
        format.html { render action: "new" }
        format.json { render json: @torso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /torsos/1
  # PUT /torsos/1.json
  def update
    @torso = Torso.find(params[:id])

    respond_to do |format|
      if @torso.update_attributes(params[:torso])
        format.html { redirect_to @torso, notice: 'Torso was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @torso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /torsos/1
  # DELETE /torsos/1.json
  def destroy
    @torso = Torso.find(params[:id])
    @torso.destroy

    respond_to do |format|
      format.html { redirect_to torsos_url }
      format.json { head :no_content }
    end
  end
end
