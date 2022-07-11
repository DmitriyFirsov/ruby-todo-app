# frozen_string_literal: true

class ParseUnsignedInt
  attr_reader :value

  def initialize(target, min = 1, max = nil)
    @value = to_unsigned_int(target) || min

    @value = min if @value < min

    @value = max if max && @value > max
  end

  protected

  def to_unsigned_int(target)
    target.to_i if target&.match?(/^[1-9]\d*$/)
  end
end
