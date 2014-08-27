Pod::Spec.new do |s|
  s.name         = "TLLayoutAdditions"
  s.version      = "0.1.0"
  s.summary      = "TLLayoutAdditions provides helper methods that makes using auto layout from code pleasure."
  s.homepage     = "http://tomaslinhart.com"
  s.license      = 'MIT'
  s.author       = { "Tomas Linhart" => "tomas@linhart.me" }
  s.platform     = :ios, '6.0'
  s.source       = { :git => "git@github.com:TomasLinhart/TLLayoutAdditions.git", :tag => "0.1.0" }
  s.source_files = 'TLLayoutAdditions'
  s.exclude_files = 'TLLayoutAdditionsTests'
  s.prefix_header_file = "TLLayoutAdditions/TLLayoutAdditions-Prefix.pch"
  s.public_header_files = 'TLLayoutAdditions/**/*.h'
  s.requires_arc = true
end
