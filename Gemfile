source "https://rubygems.org"

# Core Jekyll and Theme
gem "jekyll", "~> 4.4"
gem "jekyll-theme-yat"
gem "jekyll-remote-theme"

# FORCE modern Sass (This eliminates the sassc/libsass.so error)
gem "jekyll-sass-converter", "~> 3.0"

# Necessary for Ruby 3.4+ compatibility
gem "bigdecimal"
gem "base64"
gem "mutex_m"
gem "ostruct"
gem "webrick"

# Plugins
gem "jekyll-spaceship"
gem "jekyll-feed", "~> 0.12"

# Windows and JRuby platforms (keep what you had here)
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end
gem "wdm", "~> 0.1", :platforms => [:mingw, :x64_mingw, :mswin]
gem "http_parser.rb", "~> 0.6.0", :platforms => [:jruby]
