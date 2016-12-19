Amazon::Ecs.configure do |options|
  options[:AWS_access_key_id] = Rails.application.secrets.aws_access_key_id
  options[:AWS_secret_key]    = Rails.application.secrets.aws_secret_key
  options[:associate_tag]     = Rails.application.secrets.associate_tag
end

# Amazon::Ecs.options = {
#       associate_tag:     'tkim197506-22',
#       AWS_access_key_id: 'AKIAJISLQSJLTYJKKOYQ',
#       AWS_secret_key:   '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'
# }
