require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module NetshopService
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    ## デフォルトロケールは日本語 / ロケールファイルはconfig/localesに
    config.i18n.default_locale = :ja
    ## 時刻は日本に
    config.time_zone = 'Asia/Tokyo'
    ## ActiveRecordのタイムスタンプを日本時間で表示す
    config.active_record.default_timezone = :local　
    ## 余計なファイルは作成しないようにする
    config.generators do |g|
      g.assets false           # assetsの無効化
      g.helper false           # helperの無効化
      g.test_framework false   # testの無効化
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

  end
end
