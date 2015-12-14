Gem::Specification.new do |s|
  s.name = "webcheck"
  s.version = "0.0.4"
  s.date = "2015-11-03"
  s.summary = "Is your project ready for the WWW?"
  s.description = "Check whether your project is ready for the WWW by scanning for common files, such as favicon.ico."
  s.authors = ["Justus Perlwitz"]
  s.email = "hello@justus.pw"
  s.files = [
    "lib/urls.yaml",
    "lib/webcheck.rb",
  ]
  s.executables << "webcheck"
  s.homepage = "https://github.com/justuswilhelm/webcheck"
  s.license = "MIT"

  s.add_dependency 'colorize', '0.7.7'
end
