Cloudinary.config do |config|
  config.cloud_name = 'medianeiras'
  config.api_key =  ENV['MEDIANEIRAS_API_KEY']
  config.api_secret = ENV['MEDIANEIRAS_API_SECRET']
  config.secure = true
  config.cdn_subdomain = true
end
