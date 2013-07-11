class ReittiopasController < ApplicationController
  # GET /reittiopas
  # GET /reittiopas.json
  def index
    @reittiopas = Reittiopa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reittiopas }
    end
  end

  # GET /reittiopas/1
  # GET /reittiopas/1.json
  def show
    @reittiopa = Reittiopa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reittiopa }
    end
  end

  # GET /reittiopas/new
  # GET /reittiopas/new.json
  def new
    @reittiopa = Reittiopa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reittiopa }
    end
  end

  # GET /reittiopas/1/edit
  def edit
    @reittiopa = Reittiopa.find(params[:id])
  end

  # POST /reittiopas
  # POST /reittiopas.json
  def create
    @reittiopa = Reittiopa.new(params[:reittiopa])

    respond_to do |format|
      if @reittiopa.save
        format.html { redirect_to @reittiopa, notice: 'Reittiopa was successfully created.' }
        format.json { render json: @reittiopa, status: :created, location: @reittiopa }
      else
        format.html { render action: "new" }
        format.json { render json: @reittiopa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reittiopas/1
  # PUT /reittiopas/1.json
  def update
    @reittiopa = Reittiopa.find(params[:id])

    respond_to do |format|
      if @reittiopa.update_attributes(params[:reittiopa])
        format.html { redirect_to @reittiopa, notice: 'Reittiopa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reittiopa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reittiopas/1
  # DELETE /reittiopas/1.json
  def destroy
    @reittiopa = Reittiopa.find(params[:id])
    @reittiopa.destroy

    respond_to do |format|
      format.html { redirect_to reittiopas_url }
      format.json { head :no_content }
    end
  end
end
