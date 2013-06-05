require 'test_helper'

class ExportRecordsControllerTest < ActionController::TestCase
  setup do
    @export_record = export_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:export_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create export_record" do
    assert_difference('ExportRecord.count') do
      post :create, export_record: { checksum: @export_record.checksum, data_source_id: @export_record.data_source_id, primary_key: @export_record.primary_key }
    end

    assert_redirected_to export_record_path(assigns(:export_record))
  end

  test "should show export_record" do
    get :show, id: @export_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @export_record
    assert_response :success
  end

  test "should update export_record" do
    put :update, id: @export_record, export_record: { checksum: @export_record.checksum, data_source_id: @export_record.data_source_id, primary_key: @export_record.primary_key }
    assert_redirected_to export_record_path(assigns(:export_record))
  end

  test "should destroy export_record" do
    assert_difference('ExportRecord.count', -1) do
      delete :destroy, id: @export_record
    end

    assert_redirected_to export_records_path
  end
end
