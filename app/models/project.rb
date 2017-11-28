class Project < ApplicationRecord
	belongs_to :user
	has_many :contributions
	has_many :project_project_types
	has_many :project_categories, through: :project_project_types


	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
