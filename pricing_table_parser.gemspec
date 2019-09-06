$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'pricing_table_parser'
  s.version     = '1.0.0'
  s.date        = '2019-09-06'
  s.summary     = 'PricingTableParser - Simple gem for parsing exsel file'
  s.description = 'Simple gem for parsing exsel file and return hash with data from exsel.'
  s.author      = 'Vladimir Birbrover'
  s.email       = 'birbrover@gmail.com'
  s.homepage    = 'https://github.com/Hardboy1208/declarative_excel'
  s.license     = 'MIT'
  s.files       = `git ls-files`.split("\n")
  s.add_dependency('roo', '2.8.2')
end
