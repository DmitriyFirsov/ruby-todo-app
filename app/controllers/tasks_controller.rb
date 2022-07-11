# frozen_string_literal: true

class TasksController < ApplicationController
  def index
    @tasks = TaskService.new.task_list(PaginationPropsExtractor.new(params))
  end
end
