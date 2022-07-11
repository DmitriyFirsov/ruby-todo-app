# frozen_string_literal: true

class TaskService
  include PaginationHelper

  def task_list(params)
    set_offset(Task, params)
      .eager_load(:user)
      .all
  end
end
