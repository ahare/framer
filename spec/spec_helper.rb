require "rubygems"
require "framer"

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = "random"

  config.before :each do
    @build_path = "tmp/build"
    @yaml_path = "tmp/framer_example.yml"
    @tree = { 
      root1: { 
        root1_dir1: {
          root1_dir1_sub1: {}
        }, 
        root1_dir2: {} 
      }, 
      root2: { 
        root2_dir1: {}, 
        root2_dir2: { 
          root2_dir2_sub1: {},
          root2_dir2_sub2: {}
        } 
      } 
    }
    FileUtils.remove_dir "tmp", true
    FileUtils.mkdir_p @build_path
    IO.write(@yaml_path, YAML.dump(@tree))
  end
end
