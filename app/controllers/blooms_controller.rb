class BloomsController < ApplicationController
  # GET /blooms
  # GET /blooms.json
  def index
    @blooms = Bloom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blooms }
    end
  end

  # GET /blooms/1
  # GET /blooms/1.json
  def show
    @bloom = Bloom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bloom }
    end
  end

  # GET /blooms/new
  # GET /blooms/new.json
  def new
    @bloom = Bloom.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bloom }
    end
  end

  # GET /blooms/1/edit
  def edit
    @bloom = Bloom.find(params[:id])
  end

  # POST /blooms
  # POST /blooms.json
  def create
    @bloom = Bloom.new(params[:bloom])

    respond_to do |format|
      if @bloom.save
        format.html { redirect_to @bloom, notice: 'Bloom was successfully created.' }
        format.json { render json: @bloom, status: :created, location: @bloom }
      else
        format.html { render action: "new" }
        format.json { render json: @bloom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /blooms/1
  # PUT /blooms/1.json
  def update
    @bloom = Bloom.find(params[:id])

    respond_to do |format|
      if @bloom.update_attributes(params[:bloom])
        format.html { redirect_to @bloom, notice: 'Bloom was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bloom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blooms/1
  # DELETE /blooms/1.json
  def destroy
    @bloom = Bloom.find(params[:id])
    @bloom.destroy

    respond_to do |format|
      format.html { redirect_to blooms_url }
      format.json { head :no_content }
    end
  end
end
