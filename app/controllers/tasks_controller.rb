# frozen_string_literal: true

# controller for task rout
class TasksController < ApplicationController
  def index
    @tasks = TaskService.new.task_list(params:)
  end
end
