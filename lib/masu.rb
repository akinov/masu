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
      ┌#{'-' * width}┐
      │#{self}│
      └#{'-' * width}┘
    EOS
  end

  def to_masu_totsuzen
    padding = 1
    fullwidth_size = (width / 2.0).ceil + padding

    <<~EOS
      ＿#{'人' * fullwidth_size}＿
      ＞#{' ' * padding}#{self}#{' ' * padding}＜
      ￣#{('Y^' * fullwidth_size).delete_suffix('^')}￣
    EOS
  end

  # Return string width.
  # A fullwidth char width is 2 and a halfwidth is 1.
  def width
    chars.inject(0) { |length, char| length + (char.bytesize == 1 ? 1 : 2) }
  end
end

class String
  prepend Masu
end

class Integer
  prepend Masu
end
