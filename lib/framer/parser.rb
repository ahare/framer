require "yaml"

module Framer
  class Parser
    attr_reader :tree

    def initialize(path)
      @tree = YAML.load_file path
    end

  end
end
