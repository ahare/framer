require "thor"

module Framer
  class CLI < Thor

    desc "frame YAML_PATH, BUILD_PATH", "Build the frame."
    def frame(yaml_path = "./framer.yml", build_path = "./")
      Framer.frame yaml_path, build_path
    end

  end
end