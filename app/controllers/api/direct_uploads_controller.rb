class Api::DirectUploadsController < ActiveStorage::DirectUploadsController
  skip_forgery_protection
end
