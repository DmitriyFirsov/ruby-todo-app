# frozen_string_literal: true

module PaginationHelper
  def calc_offset(page, limit)
    (page - 1) * limit
  end

  def paginate(entity, params)
    entity
      .offset(calc_offset(params[:page], params[:limit]))
      .limit(params[:limit])
  end
end
