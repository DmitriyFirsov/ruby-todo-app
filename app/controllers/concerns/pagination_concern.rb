# frozen_string_literal: true

module PaginationConcern
  def extract_pagination_props
    {
      page: extract_int(params, :page),
      limit: extract_int(params, :limit, 10)
    }
  end

  def extract_int(target, key, default = 1)
    value = target[key]

    value.to_i if value && /^[1-9]([0-9]*)?$/ =~ value

    default
  end
end
