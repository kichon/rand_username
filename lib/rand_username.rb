require "rand_username/version"

module RandUsername
  class Error < StandardError; end

  def self.generate(n: 6)
    arr = [*('a'..'z'), *('A'..'Z')]
    n.map { arr[rand(arr.length)] }.join
  end
end
