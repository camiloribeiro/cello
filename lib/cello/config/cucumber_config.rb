module Cello
  module Config
    module CucumberConfig
      screen_pictures_path = ''

      After do |scenario|
        browser.driver.save_screenshot 'screenshot.png'
        embed 'screenshot.png', 'image/png'
        browser.close
      end
    end
  end
end
