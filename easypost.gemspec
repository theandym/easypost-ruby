Gem::Specification.new do |s|
  s.name        = 'easypost'
  s.version     = '1.0.3'
  s.date        = '2012-11-13'
  s.summary     = 'EasyPost'
  s.description = 'Client library for accessing the EasyPost Shipping API via Ruby'
  s.authors     = ["Jon Calhoun"]
  s.email       = 'contact@easypost.co'
  s.files       = [ "lib/easypost.rb",
                    "lib/easypost/address.rb",
                    "lib/easypost/postage.rb",
                    "lib/easypost/errors/easypost_error.rb",
                    "lib/easypost/errors/authentication_error.rb"
                  ]
  s.require_path = 'lib'
  s.homepage    = 'https://www.easypost.co/docs'
  s.add_dependency('typhoeus')
  s.add_dependency('json')
end
