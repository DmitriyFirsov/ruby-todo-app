# frozen_string_literal: true

class PaginationPropsExtractor
  attr_reader :page, :limit

  def initialize(params)
    @page = PageNumber.new(params[:page], 1).value
    @limit = PageNumber.new(params[:limit], 10, 30).value
  end
end
