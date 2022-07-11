# frozen_string_literal: true

module Api
  class TasksController < Api::ApplicationController
    def index
      tasks = TaskService.new.task_list(PaginationPropsExtractor.new(params))
      render json: tasks, include: :user
    end
  end
end
