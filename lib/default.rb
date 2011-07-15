# coding: utf-8
# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

require 'rubygems'
require 'bundler'
Bundler.require

require 'open-uri'

include Nanoc3::Helpers::Rendering
include Nanoc3::Helpers::Blogging
include Nanoc3::Helpers::Tagging
include Nanoc3::Helpers::Filtering


def basename(item)
  File.basename(item.identifier)
end

def udzura_rss
  @rss ||= SimpleRSS.parse(open('http://blog.udzura.jp/feed/'))
end

def strip_short(title, len=32)
  title.split(//)[0..(len-1)].join + "..."
end
