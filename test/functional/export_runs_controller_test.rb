require 'test_helper'

class ExportRunsControllerTest < ActionController::TestCase
  setup do
    @export_run = export_runs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:export_runs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create export_run" do
    assert_difference('ExportRun.count') do
      post :create, export_run: { data_source_id: @export_run.data_source_id, duration: @export_run.duration, finished_at: @export_run.finished_at, record_count: @export_run.record_count, started_at: @export_run.started_at }
    end

    assert_redirected_to export_run_path(assigns(:export_run))
  end

  test "should show export_run" do
    get :show, id: @export_run
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @export_run
    assert_response :success
  end

  test "should update export_run" do
    put :update, id: @export_run, export_run: { data_source_id: @export_run.data_source_id, duration: @export_run.duration, finished_at: @export_run.finished_at, record_count: @export_run.record_count, started_at: @export_run.started_at }
    assert_redirected_to export_run_path(assigns(:export_run))
  end

  test "should destroy export_run" do
    assert_difference('ExportRun.count', -1) do
      delete :destroy, id: @export_run
    end

    assert_redirected_to export_runs_path
  end
end
