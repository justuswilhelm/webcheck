require "yaml"
require "colorize"

def load_paths
  spec = Gem::Specification.find_by_name("webcheck")
  YAML.load(File.read("#{spec.gem_dir}/lib/urls.yaml"))
end

def get_host_argv
  abort "Usage #{$0} HOST" unless ARGV.length == 1
  ARGV[0]
end

def check_host(host)
  begin
    Net::HTTP.get_response host, '/'
  rescue SocketError
    abort "http://#{host}/ is not available. Is the host name correct?".red
  end
end

def count_issues(host)
  load_paths.map do |path, doc|
    if Net::HTTP.get_response(host, path).code.to_i >= 400
      puts "Could not find http://#{host+path}. Refer to #{doc} to find out more about this file.".red
      doc
    else
      puts "Found http://#{host+path}".green
    end
  end.reject { |item| item.nil?}.length
end

def summary(issues)
  abort "Found #{issues} issues.".red unless issues == 0
  puts "No issues found.".green
end
