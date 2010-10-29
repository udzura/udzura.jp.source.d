# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

require 'rubygems'

include Nanoc3::Helpers::Rendering
include Nanoc3::Helpers::Blogging
include Nanoc3::Helpers::Filtering

def basename(item)
  File.basename(item.identifier)
end
