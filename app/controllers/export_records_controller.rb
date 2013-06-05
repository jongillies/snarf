class ExportRecordsController < ApplicationController
  # GET /export_records
  # GET /export_records.json
  def index
    @export_records = ExportRecord.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @export_records }
    end
  end

  # GET /export_records/1
  # GET /export_records/1.json
  def show
    @export_record = ExportRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @export_record }
    end
  end

  # GET /export_records/new
  # GET /export_records/new.json
  def new
    @export_record = ExportRecord.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @export_record }
    end
  end

  # GET /export_records/1/edit
  def edit
    @export_record = ExportRecord.find(params[:id])
  end

  # POST /export_records
  # POST /export_records.json
  def create
    @export_record = ExportRecord.new(params[:export_record])

    respond_to do |format|
      if @export_record.save
        format.html { redirect_to @export_record, notice: 'Export record was successfully created.' }
        format.json { render json: @export_record, status: :created, location: @export_record }
      else
        format.html { render action: "new" }
        format.json { render json: @export_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /export_records/1
  # PUT /export_records/1.json
  def update
    @export_record = ExportRecord.find(params[:id])

    respond_to do |format|
      if @export_record.update_attributes(params[:export_record])
        format.html { redirect_to @export_record, notice: 'Export record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @export_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /export_records/1
  # DELETE /export_records/1.json
  def destroy
    @export_record = ExportRecord.find(params[:id])
    @export_record.destroy

    respond_to do |format|
      format.html { redirect_to export_records_url }
      format.json { head :no_content }
    end
  end
end
