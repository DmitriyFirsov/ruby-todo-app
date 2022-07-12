# frozen_string_literal: true

class TasksController < ApplicationController
  def index
    @tasks = TaskService.new.task_list(PaginationProps.new(params))
  end
end
