# frozen_string_literal: true

# Service for work with tasks
class TaskService
  def initialize(count_per_page: 10)
    @count_per_page = count_per_page
  end

  def task_list(params: nil)
    task_count = Task.count
    Task
      .offset(calc_offset(extract_page(params), @count_per_page, task_count))
      .limit(@count_per_page)
      .eager_load(:user)
      .all
  end

  private

  def calc_offset(page, limit, count)
    count / limit * (page - 1)
  end

  def extract_page(params)
    return 1 if params.nil? || params[:page].nil?

    page = params[:page]
    page.to_i
  end
end
