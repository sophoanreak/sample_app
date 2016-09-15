class Restaurant < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	
	has_many :reviews
	
	validates :name, :address, :website, presence: true
	validates :website, format: { with: /\Ahttps?:\/\/.*\z/,
	message: "Must be in the http:// or https://"
	}
end
