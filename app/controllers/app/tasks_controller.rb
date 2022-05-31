# frozen_string_literal: true


module App
  # controller for task rout
  class TasksController < App::ApplicationController
    def index
      @tasks = TaskService.new.task_list(params: params)
    end
  end
end
