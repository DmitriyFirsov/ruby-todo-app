# frozen_string_literal: true

class TaskService
  def initialize(count_per_page: 10)
    @count_per_page = count_per_page
  end

  def task_list(params: {})
    Task
      .offset(calc_offset(extract_page(params), @count_per_page))
      .limit(@count_per_page)
      .eager_load(:user)
      .all
  end

  protected

  def calc_offset(page, limit)
    (page - 1) * limit
  end

  def extract_page(params)
    (params&.[](:page) || "1").to_i
  end
end
