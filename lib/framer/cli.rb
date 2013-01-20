require "thor"
require "framer"

module Framer
  class CLI < Thor

    desc "frame YAML_PATH, BUILD_PATH", "Build the frame."
    method_option :yaml_path, default: "framer.yml"
    method_option :build_path, default: "./"
    def frame(yaml_path, build_path)
      Framer.frame yaml_path, build_path
    end

  end
end