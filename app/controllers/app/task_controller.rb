module App
  class TaskController < App::ApplicationController
    def index
      @tasks = TaskService.new.task_list params:
    end
  end
end
