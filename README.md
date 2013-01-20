# Framer

Framer creates directory structures from YAML files.

## Installation

Add this line to your application's Gemfile:

    gem "framer"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install framer

## Usage

Framer is designed to take a YAML file and turn it into a directory structure on disk. 

First you need to have a YAML file that describes your directory structure:

    # framer.yml
    ---
    :root1:
      :root1_dir1:
        :root1_dir1_sub1: {}
      :root1_dir2: {}
    :root2:
      :root2_dir1: {}
      :root2_dir2:
        :root2_dir2_sub1: {}
        :root2_dir2_sub2: {}

Then you can use either the API to generate the structure:

    Framer.frame "path_to_yaml_file", "path_to_output_dir"

Or you can generate the same structure from the comand line:

    $ framer frame "path_to_yaml_file", "path_to_output_dir"

*NOTE:* You can execute `$ framer frame` without any arguments and Framer will look for a "framer.yml" in the current directory and build the output in the current directory by defualt.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
