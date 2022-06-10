# frozen_string_literal: true

class TasksController < ApplicationController
  def index
    @tasks = TaskService.new.task_list(params:)
  end
end
