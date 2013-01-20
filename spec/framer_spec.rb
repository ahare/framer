require "spec_helper"
require "fileutils"

describe Framer do

  describe "#frame" do
    it "should frame everything" do
      Framer.frame(@yaml_path, @build_path)
    end
  end

end
