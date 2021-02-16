require 'rake'

Gem::Specification.new do |s|
  s.name        = 'basic_linked_list'
  s.version     = '1.0.0'
  s.summary     = 'LinkedList.new is a linked list object'
  s.description = 'appending elements to a linked list generates successive list nodes'
  s.authors     = ['Will Dunlap']
  s.email       = 'dunlapww@gmail.com'
  s.files       = FileList['lib/*.rb', 'test/*']
  s.homepage    =
    'https://rubygems.org/gems/simple_linked_list'
  s.license = 'MIT'
end
