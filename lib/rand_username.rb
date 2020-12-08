require "rand_username/version"

module RandUsername
  class Error < StandardError; end

  def self.generate(n: 6)
    raise Error, "nは0より大きい数を指定してください" if n <= 0

    arr = [*('a'..'z'), *('A'..'Z')]
    (0...n).map { arr[rand(arr.length)] }.join
  end
end
