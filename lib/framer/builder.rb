require "fileutils"

module Framer
  class Builder
    attr_reader :dirs

    def initialize(path, tree)
      @dirs = get_dirs(path, tree)
      print "DIRS: #{@dirs}"
    end

    def build
      FileUtils.mkdir_p @dirs
    end

    def get_dirs(root, tree)
      tree.reduce do |paths, subtree|
        print "PATHS: #{paths}"
        print "SUBTREE: #{subtr}"
        # new_root = File.join(root, key.to_s)
        # [new_root, get_dirs(new_root, value)]
      end
    end
  end

end
