require "spec_helper"
require "fileutils"

describe Framer::Builder do

  def directory_hash(main_path)
    all = Dir.glob(main_path + '/**/*')
    dirs = all.select {|f| File.directory?(f) }
    parts = dirs.map {|path| path.sub(main_path+ "/", "").split("/") }
    parts.reduce({}) {|acc, path_parts|
      path_parts.reduce(acc) do |acc2, dir|
        acc2[dir.to_sym] ||= {}
      end
      acc
    }
  end

  describe "#build" do
    it "should build the tree" do
      builder = Framer::Builder.new(@build_path, @tree)
      builder.build
      directory_hash(@build_path).should eq @tree
    end
  end

end
