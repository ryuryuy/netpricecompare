#AmazonEcs.configuration do |c|
 # c.associate_tag = Rails.application.secrets.associate_tag
 # c.access_key_id = Rails.application.secrets.aws_access_key_id
 # c.secret_key = Rails.application.secrets.aws_secret_key
#end

Amazon::Ecs.options = {
      associate_tag:     'tkim197506-22',
      AWS_access_key_id: 'AKIAJISLQSJLTYJKKOYQ',
      AWS_secret_key:   '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'
}
