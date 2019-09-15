require 'masu/version'

module Masu
  class Error < StandardError; end

  def to_masu(type = :default)
    method_name = "to_masu_#{type}"

    unless self.class.private_method_defined? method_name
      raise ArgumentError.new, "Undefined Masu type #{type}."
    end

    send method_name
  end

  private

  def to_masu_default
    <<~EOS
      ┌#{'-' * length}┐
      │#{self}│
      └#{'-' * length}┘
    EOS
  end

  def to_masu_totsuzen
    <<~EOS
      ＿#{'人' * length}＿
      ＞ #{self} ＜
      ￣#{('Y^' * length).delete_suffix('^')}￣
    EOS
  end
end

class String
  prepend Masu
end
