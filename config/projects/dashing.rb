#
# Copyright 2015 Betfair
#
# All Rights Reserved.
#

name "dashing"
maintainer "Mario Santos <mario.santos@blip.pt>"
homepage "https://github.com/Shopify/dashing"

# Defaults to C:/dashing on Windows
# and /opt/dashing on all other platforms
install_dir "#{default_root}/#{name}"

#build_version Omnibus::BuildVersion.semver
build_version do
  source :version, from_dependency: 'dashing'
end
build_iteration "1.#{Omnibus::Metadata.platform_shortname}#{Omnibus::Metadata.platform_version}"

# Creates required build directories
dependency "preparation"

# dashing dependencies/components
dependency "dashing"
runtime_dependency "nodejs"

# Version manifest file
dependency "version-manifest"

exclude "**/.git"
exclude "**/bundler/git"
