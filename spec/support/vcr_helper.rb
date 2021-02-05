# frozen_string_literal: true

require 'vcr'
require 'uri'

VCR.configure do |c|
  c.ignore_hosts '127.0.0.1', 'localhost'
  c.cassette_library_dir = 'spec/vcr'
  c.hook_into :webmock
  c.configure_rspec_metadata!

  driver_hosts = Webdrivers::Common.subclasses.map { |driver| URI(driver.base_url).host }
  c.ignore_hosts(*driver_hosts)
end
