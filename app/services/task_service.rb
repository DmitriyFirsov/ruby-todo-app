# frozen_string_literal: true

# Service for work with tasks
class TaskService
  def initialize(count_per_page: 10)
    @count_per_page = count_per_page
  end

  def task_list(params: nil)
    Task
      .offset(calc_offset(extract_page(params), @count_per_page))
      .limit(@count_per_page)
      .eager_load(:user)
      .all
  end

  private

  def calc_offset(page, limit)
    (page - 1) * limit
  end

  def extract_page(params)
    return 1 if params.nil? || params[:page].nil?

    page = params[:page]
    page.to_i
  end
end
