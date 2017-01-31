require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in users(:one)
    @task = tasks(:one)
  end

  test "should get index" do
    get tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_task_url
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post tasks_url, params: { task: { description: @task.description, done: @task.done } }
    end

    assert_redirected_to root_url
  end

  test "should show task" do
    get task_url(@task)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_url(@task)
    assert_response :success
  end

  test "should update task" do
    patch task_url(@task), params: { task: { description: @task.description, done: @task.done } }
    assert_redirected_to root_url
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete task_url(@task)
    end

    assert_redirected_to root_url
  end
end
