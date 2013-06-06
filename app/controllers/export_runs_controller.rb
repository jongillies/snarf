class ExportRunsController < ApplicationController
  # GET /export_runs
  # GET /export_runs.json
  def index
    @export_runs = ExportRun.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @export_runs }
    end
  end

  # GET /export_runs/1
  # GET /export_runs/1.json
  def show
    @export_run = ExportRun.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @export_run }
    end
  end

  # GET /export_runs/new
  # GET /export_runs/new.json
  def new
    @export_run = ExportRun.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @export_run }
    end
  end

  # GET /export_runs/1/edit
  def edit
    @export_run = ExportRun.find(params[:id])
  end

  # POST /export_runs
  # POST /export_runs.json
  def create
    @export_run = ExportRun.new(params[:export_run])

    respond_to do |format|
      if @export_run.save
        format.html { redirect_to @export_run, notice: 'Export run was successfully created.' }
        format.json { render json: @export_run, status: :created, location: @export_run }
      else
        format.html { render action: "new" }
        format.json { render json: @export_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /export_runs/1
  # PUT /export_runs/1.json
  def update
    @export_run = ExportRun.find(params[:id])

    respond_to do |format|
      if @export_run.update_attributes(params[:export_run])
        format.html { redirect_to @export_run, notice: 'Export run was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @export_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /export_runs/1
  # DELETE /export_runs/1.json
  def destroy
    @export_run = ExportRun.find(params[:id])
    @export_run.destroy

    respond_to do |format|
      format.html { redirect_to export_runs_url }
      format.json { head :no_content }
    end
  end
end
