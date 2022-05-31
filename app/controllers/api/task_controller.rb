# frozen_string_literal: true

module Api
  class TaskController < Api::ApplicationController
    def index
      tasks = Task.eager_load(:user).all
      render json: tasks, include: :user
    end
  end
end

