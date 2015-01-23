name "dashing"
default_version "1.3.4"

dependency "ruby"
dependency "rubygems"
dependency "bundler"

build do
  gem "install dashing -n #{install_dir}/bin --no-rdoc --no-ri -v #{version}"
end
