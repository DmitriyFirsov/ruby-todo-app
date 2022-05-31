module App
  class TaskController < App::ApplicationController
    def index
      @tasks = Task.eager_load(:user).all
    end
  end
end
