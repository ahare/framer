require "spec_helper"
require "yaml"
require "fileutils"

describe Framer::Parser do

  describe "#load" do
    it "should load the settings file" do
      parser = Framer::Parser.new @yaml_path
      parser.tree.should eq @tree
    end
  end

end
