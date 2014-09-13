class BluesController < ApplicationController
  # GET /blues
  # GET /blues.json
  def index
    @blues = Blue.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blues }
    end
  end

  # GET /blues/1
  # GET /blues/1.json
  def show
    @blue = Blue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blue }
    end
  end

  # GET /blues/new
  # GET /blues/new.json
  def new
    @blue = Blue.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @blue }
    end
  end

  # GET /blues/1/edit
  def edit
    @blue = Blue.find(params[:id])
  end

  # POST /blues
  # POST /blues.json
  def create
    @blue = Blue.new(params[:blue])

    respond_to do |format|
      if @blue.save
        format.html { redirect_to @blue, notice: 'Blue was successfully created.' }
        format.json { render json: @blue, status: :created, location: @blue }
      else
        format.html { render action: "new" }
        format.json { render json: @blue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /blues/1
  # PUT /blues/1.json
  def update
    @blue = Blue.find(params[:id])

    respond_to do |format|
      if @blue.update_attributes(params[:blue])
        format.html { redirect_to @blue, notice: 'Blue was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @blue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blues/1
  # DELETE /blues/1.json
  def destroy
    @blue = Blue.find(params[:id])
    @blue.destroy

    respond_to do |format|
      format.html { redirect_to blues_url }
      format.json { head :no_content }
    end
  end
end
