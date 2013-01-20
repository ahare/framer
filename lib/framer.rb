require "framer/version"
require "framer/parser"
require "framer/builder"

module Framer

  def self.frame(yaml_path, build_path)
    parser = Parser.new yaml_path
    builder = Builder.new(build_path, parser.tree)
    builder.build
  end

end
