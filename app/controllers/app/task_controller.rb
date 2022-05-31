# frozen_string_literal: true


module App
  # controller for task rout
  class TaskController < App::ApplicationController
    def index
      @tasks = TaskService.new.task_list params:
    end
  end
end
