Paperclip::Attachment.default_options[:url] = ':s3://myvideogames'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
Paperclip::Attachment.default_options[:s3_host_name] = 's3-us-west-1.amazonaws.com'