# frozen_string_literal: true

module Api
  class TasksController < Api::ApplicationController
    include PaginationConcern
    def index
      tasks = TaskService.new.task_list(extract_pagination_props)
      render json: tasks, include: :user
    end
  end
end
