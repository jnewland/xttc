gem 'main', '>= 2.8.2'
gem 'highline', '>= 1.4.0'
require 'main'
require 'highline/import'

HighLine.track_eof = false

def with_progress(message = nil, &work)
  print "#{message}" if message
  finished = false
  progress_thread = Thread.new { until finished; print "."; $stdout.flush; sleep 0.5; end; }
  work_thread = Thread.new(binding()) do |b|
    work.call
    finished = true
  end
  work_thread.join
  progress_thread.join
  say "\nDone!"
end

Main {

  description "A command line bot for working with XTT, ENTP's rad time tracking bot"

  examples 'xttc status', 'xttc projects', 'xttc @projectcode status', 'xttc out'

  def run
    s = ARGV.size > 1 ? ARGV.join(" ") : ARGV.shift
    help! if s.blank?
    with_progress("Updating Status") do
      status = Status.create(:code_and_message => s)
    end
  end

  mode 'projects' do
    description 'List all projects available, and their short code.'
    def run
      Project.find(:all).each do |p|
        say "#{p.name}: @#{p.project_code}"
      end
    end
  end

  mode 'status' do
    description 'List your current status'
    def run
      status = Status.find(:first)
      say status.message
    end
  end

}