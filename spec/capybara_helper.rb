# frozen_string_literal: true

require 'capybara/rails'
require 'capybara/cuprite'

Capybara.server = :puma, { Silent: true }
Capybara.javascript_driver = :cuprite
Capybara.server_port = 9887 + ENV['TEST_ENV_NUMBER'].to_i
Capybara.default_max_wait_time = 5
Capybara.register_driver(:cuprite) do |app|
  Capybara::Cuprite::Driver.new(
    app,
    window_size: [1920, 1080],
    headless: true,
    timeout: 15,
    browser_options: {
      'no-sandbox': nil,
      'disable-gpu': nil,
      'disable-software-rasterizer': nil
    }
  )
end
