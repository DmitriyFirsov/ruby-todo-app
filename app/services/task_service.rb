# frozen_string_literal: true

class TaskService
  def task_list(params)
    set_offset(Task, params)
      .eager_load(:user)
      .all
  end

  protected

  def calc_offset(page, limit)
    (page - 1) * limit
  end

  def set_offset(entity, params)
    entity
      .offset(calc_offset(params[:page], params[:limit]))
      .limit(params[:limit])
  end
end
