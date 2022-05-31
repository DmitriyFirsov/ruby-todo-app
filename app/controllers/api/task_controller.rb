# frozen_string_literal: true

module Api
  class TaskController < Api::ApplicationController
    def index
      tasks = TaskService.new.task_list params: params
      render json: tasks, include: :user
    end
  end
end

