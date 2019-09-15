require 'masu/version'

module Masu
  class Error < StandardError; end

  def to_masu
    <<~EOS
      ┌#{'-' * length}┐
      │#{self}│
      └#{'-' * length}┘
    EOS
  end
end

class String
  prepend Masu
end
