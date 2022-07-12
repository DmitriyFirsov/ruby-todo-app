# frozen_string_literal: true

class TaskService
  include PaginationHelper

  def task_list(params)
    paginate(Task, params)
      .eager_load(:user)
  end
end
