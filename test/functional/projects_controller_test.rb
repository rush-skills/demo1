require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { apply_date: @project.apply_date, brief_description: @project.brief_description, country: @project.country, end_date: @project.end_date, job_description: @project.job_description, language: @project.language, name: @project.name, other_details: @project.other_details, skills: @project.skills, start_date: @project.start_date, work_information: @project.work_information }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    put :update, id: @project, project: { apply_date: @project.apply_date, brief_description: @project.brief_description, country: @project.country, end_date: @project.end_date, job_description: @project.job_description, language: @project.language, name: @project.name, other_details: @project.other_details, skills: @project.skills, start_date: @project.start_date, work_information: @project.work_information }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
