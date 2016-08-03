require 'html-proofer'
require 'scss_lint/rake_task'

task :html do
  HTMLProofer.check_directory('./_site', {
    allow_hash_href: true,
    assume_extension: true,
    check_html: true,
    url_ignore: [ /flowers.inria.fr/, /artsciences.u-bordeaux.fr/ ]
  }).run
end

SCSSLint::RakeTask.new do |t|
  t.files = ['_sass/poppy']
end

task :test => [:html, :scss_lint]
