CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: "AWS",
    aws_access_key_id: "AKIAJRHFSCUVUOJQC5JQ",
    aws_secret_access_key: "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"
  }
  config.fog_directory = "vocalbase"
end