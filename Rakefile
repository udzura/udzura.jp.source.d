require 'nanoc3/tasks'
require 'highline'
@ui = HighLine.new

namespace :deploy do
  namespace :github do
    desc %q{commit static pages to local git}
    task :commit do
      commitlog = @ui.ask('Commit Log: '){|q| q.default = "site update at #{Time.now}" }
      sh "cd ../udzura.jp && git commit -am '#{commitlog}' && (cd - > /dev/null)"
    end
    
    desc %q{push static pages to github repo}
    task :push do
      sh "cd ../udzura.jp && git push origin master && (cd - > /dev/null)"
    end
  end
end
