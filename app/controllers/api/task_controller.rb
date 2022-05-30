# frozen_string_literal: true
module Api
  class TaskController < Api::ApplicationController
    def index
      tasks = Task.left_joins(:user).all
      render json: tasks, include: :user
    end
  end
end

