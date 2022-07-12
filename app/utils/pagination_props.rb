# frozen_string_literal: true

class PaginationProps
  attr_reader :page, :limit

  def initialize(params)
    @page = ParseUnsignedInt.new(params[:page], 1).value
    @limit = ParseUnsignedInt.new(params[:limit], 10, 30).value
  end

  # like hash :)
  def [](key)
    case key
    when :page
      @page
    when :limit
      @limit
    end
  end
end
