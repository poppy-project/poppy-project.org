require 'html-proofer'

task :test do
  HTMLProofer.check_directory("./_site", {
    allow_hash_href: true,
    assume_extension: true,
    check_html: true,
    url_ignore: [ /flowers.inria.fr/, /artsciences.u-bordeaux.fr/ ]
  }).run
end
