# frozen_string_literal: true

class TasksController < ApplicationController
  include PaginationConcern

  def index
    @tasks = TaskService.new.task_list(extract_pagination_props)
  end

  def new; end
end
