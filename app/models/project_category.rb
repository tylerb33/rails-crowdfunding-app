class ProjectCategory < ApplicationRecord
	has_many :project_project_types
	has_many :projects, through: :project_project_types


end

